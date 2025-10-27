#pragma once
#include <iostream>

typedef void (*eventPointer)();

#include "Events.h"
#include "Player.h"

struct Room {
	const char* info;
	int8_t eventsNumber;
	eventPointer eventsList[4];
	int8_t connections[5];
};

// Let player decide to which room go next
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

void loadEvent(Room* room) {
	int id = rand() % room->eventsNumber;
	eventPointer ev = room->eventsList[id];
	//int eventId = rooms[roomId].eventsList[id];

	std::cout << "Event id == " << ev << "\n";
	if (ev != nullptr) {
		(ev)(); // Call the event function
	}

	// If event is a single time event it will be removed from the events list of the room
	if (isSingleTimeEvent(ev)) {
		// Swap the last element with the current event
		uint8_t lastRoomIdx = room->eventsNumber - 1;
		room->eventsList[id] = room->eventsList[lastRoomIdx];

		// Set the alst element as nullptr and decrese number of stored events
		room->eventsList[lastRoomIdx] = nullptr;

	}
}

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