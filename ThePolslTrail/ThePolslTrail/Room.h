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
	eventPointer eventsList[4]; ///< List of function pointers which specify which event function will be called when particular event number is chosen.
	int8_t connections[5]; ///< Ids of rooms with which the room is connected with. Their Ids are the same as place in the rooms table.
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

	} while (!utils::checkIfInArray(roomChosen, room->connections, 5));

	player.roomNumber = roomChosen;
}

/// @brief Loads the specified room. 
///		   1. Prints the general information string associated with the room.
///		   2. Lists rooms to which user can go to.
///		   3. Prompts user for input.
/// @param room Pointer to currently occupied room from the rooms table.
void loadRoom(Room* room) {
	std::cout << room->info << "\n";
	std::cout << "You can go to: ";
	for (int i = 0; i < 5; i++) {
		int r = room->connections[i];
		if (r == 20)
			break;
		std::cout << r << ", ";
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
	//int eventId = rooms[roomId].eventsList[id];

	std::cout << "Event id == " << ev << "\n"; // Print the address of the event function, for debug purposes only
	if (ev != nullptr) {
		(ev)(); // Call the event function

		// If event is a single time event it will be removed from the events list of the room
		if (isSingleTimeEvent(ev)) {
			// Swap the last element with the current event
			uint8_t lastRoomIdx = room->eventsNumber - 1;
			room->eventsList[id] = room->eventsList[lastRoomIdx];

			// Set the alst element as nullptr and decrese number of stored events
			room->eventsList[lastRoomIdx] = nullptr;

		}
	}
}

/// @brief Table of rooms used in the game
Room rooms[5] = {
	{
		"You are in a large, dark room. The atmosphere is damp and warm, you can hear the water droplets falling off the chains.\n", // Room description
		4, // Number of events
		{playerAttacked, playerAttacked, thirst, nullptr}, // Events 
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
	}, // For now it's a dummy like model, just to mess around
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