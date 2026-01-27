#include <iostream>
#include <ctime>

#include <stdlib.h> //for clear screen

#include "Utils.h"
#include "Room.h"
#include "Player.h"
#include "Events.h"

#include "Utils.h"

// DONE:
// // 0. Change events -> only function (ok)
//	  - No array of events (ok)
// 0.1 Rooms store addresses of event functions (ok)
// 1. Add more rooms (ok)
// 2. Add more events (ok)
//	   - 
// 3. routine for modifying the parameters of a player (ok)
//	  Automatically prints the modification			   
// 4. Player 'Inventory' -> hp, water, food, modifiers (sickness, hunger, thirst, etc)
// 5. End of game conditions (set in events I suppose) (ok)
// 8. Inventory + player status is displayed (ok)

// TO DO:
// 1. Function for event modification, basically event removal (ok)

// 8. loadRoom() -> error checking, max numebr of room
// 9. Utils -> variables specifying number of rooms, etc

/// @brief Specifies if the game is being continued or not
bool gameOn = true;

int main() {
	//time(0); // Random numbers generation
	srand(static_cast<unsigned int>(time(nullptr)));

	int r_seed = -30000;
	for (int i = 0; i < 10; i++) {
		std::cout << utils::rollDice(r_seed, --r_seed) << "\n"; 
			//std::cout << utils::rollDiceWrapper() << "\n";
	}


	openingMenu();
	// Main loop is continued as long as the gameOn variable is set to true
	while (gameOn) {

		system("cls");
		printPlayerStatus();
		/*for (int i = 0; i < 10; i++) {
			std::cout << utils::rollDiceWrapper() << std::endl;
		}*/
		loadRoom(&rooms[player.roomNumber]);
		loadEvent(&rooms[player.roomNumber]);
		changeRoom(&rooms[player.roomNumber]);
		

		// Winning condition, must have enough fuel and be in the escape pods area
		if (player.chemfuel >= CHEMFUEL_GOAL && player.roomNumber == 10) {
			winningScreen();
			return 0;
		}

		// Check modifiers.
		// Modifiers print messages and affect the player based on the current players status.
		if (player.water <= 0) {
			std::cout << "Your water level is too low, you're suffering!\n";
			changeHP(player.water);
		}

		if (player.water <= 3 && player.water > 0) {
			std::cout << "Your water level is low, watch out!\n";
		}

		// Losing condition
		if (player.hp <= 0) { // We could also give player 0 hp at start and increase dmg taken if it rises above some value game over. -> we avoid negative numbers?
			gameoverScreen();
			break;
		}
	}

	return 0;
}