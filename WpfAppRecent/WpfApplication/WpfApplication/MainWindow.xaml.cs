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

using System.IO;
using System.Globalization;


namespace Test1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        StreamWriter writer;
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
        bool game_run = false;
        bool is_benchmark = false;

        public void Text_Changed(object sender, System.Windows.Controls.TextChangedEventArgs e)
        {
            if (sender is System.Windows.Controls.TextBox tb)
            {
                tb.ScrollToEnd();
            }
        }
        private void benchmark(ref double masm, ref double cpp, int number_of_rolls)
        {
            AsmProxy asmProxy = new AsmProxy();
            CppProxy cppProxy = new CppProxy();

            double average_masm = 0, average_cpp = 0;
            Random rnd = new Random();
            UInt64 seed_one = (UInt64)(rnd.Next(2026, int.MaxValue - 2026));
            UInt64 seed_two = (UInt64)(rnd.Next(2026, int.MaxValue - 2026));

            asmProxy.runSetupStable(seed_one, seed_two);
            cppProxy.runSetupStable(seed_one, seed_two);

            int result_masm = asmProxy.runValueFromRange(-10, 10);
            int result = cppProxy.runValueFromRangeXorshift(-10, 10);

            // int result_masm = AsmProxy.rollDice(seed_one, seed_two);
            // int result = CppProxy.rollDice(seed_one, seed_two);

            for (int i = 0; i < number_of_rolls; i++)
            {
                seed_one = (UInt64)(rnd.Next(2026, int.MaxValue - 2026));
                seed_two = (UInt64)(rnd.Next(2026, int.MaxValue - 2026));

                var watch_masm = System.Diagnostics.Stopwatch.StartNew();
                result_masm = asmProxy.runValueFromRange(-10, 10); //AsmProxy.rollDice(seed_one, seed_two);
                // the code that you want to measure comes here
                watch_masm.Stop();
                var elapsedMs = watch_masm.Elapsed.TotalNanoseconds;
                average_masm += elapsedMs;

                var watch_cpp = System.Diagnostics.Stopwatch.StartNew();
                result = cppProxy.runValueFromRangeXorshift(-10, 10); //CppProxy.rollDice(seed_one, seed_two);
                // the code that you want to measure comes here
                watch_cpp.Stop();
                elapsedMs = watch_cpp.Elapsed.TotalNanoseconds;
                average_cpp += elapsedMs;

            }
            average_masm /= number_of_rolls;
            average_cpp /= number_of_rolls;
            masm = average_masm;
            cpp = average_cpp;
        }

        //big red button
        private void Refuse_Main_Loop(object sender, RoutedEventArgs e)
        {
            AsmProxy asmP = new AsmProxy();

            if(is_benchmark)
            {
                return;
            }

            string inputText = this.InputTextBox.Text;
            if (inputText.Equals(""))
                inputText = "N";
            asmP.updateInputBufferFunc(inputText);
                
            asmP.ReleaseMasmSemaphore();
        }

        //big green button
        private void Confirm_Main_Loop(object sender, RoutedEventArgs e)
        {
            AsmProxy asmP = new AsmProxy();

            if (is_benchmark)
            {

                int number_roll;

                if (int.TryParse(this.InputTextBox.Text, out number_roll))
                {
                    if (number_roll < 0 || number_roll > 2147483)
                    {
                        this.StoryTextBox.Text += "Please enter a valid number\n";
                        return;
                    }

                }
                else
                {
                    this.StoryTextBox.Text += "Please enter a valid number\n";
                    return;
                }

                double average_masm = 0, average_cpp = 0;
                benchmark(ref average_masm,ref average_cpp, number_roll);
                this.StoryTextBox.Clear();
                this.StoryTextBox.Text += "Benchmark test for\n" +
                    "The execution times of\n" +
                    "Masm and C++\n" +
                    "Implementation of Xorshift128+ algorithm\n" +
                    "Used in dice rolling in the game\n" +
                    "Type in the number of rolls [1-2147483]: ";

                this.StoryTextBox.Text += "\n\nThe average execution times\nFor " + number_roll + " rolls:\n\n";
                this.StoryTextBox.Text += "Masm version: " + average_masm.ToString("F4") + "ns\n";
                this.StoryTextBox.Text += "C++ version:  " + average_cpp.ToString("F4") + "ns\n\n";
                if(average_masm < average_cpp)
                {
                    this.StoryTextBox.Text += "Masm faster by: " + (average_cpp - average_masm).ToString("F4") + "ns\n";
                }
                else if(average_masm > average_cpp)
                {
                    this.StoryTextBox.Text += "C++ faster by: " + (average_masm - average_cpp).ToString("F4") + "ns\n";
                }
                else
                {
                    this.StoryTextBox.Text += "The execution times are the same\n";
                }
                return;
            }

            if (!game_run)
            {
                asmP.RunBackendLoop(this);
                game_run = true;
                return;
            }
            
            string inputText = this.InputTextBox.Text;
            if (inputText.Equals(""))
                inputText = "Y";
            asmP.updateInputBufferFunc(inputText);

            asmP.ReleaseMasmSemaphore();
        }

        private void BenchmarkTestCsv()
        {
            int number_roll = 2147483; //insert your desired number
            double average_masm = 0, average_cpp = 0;
            for(int repeat = 0; repeat < 100; repeat++)
            {
                for (int i = 1; i <= 1; i++)
                {
                    benchmark(ref average_masm, ref average_cpp, number_roll);
                    writer.WriteLine($"{repeat}," +
                        $"{average_cpp.ToString("F4", CultureInfo.InvariantCulture)}," +
                        $"{average_masm.ToString("F4", CultureInfo.InvariantCulture)}");
                }
            }
            writer.Close();

        }

        private void BenchmarkSwitch(object sender, RoutedEventArgs e)
        {
            AsmProxy asmP = new AsmProxy();
            if(is_benchmark)
            {
                this.InputTextBox.Clear();
                this.StoryTextBox.Clear();
                game_run = false; //reset game
                is_benchmark = false;
                return;
            }
            is_benchmark = true;
            this.InputTextBox.Clear();
            this.StoryTextBox.Clear();
            this.StoryTextBox.Text += "Benchmark test for\n" +
                    "The execution times of\n" +
                    "Masm and C++\n" +
                    "Implementation of Xorshift128+ algorithm\n" +
                    "Used in dice rolling in the game\n" +
                    "Type in the number of rolls [1-2147483]: ";

            //writer = new StreamWriter("benchmark.csv");
            //writer.WriteLine("Rolls,Cpp,Masm");
            //BenchmarkTestCsv();
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
        // # -------------------------------------------------------------- # //
        // # --------------------- External functions --------------------- # //
        // # -------------------------------------------------------------- # //

        // # --------------------- Xorshift128+ MASM  --------------------- # //

        [DllImport("Asm.dll")]
        private static extern void nextStep();

        [DllImport("Asm.dll")]
        private static extern void jumpStep();

        [DllImport("Asm.dll")]
        private static extern Int32 valueFromRange(int lower, int higher);

        [DllImport("Asm.dll")]
        private static extern void setupStable(UInt64 val0, UInt64 val1);

        // # -------------------------------------------------------------- # //
        // # -------------------------- Wrappers -------------------------- # //
        // # -------------------------------------------------------------- # //

        // # --------------------- Xorshift128+ MASM  --------------------- # //

        public void runJumpStep()
        {
            jumpStep();
        }

        public void runNextStep()
        {
            nextStep();
        }

        public Int32 runValueFromRange(int lower, int higher)
        {
            return valueFromRange(lower, higher);
        }

        public void runSetupStable(UInt64 val0, UInt64 val1)
        {
            setupStable(val0, val1);
        }

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



        // # ----------------------- ASM MAIN LOOP ----------------------- # //

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

        [DllImport("Asm.dll", CallingConvention = CallingConvention.StdCall)]
        public static extern int rollDice(int seed, int seedTwo);


        /**
         * Creates the callbacks for the main loop and invokes them.
         */
        public void RunBackendLoop(MainWindow window)
        {
            Task.Run(() =>
            {
                // Create the callbacks

                UIUpdater logDelegate = (msg) =>
                {
                    window.Dispatcher.Invoke(() => {
                        // byte[] txt = Encoding.UTF8.GetBytes(msg);
                        window.StoryTextBox.Text += msg; // Encoding.UTF8.GetString(txt);
                    });
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
        // # -------------------------------------------------------------- # //
        // # --------------------- External functions --------------------- # //
        // # -------------------------------------------------------------- # //

        // # ------------------------ Dice Rolling ------------------------ # //

        [DllImport("CppDll.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern UInt32 scrambleSeed(int seed);

        [DllImport("CppDll.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern int rollDice(int seed, int seed_two);

        [DllImport("CppDll.dll", CallingConvention=CallingConvention.Cdecl)]
        public static extern int rollDiceWrapper();


        // # ------------------------ XorShift128+ ----------------------- # //

        [DllImport("CppDll.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void next();

        [DllImport("CppDll.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void jump();

        [DllImport("CppDll.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern Int32 valueFromRange(Int32 lower, Int32 higher);

        [DllImport("CppDll.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void setupStable(UInt64 val0, UInt64 val1);

        // # -------------------------------------------------------------- # //
        // # -------------------------- Wrappers -------------------------- # //
        // # -------------------------------------------------------------- # //

        // # ------------------------ Dice Rolling ------------------------ # //

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

        // # ------------------------ XorShift128+ ----------------------- # //

        public void runNextXorshift()
        {
            next();
        }

        public void runJumpXorshift()
        {
            jump();
        }

        public Int32 runValueFromRangeXorshift(Int32 lower, Int32 higher)
        {
            return valueFromRange(lower, higher);
        }

        public void runSetupStable(UInt64 val0, UInt64 val1)
        {
            setupStable(val0, val1);
        }



    }


}