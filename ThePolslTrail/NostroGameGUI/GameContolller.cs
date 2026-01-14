using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NostroGameGUI
{
        public class GameController
        {
            private int step = 0;

            public string Start()
            {
                return "Welcome to The Polsl Trail...\n\nDo you want to continue?";
            }

            public string HandleYes()
            {
                step++;

                if (step == 1)
                    return "You chose YES.\n\nYou enter the dark corridor.";

                return "YES has no effect right now.";
            }

            public string HandleNo()
            {
                return "You chose NO.\n\nGame over.";
            }
        }
    }
