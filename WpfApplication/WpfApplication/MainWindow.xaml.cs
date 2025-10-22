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
        using System.Runtime.InteropServices;



        namespace WpfApplication
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
                private void Button_Click(object sender, RoutedEventArgs e)
                {
                    AsmProxy asmP = new AsmProxy();
                    double a, b, r;
                    a = Double.Parse(txtA.Text);           //convert argument 1 from text (WPF UI) to double
                    b = Double.Parse(txtB.Text);           //convert argument 2 from text (WPF UI) to double
                    r = asmP.executeAsmAddTwoDoubles(a, b);//execute assembler code
                    Result.Text = r.ToString();            //return value to the WPF UI as text
                }

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
                    result = asmP.executeAsmWeightedAverage(values, weights);//execute assembler code
                    ResultWeight.Text = result.ToString();            //return value to the WPF UI as text
                }
            }
            public unsafe class AsmProxy
            {
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
            }


        }