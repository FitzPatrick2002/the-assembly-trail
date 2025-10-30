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

void medbayGlass() {

	std::cout << "Since the MEDBAY is so well equipped,\nyou think about heading towards the observation pod, hoping to find some WATER or CHEMFUEL.\nBut the glass on the floor...\nThe last thing you'd want is to slip and bleed here.\nDo you want to proceed? Prepare to be quick.\n";
	//reading the user's choice
	char c;
	utils::getUserYNinput(c, utils::inputPrompts[0]);
	if (c == 'y' || c == 'Y')
	{
		int choice = rand() % 2;
		const char* word = choice == 1 ? "alertly" : "closely";

		std::cout << "Deciding to move forward. Write '"<<word<<"' quick!\n";
		time_t start = std::time(nullptr); //start the timer
		char text[8];
		utils::getUserInputString(text, 8,utils::inputPrompts[1]);
		if (utils::charCompare(text,word) && utils::fitTimeframe(start,10)) //managed to write correct input in a specified timeframe
		{
			std::cout << "\nYou somehow managed to get across the room safely.\nTo the rhythm of your pouding chest you open each cabinet around you.\nYou find CHEMFUEL and WATER.\n";
			changeWater(1);
			changeChemfuel(2);

			//very merciful, allows for retries in case of failure
			isSingleTimeEvent(medbayGlass);
		}
		else
		{
			std::cout << "Your walk starts out promising, but you fail to realise one crucial fact.\nThese broken vials had liquids in them.\nYou slip and the shards dig into your skin.\nYou manage to retreat relatively undamaged.\n";
			changeHP(-1);
		}

	}
	else if (c == 'n' || c == 'N')
	{
		std::cout << "'This idea seems to risky to execute at this moment.'\nis the thought that flashes your mind.\nYou turn back and check the exit of the area...\nNo movements, good sign.\n";
	}
	else
	{
		std::cout << "'What if I slip? It will come, it will come to me' those thoughts are racing through your mind.\nYou nervously look around the room\nand even though you saw that Lambert killed Ash, his 'corpse' still surprised you right now.\nYou should be going. Your mind is not stable.\nNot enough for this.\n";
	}

}

void medbayAsh() {
	std::cout << "Loud ass Ash";
	//NOT SINGLE TIME EVENT HEHE
}

void jonesyJumpscare() {
	std::cout << "You open the cabinet and then MEOW!";
	///multiple locations
}

void alienHide() {
	std::cout << "You must hide!";
	//std::cout << rooms[player.roomNumber].hidingLocations;
	//a or b? ??? parzysty to A jak nie to B..
	//dependent on the room
}

void galleyWater() {
	std::cout << "You've found some water";
	
}

void motherWater() {
	//very interesting because Ash did not need water but could drink it, Ripley is weirded out at this thought
	std::cout << "";
	isSingleTimeEvent(motherWater);
}

void motherPanel() {
	std::cout << "something about checking the panel and then wanting to either look at vents or at the escape pods status, add temperature for vibes";

}

void podsFoundChemfuel() {
	std::cout << "one of the pods had chemfuel left"; //remember to add more events to the escape pods like thirst
	isSingleTimeEvent(podsFoundChemfuel);
}

void WCHiddenPassage() {
	std::cout << "You opened up the stall door and you saw a broken crate leading up to something go through? y/n";
	isSingleTimeEvent(WCHiddenPassage);

}

void alienFire() {
	std::cout << "Type in quickly fire to fire at the ALIEN";
	//first some text, then a y/n for fire? and then if fire then type in quickly FIRE to succeed
}


void bridgeConsole() {
	std::cout << "As you look around the Bridge you notice a dim blinking light on one of the distant consoles.\nYou have never used it before, it was never your responsibility.\nCheck it out?\n";
	char c;
	utils::getUserYNinput(c, utils::inputPrompts[0]);
	if (c == 'y' || c == 'Y') {
		std::cout << "Careful not to make any noise, you approach the console.\nThe blinking light appears to be an indicator...But of what?\nIt highlights the MEDLAB.\nThere's a button not covered by dust on the keyboard.\nDo you press it? Think it over.\n";
		utils::getUserYNinput(c, utils::inputPrompts[0]);
		if (c == 'y' || c == 'Y') {
			std::cout << "You press the button and then a wave of dust covers you.\nA cabinet under the console suddenly opens up just a bit.\nInside you find 2 litres of CHEMFUEL.\nIt must have been Dallas... Did he want to leave?\n";
			changeChemfuel(2);
		}
		else if (c == 'n' || c == 'N') {
			std::cout << "Too scared for your own good you leave this console be.\nWhat did that button do?\nWho must have recently pressed it?\nNow you will never know.\n";
		}
		else {
			std::cout << "You were so confused you pressed all the buttons on the keyboard.\nA wave of thick dust covers you and your fingers.\nYou jump in fright as all the cabinets around you burst open!\nOne of the cabinets hits you in the back of your head.\nYou kneel and hide your head in your hands.\nAs you come to your senses, you see 2 litres of CHEMFUEL in a cabinet across you.\n";
			changeChemfuel(2);
			changeHP(-1);
		}
		isSingleTimeEvent(bridgeConsole);
	}
	else if (c == 'n' || c == 'N') {
		std::cout << "You leave this suspicious light be as suspicious as it needs to be.\n";
	}
	else {
		std::cout << "You look around and see that there are lights on other consoles.\nThis one is blinking, but it is of none of your concerns.\nYou order yourself to snap out of it.\nYou have more pressing issues than this after all.\n";
	}

}

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
	if (c == 'y' || c == 'Y') {
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
