#pragma once
#include <iostream>

#include "Utils.h"
#include "Player.h"

/// @file Events.h 
/// @brief Events.h file provides functions with events that will occur during gameplay.
///		   Events can modify the properties of the 'player' object.

/// @brief Function pointer for all event functions.
typedef void(*eventPointer)();

bool isSingleTimeEvent(eventPointer);

/// @brief Typical event function.
void playerAttacked() {
	// Write information about the event
	std::cout << "You're being attacked by the Alien!\n";
	std::cout << "Duck?\n";

	// Get user input
	char c;
	utils::getUserYNinput(c, utils::inputPrompts[0]);
	
	// Decide about the consequences for the player based on the input
	if (c == 'n') {
		std::cout << "Alien jumps at you and flies over your head as you stand still, you manage to flee.\n";
	}
	else {
		std::cout << "You lunge but alien manages to snatch you. After some rummaging on the floor you manage to run away\n";
		changeHP(-2);
	}
}

void thirst() {
	std::cout << "You're thirsty\n";
	std::cout << "Take a sip?\n";
	char c;
	utils::getUserYNinput(c, utils::inputPrompts[0]);
	if (c == 'y') {
		std::cout << "Water is delightful." << "\n";
		changeWater(-2);
	}
	else {
		std::cout << "Your throat is sore with thirst." << "\n";
		changeHP(-1);
	}
}

void nothingHappens() {
	std::cout << "Nothing happens.\nYou lose hp due to boredom." << "\n";
	changeHP(-1);
}

void strangePassage() {
	std::cout << "One of the walls seems fishy to you. Check it out?\n";
	char c;
	utils::getUserYNinput(c, utils::inputPrompts[0]);
	if (c == 'y') {
		std::cout << "Your swift fingers run across the bumps on the wall but you cannot sense any sensible pattern\n";
	}
	else if (c == 'n') {
		std::cout << "You decide not to entice the fate this time and leave the wall alone.\n";
		// If it's possible increase accessability to some other room (randomly chosen maybe?
	}
	else {
		std::cout << "You stare at the wall and the wall stares at you.\nIt takes so much time you get hurt by the hunger.\n";
		player.hp -= 1;
	}
}

void foundItem() {
	std::cout << "There are human remains lying on the floor.\nCorpse is old and dried, clothes are are already gone, only bones and steel of the armour withstood the trial of time.\n";
	std::cout << "Search it?\n";
	char c;
	utils::getUserYNinput(c, utils::inputPrompts[0]);
	if (c >= 97 && c <= 110) {
		std::cout << "Under the corpse you discover the item you've been seeking\n";
		changeChemfuel(1);
	}
	else if (c == 'y') {
		std::cout << "You search the corpse but cannot find anything.\n";
	}
	else {
		std::cout << "Yo mama's fat, ya' know?\n";
	}

}

void blankEvent() {
	std::cout << "This is a blank event\nIt is a single time event, should not appear more than once.\n";
	char c;
	utils::getUserYNinput(c, utils::inputPrompts[5]);
	if (c == 'y') {
		std::cout << "Nothing in here\n";
		changeChemfuel(1);
	}

	isSingleTimeEvent(blankEvent);
}

/// @brief Array with events that are considered single time.
///		   After they are called, they will be removed from the rooms events list in which the event was fired.
eventPointer singleTimeEvents[] = { blankEvent, nothingHappens };

/// @brief Checks if given event is in the list @singleTimeEvents.
/// @param ev Event that we want to check against constents of @singleTimeEvents.
/// @returns true if ev is in the list, false otherwise.
bool isSingleTimeEvent(eventPointer ev) {
	for (eventPointer singleTime : singleTimeEvents) {
		if (singleTime == ev)
			return true;
	}

	return false;
}
