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
	std::cout << "You can go to: ";

	// Iterate over the rooms and print their id's 
	for (int8_t i = 0; i < MAX_ROOMS; i++) {
		int8_t r = room->connections[i];

		// If the room has fewer connections than the maximal number of connections
		// then stop printing
		if (r >= MAX_ROOMS || r < 0)
			break;
		std::cout << (int)r << ", ";
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
Room rooms[5] = {
	{
		"You are in a large, dark room. The atmosphere is damp and warm, you can hear the water droplets falling off the chains.\n", // Room description
		4, // Number of events
		{blankEvent, blankEvent, blankEvent, foundItem}, // Events 
		{1, 3, 4, 20, 20} // Connections with other rooms
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
	}, 
	{
		"You find yourself in a narrow passage with 2 doors on both ends.\n",
		3,
		{nothingHappens, playerAttacked, nullptr, nullptr},
		{0, 1, 4, 20, 20}
	},
	{
		"Room seems like some kind of a storage room. There is some foul scent in the air.\n",
		4,
		{thirst, nullptr, nullptr, nullptr},
		{0, 1, 3, 20, 20}
	}
};