#include <iostream>
#include <ctime>

#include "Utils.h"
#include "Room.h"
#include "Player.h"
#include "Events.h"

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
// 1. Function for event modification, basically event removal
//	   - Could be that event modifies itself somehow?
// 6. Slow printing (text printed letter by letter)
// 7. Pretty styling of the terminal 

// 8. loadRoom() -> error checking, max numebr of room
// 9. Utils -> variables specifying number of rooms, etc

/// @brief Specifies if the game is being continued or not
bool gameOn = true;

int main() {
	time(0); // Random numbers generation

	// Main loop is continued as long as the gameOn variable is set to true
	while (gameOn) {
		std::cout << "\n\n# -------------------------------------- #\n\n";
		printPlayerStatus();
		loadRoom(&rooms[player.roomNumber]);
		loadEvent(&rooms[player.roomNumber]);
		changeRoom(&rooms[player.roomNumber]);

		// Winning condition
		if (player.chemfuel >= 3) {
			std::cout << "You won!\n";
			return 0;
		}

		// Check modifiers
		if (player.water <= 0) {
			std::cout << "Your water level is too low\n";
			changeHP(player.water);
		}

		// Losing condition
		if (player.hp <= 0) { // We could also give player 0 hp at start and increase dmg taken if it rises above some value game over. -> we avoid negative numbers?
			std::cout << "You died!\n";
			break;
		}
	}

	return 0;
}