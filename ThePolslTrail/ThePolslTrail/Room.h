#pragma once
#include <iostream>

#include "Events.h"
#include "Player.h"

/// @file Room.h
/// @brief File defines the Room structure and specifies functions for loading / changing rooms and loading events.
///		   It also contains the list of rooms.

/// @brief Room structure defines parameters associated with each room.
struct Room {
	const char* info; ///< Pointer to text displayed when the room is loaded. Can be a description of how the room looks like.
	int8_t eventsNumber; ///< Current number of events stored in this room. If a single time event is fired, this value may or may not go dwon by -1.
	eventPointer eventsList[MAX_EVENTS]; ///< List of function pointers which specify which event function will be called when particular event number is chosen.
	int8_t connections[MAX_CONNECTIONS]; ///< Ids of rooms with which the room is connected with. Their Ids are the same as place in the rooms table.
};

/// @brief Prints a short message about changing the room and lets the user choose to which one they want to go
//		   In case user selected room that is not connected with the currently occupied location, user will have to enter the number again
// @param room Pointer to the room from the rooms table. 
void changeRoom(Room* room) {
	int8_t roomChosen = 0;
	char c;
	do {
		std::cout << "Choose room to which you want to go\n";
		utils::getUserYNinput(c, utils::inputPrompts[4]);
		roomChosen = c - 48;
		if (roomChosen >= 17 && roomChosen <= 22)
			roomChosen -= 7;
		std::cout << "You chose room number: " << c << "\n";

	} while (!utils::checkIfInArray(roomChosen, room->connections, MAX_ROOMS) || roomChosen < 0 || roomChosen >= MAX_ROOMS);

	player.roomNumber = roomChosen;
}

/// @brief Loads the specified room. 
///		   1. Prints the general information string associated with the room.
///		   2. Lists rooms to which user can go to.
///		   3. Prompts user for input.
/// @param room Pointer to currently occupied room from the rooms table.
void loadRoom(Room* room) {
	// Print info about the roomm and list rooms which can be accessed from it
	std::cout << room->info << "\n";
	std::cout << "You can go to: | ";

	// Iterate over the rooms and print their id's 
	for (int8_t i = 0; i < MAX_ROOMS; i++) {
		int8_t r = room->connections[i];
		
		// If the room has fewer connections than the maximal number of connections
		// then stop printing
		if (r >= MAX_ROOMS || r < 0)
			break;
		std::cout << utils::roomNumberHex(r) << " | ";
	}
	std::cout << "\n\n";
}

/// @brief "Randomly" *cough* chooses the event associated with the occupied room.
///		   If event is nullptr, then nothing happens.
///		   If it was a single time event, it will be removed from the list of events for the currently occupied room.
/// @param room Pointer to the room from rooms table that is currently occupied by the player.
void loadEvent(Room* room) {
	int id = rand() % room->eventsNumber;
	eventPointer ev = room->eventsList[id];

	std::cout << "Event id == " << ev << "\n"; // Print the address of the event function, for debug purposes only
	if (ev != nullptr) {
		(ev)(); // Call the event function

		// If event is a single time event it will be removed from the events list of the room
		if (isSingleTimeEvent(ev)) {
			// Delete the event from the list
			room->eventsList[id] = nullptr;
		}
	}
}

