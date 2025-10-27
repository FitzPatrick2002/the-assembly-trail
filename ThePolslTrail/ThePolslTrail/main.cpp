#include <iostream>
#include <ctime>

#include "Utils.h"
#include "Room.h"
#include "Player.h"
#include "Events.h"

// DONE:
// 1. Add more rooms (ok)
// 2. Add more events (ok)
//	   - 
// 3. routine for modifying the parameters of a player (ok)
//	  Automatically prints the modification			   
// 4. Player 'Inventory' -> hp, water, food, modifiers (sickness, hunger, thirst, etc)
// 5. End of game conditions (set in events I suppose) (ok)

// TO DO:
// 0. Change events -> only function (ok)
//	  - No array of events (ok)
// 0.1 Rooms store addresses of event functions (ok)
// 1. Function for event modification, basically event removal
//	   - Could be that event modifies itself somehow?
// 6. Slow printing (text printed letter by letter)
// 7. Pretty styling of the terminal 
// 8. Inventory + player status is displayed (ok)


bool gameOn = true;
// ------- Rooms Mnagement -------- //

/*
Room rooms[5] = {
	{
		"You are in a large, dark room. The atmosphere is damp and warm, you can hear the water droplets falling off the chains.\n",
		3,
		{playerAttacked, playerAttacked, thirst, nullptr},
		{1, 3, 4, 20, 20}
	},
	{
		"The corridor fills you with eerie feeling. A shadow rushes through the dark...\n",
		3,
		{nothingHappens, strangePassage, foundItem, nullptr},
		{0, 2, 3, 4, 20}
	},
	{
		"The doors are shut, you cannot get out. There is no way, you can't get out.\nThey're coming.\n",
		3,
		{foundItem, foundItem, foundItem, nullptr},
		{20, 20, 20, 20, 20}
	}, // For now it's a dummy like model, just to mess around
	{
		"You find yourself in a narrow passage with 2 doors on both ends.\n",
		2,
		{nothingHappens, playerAttacked, nullptr, nullptr},
		{0, 1, 4, 20, 20}
	},
	{
		"Room seems like some kind of a storage room. There is some foul scent in the air.\n",
		1,
		{thirst, nullptr, nullptr, nullptr},
		{0, 1, 3, 20, 20}
	}
};
*/

int main() {
	time(0);

	char input[32] = {};
	char choice;
	while (gameOn) {
		std::cout << "\n\n# -------------------------------------- #\n\n";
		printPlayerStatus();
		loadRoom(&rooms[player.roomNumber]);
		loadEvent(&rooms[player.roomNumber]);
		changeRoom(&rooms[player.roomNumber]);

		// Winning condition
		if (player.chemfuel >= 3) {
			std::cout << "You won!\n";
			break;
		}

		// Check modifiers
		if (player.water <= 0) {
			std::cout << "Your water level is too low\n";
			changeHP(-1);
		}

		// Losing condition
		if (player.hp <= 0) { // We could also give player 0 hp at start and increase dmg taken if it rises above some value game over. -> we avoid negative numbers?
			std::cout << "You died!\n";
			break;
		}
	}

	return 0;
}