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
    /// Provides the main GUI window.
    /// Manages access to all GUI elements.
    /// </summary>
    public partial class MainWindow : Window
    {

        StreamWriter writer;

        /// <summary>
        /// Constructor of the MainWindow.
        /// </summary>
        public MainWindow()
        {
            InitializeComponent();
        }

        bool game_run = false;
        bool is_benchmark = false;

        /// <summary>
        /// Automatically scroll the main output window if text overflows.
        /// </summary>
        public void Text_Changed(object sender, System.Windows.Controls.TextChangedEventArgs e)
        {
            if (sender is System.Windows.Controls.TextBox tb)
            {
                tb.ScrollToEnd();
            }
        }

        /// <summary>
        /// Performs the benchamrk, which compares the C++ code with masm code.
        /// </summary>
        private void benchmark(ref double masm, ref double cpp, int number_of_rolls)
        {
            AsmProxy asmProxy = new AsmProxy();
            CppProxy cppProxy = new CppProxy();

            double average_masm = 0, average_cpp = 0;
            Random rnd = new Random();
            UInt64 seed_one = (UInt64)(rnd.Next(2026, int.MaxValue - 2026));
            UInt64 seed_two = (UInt64)(rnd.Next(2026, int.MaxValue - 2026));

            Int32 seed_one_h = (Int32)(seed_one >> 32);
            Int32 seed_one_l = (Int32)seed_one;
            Int32 seed_two_h = (Int32)(seed_two >> 32);
            Int32 seed_two_l = (Int32)seed_two;

            asmProxy.runSetupStable(seed_one_l, seed_one_h, seed_two_l, seed_two_h);
            cppProxy.runSetupStableCpp(seed_one, seed_two);

            // Perform the inital jump to advance the generator
            asmProxy.runJumpStep();
            cppProxy.runJumpXorshift();

            int result_masm = asmProxy.runValueFromRange(-10, 10);
            int result = cppProxy.runValueFromRangeXorshift(-10, 10);

            for (int i = 0; i < number_of_rolls; i++)
            {
                var watch_masm = System.Diagnostics.Stopwatch.StartNew();
                result_masm = asmProxy.runValueFromRange(-10, 10);
                // the code that you want to measure comes here
                watch_masm.Stop();
                var elapsedMs = watch_masm.Elapsed.TotalNanoseconds;
                average_masm += elapsedMs;

                var watch_cpp = System.Diagnostics.Stopwatch.StartNew();
                result = cppProxy.runValueFromRangeXorshift(-10, 10);
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

        /// <summary>
        /// Big red button sends the "N" string to masm when clicked.
        /// </summary>
        private void Refuse_Main_Loop(object sender, RoutedEventArgs e)
        {
            AsmProxy asmP = new AsmProxy();

            if (is_benchmark)
            {
                return;
            }

            string inputText = this.InputTextBox.Text;
            if (inputText.Equals(""))
                inputText = "N";
            asmP.updateInputBufferFunc(inputText);

            asmP.ReleaseMasmSemaphore();
        }

        /// <summary>
        /// Invokes the procedure which sends the input string from the input console to masm.
        /// </summary>
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
                benchmark(ref average_masm, ref average_cpp, number_roll);
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
                if (average_masm < average_cpp)
                {
                    this.StoryTextBox.Text += "Masm faster by: " + (average_cpp - average_masm).ToString("F4") + "ns\n";
                }
                else if (average_masm > average_cpp)
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

        /// <summary>
        /// Writes the benchamrk tests into a csv file.
        /// </summary>
        /*
        private void BenchmarkTestCsv()
        {
            int number_roll = 2147483; //insert your desired number
            double average_masm = 0, average_cpp = 0;
            for (int repeat = 0; repeat < 100; repeat++)
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
        */

        /// <summary>
        /// Prints the inital text into the benchmark window.
        /// </summary>
        private void BenchmarkSwitch(object sender, RoutedEventArgs e)
        {
            AsmProxy asmP = new AsmProxy();
            if (is_benchmark)
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

        }

    }

    /// <summary>
    /// Proxy which mediates in calling the masm procedures from the C# environment.
    /// Procedures are called through appropriate wrappers.
    /// </summary>
    public unsafe class AsmProxy
    {
        // # -------------------------------------------------------------- # //
        // # --------------------- External functions --------------------- # //
        // # -------------------------------------------------------------- # //

        // # ------------------------ Xorshift128+ ------------------------ # //

        [DllImport("Asm.dll", CallingConvention = CallingConvention.StdCall)]
        private static extern void nextStep();

        [DllImport("Asm.dll", CallingConvention = CallingConvention.StdCall)]
        private static extern void jumpStep();

        [DllImport("Asm.dll", CallingConvention = CallingConvention.StdCall)]
        private static extern Int32 valueFromRange(int lower, int higher);

        [DllImport("Asm.dll", CallingConvention = CallingConvention.Cdecl)]
        private static extern void setupStable(Int32 val00, Int32 val01, Int32 val10, Int32 val11);

        // # ------------------------ Masm Callbacks ------------------------ # //

        [UnmanagedFunctionPointer(CallingConvention.StdCall)]
        public delegate void UIUpdater(string message);

        [DllImport("Asm.dll", CallingConvention = CallingConvention.StdCall)]
        private static extern void registerCallbacks(UIUpdater uiCallback, WaitCallbackFunc waitCallbackFunc);

        [DllImport("Asm.dll", CallingConvention = CallingConvention.StdCall)]
        private static extern void updateInputBuffer(string s);

        // # ------------------------ Masm Main Loop ------------------------ # //

        /// <summary>
        /// Semaphore is used to stop the execution of ifinite masm function
        /// </summary>
        private static SemaphoreSlim masmSemaphore = new SemaphoreSlim(0, 1);

        /// <summary>
        /// Callback which is invoked in masm in order to stop the execution of the main loop
        /// until user provided some input on the GUI side.
        /// </summary>
        [UnmanagedFunctionPointer(CallingConvention.StdCall)]
        public delegate void WaitCallbackFunc();

        /// <summary>
        /// Masm procedure which starts the main loop of the game.
        /// For now it accepts the callback which updates the gui and the callback which stops the execution of the main loop.
        /// </summary>
        [DllImport("Asm.dll", CallingConvention = CallingConvention.StdCall)]
        private static extern void main();

        [DllImport("Asm.dll", CallingConvention = CallingConvention.StdCall)]
        public static extern int rollDice(int seed, int seedTwo);

        // # -------------------------------------------------------------- # //
        // # -------------------------- Wrappers -------------------------- # //
        // # -------------------------------------------------------------- # //

        // # --------------------- Xorshift128+ MASM  --------------------- # //

        /// <summary>
        /// Calls the masm procedure jumpStep.
        /// </summary>
        public void runJumpStep()
        {
            jumpStep();
        }

        /// <summary>
        /// Calls the masm procedure nextStep.
        /// </summary>
        public void runNextStep()
        {
            nextStep();
        }

        /// <summary>
        /// Calls the masm procedure valueFromRange.
        /// </summary>
        /// <param name="lower">Lower bound of the randomly generated number.</param>
        /// <param name="higher">Upper bound of the randomly generated number.</param>
        /// <returns>Randomly generated number from given range.</returns>
        public Int32 runValueFromRange(int lower, int higher)
        {
            return valueFromRange(lower, higher);
        }

        /// <summary>
        /// Sets the state of the Xorshift128+ generator which is implemented in masm.
        /// </summary>
        /// <param name="val00">Lowest 32 bits of the state.</param>
        /// <param name="val01">32 bits after the Lowest aprt of the state.</param>
        /// <param name="val10">32 bits before hte highest bits.</param>
        /// <param name="val11">Highest 32 bits of the state</param>
        public void runSetupStable(Int32 val00, Int32 val01, Int32 val10, Int32 val11)
        {
            setupStable(val00, val01, val10, val11);
        }

        /// <summary>
        /// Updates the input buffer from which masm reads the user input.
        /// </summary>
        /// <param name="s">String which will be copied to memory managed by the game engine (masm side).</param>
        public void updateInputBufferFunc(string s)
        {
            updateInputBuffer(s);
        }

        /// <summary>
        /// Creates the callbacks for the main loop and invokes them.
        /// </summary>
        public void RunBackendLoop(MainWindow window)
        {

            Task.Run(() =>
            {
                // Create the callbacks

                UIUpdater logDelegate = (msg) =>
                {
                    window.Dispatcher.Invoke(() => {
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

        /// <summary>
        /// Releases the semaphore.
        /// Called from the button which confirms choice.
        /// </summary>
        public void ReleaseMasmSemaphore()
        {
            masmSemaphore.Release();
        }
    }

    /// <summary>
    /// Manages access to the C++ functions form the CppDll.dll.
    /// Function can be called through appropriate wrappers. 
    /// </summary>
    public unsafe class CppProxy
    {
        // # -------------------------------------------------------------- # //
        // # --------------------- External functions --------------------- # //
        // # -------------------------------------------------------------- # //

        // # ------------------------ XorShift128+ ----------------------- # //

        [DllImport("CppDll.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void next();

        [DllImport("CppDll.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void jump();

        [DllImport("CppDll.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern Int32 valueFromRange(Int32 lower, Int32 higher);

        [DllImport("CppDll.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void setupStableCpp(UInt64 val0, UInt64 val1);


        // # -------------------------------------------------------------- # //
        // # -------------------------- Wrappers -------------------------- # //
        // # -------------------------------------------------------------- # //

        // # ------------------------ XorShift128+ ----------------------- # //

        /// <summary>
        /// Calls the next() C++ function.
        /// </summary>
        public void runNextXorshift()
        {
            next();
        }

        /// <summary>
        /// Calls the jump() C++ function
        /// </summary>
        public void runJumpXorshift()
        {
            jump();
        }

        /// <summary>
        /// Calls the valueFromRange() C++ function.
        /// </summary>
        /// <param name="lower">The lower bound of the randomly generated number.</param>
        /// <param name="higher">The upper bound of the randomly generated number.</param>
        /// <returns>Random number from given range.</returns>
        public Int32 runValueFromRangeXorshift(Int32 lower, Int32 higher)
        {
            return valueFromRange(lower, higher);
        }

        /// <summary>
        /// Sets up the state table of the Xorshift128+ generator.
        /// </summary>
        /// <param name="val0">First 64 bits of the state.</param>
        /// <param name="val1">Last 64 bits of the state.</param>
        public void runSetupStableCpp(UInt64 val0, UInt64 val1)
        {
            setupStableCpp(val0, val1);
        }
    }
}