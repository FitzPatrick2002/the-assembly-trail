using System;
        using System.Runtime.InteropServices;
using System.Security.RightsManagement;
        using System.Text;
        using System.Windows;
        using System.Windows.Controls;
        using System.Windows.Data;
        using System.Windows.Documents;
        using System.Windows.Input;
        using System.Windows.Media;
        using System.Windows.Media.Imaging;
        using System.Windows.Navigation;
        using System.Windows.Shapes;

namespace Test1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        /**
            * For now we use a button to confirm sending of some text to the masm backend.
            * Saves the user input in the masm backend 'inputString'.
            * For now as a test it also writes that text into the text output.
            */
        /*
        private void Confirm_Button_Click(object sender, RoutedEventArgs e)
        {
            // Create proxy
            AsmProxy asmP = new AsmProxy();

            // Read text from gui and save it in masm
            string inputText = this.InputTextBox.Text;
            asmP.updateInputBufferFunc(inputText);

            // Write the saved string into the output screen
            asmP.CallAsmUIUpdate(this);
        }
        */

        private void DummyFunction(object sender, RoutedEventArgs e)
        {
            // Do nothing for now
        }

        private void RunMainLoop(object sender, RoutedEventArgs e)
        {
            AsmProxy asmP = new AsmProxy();
            asmP.RunBackendLoop(this);
        }

        private void Continue_Main_Loop(object sender, RoutedEventArgs e)
        {
            AsmProxy asmP = new AsmProxy();
            
            string inputText = this.InputTextBox.Text;
            asmP.updateInputBufferFunc(inputText);

            asmP.ReleaseMasmSemaphore();
        }

        /*
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            AsmProxy asmP = new AsmProxy();
            //double a, b, r;
            //a = Double.Parse(txtA.Text);           //convert argument 1 from text (WPF UI) to double
            //b = Double.Parse(txtB.Text);           //convert argument 2 from text (WPF UI) to double
            //r = 5.0;
            //r = asmP.executeAsmAddTwoDoubles(a, b);//execute assembler code
            //Result.Text = r.ToString();            //return value to the WPF UI as text

            string inputText = txtA.Text;
            asmP.updateInputBufferFunc(inputText);
            asmP.CallAsmUIUpdate(this);

        }
        */

        /*
    private void Weighted_Average(object sender, RoutedEventArgs e)
    {
        AsmProxy asmP = new AsmProxy();
        double[] values = new double[4];
        int[] weights = new int[4];
        double result;
        values[0] = Double.Parse(DoubleA.Text);           //convert argument 1 from text (WPF UI) to double
        values[1] = Double.Parse(DoubleB.Text);
        values[2] = Double.Parse(DoubleC.Text);
        values[3] = Double.Parse(DoubleD.Text);
        weights[0] = int.Parse(IntA.Text);           //convert argument 2 from text (WPF UI) to double
        weights[1] = int.Parse(IntB.Text);
        weights[2] = int.Parse(IntC.Text);
        weights[3] = int.Parse(IntD.Text);
        result = 1.0;
        // result = asmP.executeAsmWeightedAverage(values, weights);//execute assembler code
        ResultWeight.Text = result.ToString();            //return value to the WPF UI as text
    }
        */

        /*
        private void Masm_String_Callback(object  sender, RoutedEventArgs e)
        {
            AsmProxy asmP = new AsmProxy();

            asmP.CallAsmUIUpdate(this);
        }
        */
    }

    public unsafe class AsmProxy
    {
        // ------------ REGISTER CALLBACKS ------------ //

        /**
         * Registers the callbacks on the masm side so that they don't have to be passed as function parameters to each procedure call.
         */
        [DllImport("Asm.dll")]
        private static extern void registerCallbacks(UIUpdater uiCallback, WaitCallbackFunc waitCallbackFunc);

        // ------------ ASM INPUT CALLBACK ------------ //
        [DllImport("Asm.dll")]
        private static extern void updateInputBuffer(string s);

        /**
         * Allows invokes the masm procedure which copies the given string and stores it on the masm side.
         */
        public void updateInputBufferFunc(string s)
        {
            updateInputBuffer(s);
        }
                

        // ------------ ASM POINTER INJECTION ------------ //

        /**
            * Callback passed to the masm procedure.
            * 
            */
        [UnmanagedFunctionPointer(CallingConvention.StdCall)]
        public delegate void UIUpdater(string message);

        /*
        /**
            * Masm procedure which accepts the callback.
            * 
            
        [DllImport("Asm.dll", CallingConvention = CallingConvention.StdCall)]
        private static extern void printText(UIUpdater callback);

        /**
            * Creates the delegate which will ba passed to masm procedure.
            * Invokes the masm procedure.
            * 
            
        public void CallAsmUIUpdate(MainWindow window)
        {
            UIUpdater asmDelegate = (msg) =>
            {
                window.Dispatcher.Invoke(() =>
                {
                    window.StoryTextBox.Text = msg;
                });
            };

            printText(asmDelegate); // Nie można znaleźć modułu Asm.dll
        }
        */

      

        // ------------ ASM MAIN LOOP ------------ //
        
        /**
         * Semaphore is used to stop the execution of ifinite masm function
         */
        private static SemaphoreSlim masmSemaphore = new SemaphoreSlim(0, 1);

        /**
         * Callback which is invoked in masm in order to stop the execution of the main loop
         * until user provided some input on the GUI side.
         */
        [UnmanagedFunctionPointer(CallingConvention.StdCall)]
        public delegate void WaitCallbackFunc();

        /**
         * Masm procedure which starts the main loop of the game.
         * For now it accepts the callback which updates the gui and the callback which stops the execution of the main loop.
         */
        [DllImport("Asm.dll", CallingConvention = CallingConvention.StdCall)]
        private static extern void main();

        /**
         * Creates the callbacks for the main loop and invokes them.
         */
        public void RunBackendLoop(MainWindow window)
        {
            // -------------- DEBUG -------------- //
            CppProxy cppProxy = new CppProxy();
            int outcome = cppProxy.rollDiceWrapperWrapper();
            Console.WriteLine(outcome);

            Task.Run(() =>
            {
                // Create the callbacks

                UIUpdater logDelegate = (msg) =>
                {
                    window.Dispatcher.Invoke(() => window.StoryTextBox.Text += msg);
                };

                WaitCallbackFunc waitDelegate = () =>
                {
                    masmSemaphore.Wait();
                };

                // Register them on the masm side
                registerCallbacks(logDelegate, waitDelegate);

                // Run the main loop indefinitely
                main();
            });
        }

        /**
         * Releases the semaphore.
         * Called from the button which confirms choice.
         */
        public void ReleaseMasmSemaphore()
        {
            masmSemaphore.Release();
        }

        // ------------ ASM MAIN LOOP END ------------ //

        /*

        [DllImport("Asm.dll")]
        private static extern double asmAddTwoDoubles(double a, double b);

        [DllImport("Asm.dll")]
        private static extern unsafe double asmWeightedAverage(double* a, int* b);

        public double executeAsmAddTwoDoubles(double a, double b)
        {
            return asmAddTwoDoubles(a, b);
        }
        public double executeAsmWeightedAverage(double[] a, int[] b)
        {
            fixed (double* ptrA = a)
            fixed (int* ptrB = b)
            {
                return asmWeightedAverage(ptrA, ptrB);
            }

        }

        */
    }

    /**
     * Access the C++ functions through this proxy.
     * 
     */
    public unsafe class CppProxy
    {
        [DllImport("CppDll.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern UInt32 scrambleSeed(int seed);

        [DllImport("CppDll.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern int rollDice(int seed, int seed_two);

        [DllImport("CppDll.dll", CallingConvention=CallingConvention.Cdecl)]
        public static extern int rollDiceWrapper();

        /*
         * Wrapper for calling the rollDiceWrapper() C++ function.
         * Refer to the docs in utils.h regarding what it does. 
         * 
         */
        public int rollDiceWrapperWrapper()
        {
            return rollDiceWrapper();
        }

        public int runRollDice(int seed, int seed_two)
        {
            return rollDice(seed, seed_two);
        }

        public UInt32 runScrambleSeed(int seed)
        {
            return scrambleSeed(seed);
        }

    }


}