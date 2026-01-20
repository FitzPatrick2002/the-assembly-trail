using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace NostroGameGUI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private GameController game;

        public MainWindow()
        {
            InitializeComponent();
            game = new GameController();
            StoryTextBox.Text = game.Start();
        }

        private void YesButton_Click(object sender, RoutedEventArgs e)
        {
            StoryTextBox.Text += "\n\n" + game.HandleYes();
        }

        private void NoButton_Click(object sender, RoutedEventArgs e)
        {
            StoryTextBox.Text += "\n\n" + game.HandleNo();
        }
    }
}