/// @brief Table of rooms used in the game
///		   Regarding the random events choosing.
///		   Events are randomply chosen by randomly choosing an index from 0 to room.eventsNumber - 1
///		   So if there are some nullptr events or some repeating events, that is beacuse we want to increase chances for some event to occur.
///		   Not a perffect system and probably doesn't work.
Room rooms[11] = {
	//0 - Bridge
	{
		"BRIDGE.\nNow presumably empty, it was your work environment for the past XX years.\nIn the front there are two pilot seats and just behind them, another two.\nThe rest of the area is filled with cabinets, tall consoles and a bunch of everyday junk.\nThe BRIDGE is connected to MOTHER unit (1), GALLEY (2) and JUNCTION-1 (3).\n", // Room description
		1, // Number of events
		{bridgeConsole, nullptr,nullptr,nullptr}, // Events
		{1,2,3,20,20} // Connections with other rooms
	},
	//1 - Mother
	{
		"MOTHER.\nYou were never allowed in there, but now that Douglas and the rest are gone...\nThe room is surrounded with LED panels and small buttons positioned all over the walls and the ceiling.\nYou immediately see the main control panel, the one used to talk directly to MOTHER.\nAll is pure white and so you quickly notice a sizzling with acid hole in the back.\nThe MOTHER is connected only to the BRIDGE (0).\n",
		3,
		{nothingHappens, strangePassage, foundItem, nullptr},
		{0, 20, 20, 20, 20}
	},
	//2 - Galley (ship kitchen)
	{
		"GALLEY.\nThe kitchen's a spacey room, it has a round table that used to be enough for 7 persons crew (and for Jones too).\nThe coffee's spilled, and so is his blood.\nIt seems like yesterday, the day when Kane died. It was yesterday.\nThe kitchen was always such a frantic mess, now more than ever.\nThe GALLEY is connected to the BRIDGE (0), JUNCTION A-1 (3) and to JUNCTION A-2 (6).\n",
		3,
		{foundItem, foundItem, foundItem, nullptr},
		{0,3,6,20,20}
	}, 
	//3 - Junction A-1
	{
		"JUNCTION A-1.\nThere's a broken ladder right in the middle of the junction.\nYou mutter to yourself that probably it has always been broken, but you cannot be sure.\nBig metal crates almost block the passage to the GALLEY, but there's an ideal gap both for you and for the ALIEN.\nJust don't think about it too much.\nThe JUNCTION A-1 is connected to the BRIDGE (0), GALLEY (2) and to the CORRIDOR (4).\n",
		3,
		{nothingHappens, playerAttacked, nullptr, nullptr},
		{0,2,4,20,20}
	},
	//4 - Corridor
	{
		"CORRIDOR.\nThe entire corridor is filled with steam.\nThe pipes are moderately damaged and so are the vents up above.\nYou try your hardest to breathe.\nNormally, you would be annoyed at Brett and Parker, those engineers were lazy as they could be,\nbut now you only wanted to pass through.\nThe CORRIDOR is connected to JUNCTION A-1 (3), MEDLAB (5), JUNCTION A-2 (6)\nand finally to ESCAPE PODS (A).\n",
		4,
		{thirst, nullptr, nullptr, nullptr},
		{3,5,6,10,20}
	},
	//5 - Medlab
	{
		"MEDLAB.\nAll the laboratory equipment that Ash was using is still on the floor,\nhe himself is thankfully still a burned 'corpse' on the counter.\nYour tired mind sees a few opened ventilation crates above...\nAnd many shelves near the observation pod, but the road to them is full of shattered glass.\nThe MEDBAY is connected to the CORRIDOR (4).\n",
		4,
		{thirst, nullptr, nullptr, nullptr},
		{4,20,20,20,20}
	},
	//6 - Junction A-2
	{
		"JUNCTION A-2.\n",
		4,
		{thirst, nullptr, nullptr, nullptr},
		{2,4,7,8,20}
	},
	//7 - Hypersleep vault
	{
		"HYPERSLEEP VAULT.\nThere are seven simple cots with glass lids,\ncreating a circle shape in the middle of this massive bedroom.\nSeven simple lockers, seven simple stools next to them.\nIt seems like all but one have been moved,\nbut it could be just jitter inside your mind.\nThe HYPERSLEEP VAULT is connected to the JUNCTION A-2 (6).\n",
		4,
		{thirst, nullptr, nullptr, nullptr},
		{6,20,20,20,20}
	},
	//8 - Living Area
	{
		"LIVING AREA.\n",
		4,
		{thirst, nullptr, nullptr, nullptr},
		{6,9,20,20,20}
	},
	//9 - WC
	{
		"WC.\nIt stinks in here. Why would you come here?\nDo you think the ALIEN will let you pee in peace?\nIt probably watches you from that stall over there.\nThe WC is connected to the LIVING AREA (8).\n",
		4,
		{thirst, nullptr, nullptr, nullptr},
		{8,20,20,20,20}
	},
	//10 - ESCAPE PODS
	{
		"ESCAPE PODS.\n",
		4,
		{thirst, nullptr, nullptr, nullptr},
		{6,20,20,20,20}
	}

};