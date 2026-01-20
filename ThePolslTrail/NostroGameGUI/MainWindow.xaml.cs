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
using System.IO;

namespace NostroGameGUI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private readonly GameController game;

        public MainWindow()
        {
            InitializeComponent();
            LoadAsciiMap();
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
        private void LoadAsciiMap()
        {
            try
            {
                // Path relative to the executable
                string path = "ASCII_map.txt";
                if (File.Exists(path))
                {
                    string mapContent = File.ReadAllText(path);
                    InputTextBox.Text = mapContent;
                }
                else
                {
                    InputTextBox.Text = "ASCII map not found!";
                }
            }
            catch (Exception ex)
            {
                InputTextBox.Text = $"Error loading map:\n{ex.Message}";
            }
        }
    }
}
