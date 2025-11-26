#pragma once
#include <iostream>

//for sleep
#include <chrono>
#include <thread>

#include "Utils.h"
#include "Player.h"


/// @file Events.h 
/// @brief Events.h file provides functions with events that will occur during gameplay.
///		   Events can modify the properties of the 'player' object.

/// @brief Function pointer for all event functions.
typedef void(*eventPointer)();

bool isSingleTimeEvent(eventPointer);

void help()
{
	std::cout << ".________________________________.\n";
	std::cout << "|     _  _  ____  __    ____     |\n";
	std::cout << "|    / )( \\(  __)(  )  (  _ \\    |\n";
	std::cout << "|    ) __ ( ) _) / (_/\\ ) __/    |\n";
	std::cout << "|    \\_)(_/(____)\\____/(__)      |\n";
	std::cout << ".________________________________.\n";
	std::cout << "Nostromo Escape is a game developed by:\n";
	std::cout << "Daniil Khortov, Magdalena Rapala, Milosz Liniewiecki and Ruth Zhou\n";
	std::cout << "As a Asembler Programming Language project, made in 2025.\n\n";
	std::cout << "You play as Ellen Ripley, the last Nostromo survivor.\n";
	std::cout << "Still stuck on the ship, your goal is to collect 5 chemical fuels\n";
	std::cout << "And survive long enough to escape via an escape pod.\n";
	std::cout << "How to play?\n";
	std::cout << "This is a text-based game, everything you do, you do so by writing in the terminal.\n";
	std::cout << "There are time dependent decisions, you must pay attention.\n";
	std::cout << "Now, good luck and remember:\n\n";
	std::cout << "|      __  __ _    ____  ____   __    ___  ____                |\n";
	std::cout << "|     (  )(  ( \\  / ___)(  _ \\ / _\\  / __)(  __) _             |\n";
	std::cout << "|      )( /    /  \\___ \\ ) __//    \\( (__  ) _) ( )            |\n";
	std::cout << "|     (__)\\_)__)  (____/(__)  \\_/\\_/ \\___)(____)(/             |\n";
	std::cout << "|     __ _   __      __   __ _  ____     ___   __   __ _       |\n";
	std::cout << "|    (  ( \\ /  \\    /  \\ (  ( \\(  __)   / __) / _\\ (  ( \\      |\n";
	std::cout << "|    /    /(  O )  (  O )/    / ) _)   ( (__ /    \\/    /      |\n";
	std::cout << "|    \\_)__) \\__/    \\__/ \\_)__)(____)   \\___)\\_/\\_/\\_)__)      |\n";
	std::cout << "|     _  _  ____   __   ____    _  _  __   _  _                |\n";
	std::cout << "|    / )( \\(  __) / _\\ (  _ \\  ( \\/ )/  \\ / )( \\               |\n";
	std::cout << "|    ) __ ( ) _) /    \\ )   /   )  /(  O )) \\/ (               |\n";
	std::cout << "|    \\_)(_/(____)\\_/\\_/(__\\_)  (__/  \\__/ \\____/               |\n";
	std::cout << "|     ____   ___  ____  ____   __   _  _                       |\n";
	std::cout << "|    / ___) / __)(  _ \\(  __) / _\\ ( \\/ )                      |\n";
	std::cout << "|    \\___ \\( (__  )   / ) _) /    \\/ \\/ \\ _                    |\n";
	std::cout << "|    (____/ \\___)(__\\_)(____)\\_/\\_/\\_)(_/(_)                   |\n\n";
	std::cout << "Press anything go back and start the game immediately: ";
	char c;
	utils::getUserYNinput(c, utils::inputPrompts[5]);
}

void map()
{
	std::cout << "Map\n";
}

void openingScene()
{

	std::cout << "._______________________________________________________.\n"
		"|     __ _   __   ____  ____  ____   __   _  _   __     |\n"
		"|    (  ( \\ /  \\ / ___)(_  _)(  _ \\ /  \\ ( \\/ ) /  \\    |\n"
		"|    /    /(  O )\\___ \\  )(   )   /(  O )/ \\/ \\(  O )   |\n"
		"|    \\_)__) \\__/ (____/ (__) (__\\_) \\__/ \\_)(_/ \\__/    |\n"
		"|          ____  ____   ___   __   ____  ____           |\n"
		"|         (  __)/ ___) / __) / _\\ (  _ \\(  __)          |\n"
		"|          ) _) \\___ \\( (__ /    \\ ) __/ ) _)           |\n"
		"|         (____)(____/ \\___)\\_/\\_/(__)  (____)          |\n"
		"._______________________________________________________.\n";
	std::cout << "MENU:\n";
	std::cout << "[start]\n";
	std::cout << "[help]\n";
	std::cout << "[exit]\n";


	char text[8];

	do {
		utils::getUserInputString(text, 8, utils::inputPrompts[1]);
	} while (!utils::charCompare(text, "help") && !utils::charCompare(text, "start") && !utils::charCompare(text, "exit"));
	
	if (utils::charCompare(text, "help"))
	{
		help();
		return;
	}
	else if(utils::charCompare(text, "start"))
	{
		return;
	}
	else if (utils::charCompare(text, "exit")) {
		exit(0); //bad idea can be cut out
	}
}

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
	std::cout << "Loud Ash";
	//NOT SINGLE TIME EVENT HEHE
}

void jonesyJumpscare() {///multiple locations
	std::cout << "As you walk inside, you hear shallow breathing...\n";
	std::cout << "The sound is coming from\n";
	std::cout << player.roomHidingLocations[0];
	std::cout << "\nYou walk closer...\n";
	std::this_thread::sleep_for(std::chrono::seconds(5));
	std::cout << "MEOW!!!\n";
	std::cout << "It's Jonesy! He flees in fear before you can catch him.\n";
	std::cout << "You hope you can see him again.\n";
}

void alienHide() {
	std::cout << "You hear Alien footsteps! Where will you hide?\n";
	const char* hidingLocations[2] = { player.roomHidingLocations[0], player.roomHidingLocations[1] }; // 0 - correct, 1 - incorrect
	int x = rand() % 2;
	for (int i = 0; i <= x; i++)
	{
		const char* buffer = hidingLocations[0];
		hidingLocations[0] = hidingLocations[1]; //switching, shuffing random amount of times
		hidingLocations[1] = buffer;
	}
	std::cout << "1. ";
	std::cout << hidingLocations[0];
	std::cout << "\n2. ";
	std::cout << hidingLocations[1];
	std::cout << "\nType in your answer quickly! Choose 1 or 2!\n";

	time_t start = std::time(nullptr); //start the timer
	int end = 12; //in seconds

	char c;
	utils::getUserYNinput(c, utils::inputPrompts[3]);
	
	if ((c == '1' || c == '2') && utils::fitTimeframe(start, end)) //managed to write correct input in a specified timeframe
	{
		std::cout << "Carefully, but swiftly, you slip away to the hiding spot.\n";
		std::cout << "Hoping that the ALIEN won't see you, you freeze and hold your breath.\n";
		std::cout << "The ALIEN in all of its glory searches for you.\n";
		for (int i = 1; i <= 5; i++)
		{
			std::cout << i;
			std::cout << "...\n";
			std::this_thread::sleep_for(std::chrono::seconds(1)); //for dramatic effect
		}
		
		if (player.roomHidingLocations[0] == hidingLocations[c - 49]) //typed in correctly 49 - ascii and then -1 beceause of index
		{
			std::cout << "It looks around and for a moment you feel as if you were going to die.\n";
			std::cout << "But you will not. You will persist.\n";
			std::cout << "At least for now.\n";
			std::cout << "The ALIEN hears a distant rustle and marches towards the noise.\n";
			std::cout << "You wait a short while and leave your hiding spot, still alive.\n";
		}
		else {
			std::cout << "It looks around and for a moment you feel as if you are going to die.\n";
			std::cout << "You have a hunch that you have been noticed.\n";
			std::cout << "Before you can think, the ALIEN jumps towards you and slashes you with its tail.\n";
			std::cout << "As you fall to your knees, your predator is content.\n";
			std::cout << "The ALIEN dissapears as suddenly as it appeared.\n";
			changeHP(-2);
		}
	}
	else if(c != '1' && c !='2' && utils::fitTimeframe(start,end)){ //fit withing time limit but failed to write the spot correctly
		std::cout << "You must be delirious, at a time like this you cannot decide.\n";
		std::cout << "Full of horror, you try to hide in the plain sight.\n";
		std::cout << "The ALIEN sees you almost immediately.\n";
		std::cout << "You have a feeling that the ALIEN is dissapointed in you.\n";
		std::cout << "You are such an easy prey and it wants to play.\n";
		std::cout << "Before you can think, the ALIEN jumps towards you and slashes you with its tail.\n";
		std::cout << "As you fall to your knees, your predator is unsatisfied.\n";
		std::cout << "The ALIEN dissapears as suddenly as it appeared.\n";
		changeHP(-2);
	}
	else { //ran out of time
		std::cout << "You freezed for too long and now the ALIEN has seen you.\n";
		std::cout << "There is no escape.\n";
		std::cout << "Before you can think, the ALIEN jumps towards you and slashes you with its tail.\n";
		std::cout << "As you fall to your knees, your predator is content.\n";
		std::cout << "The ALIEN dissapears as suddenly as it appeared.\n";
		changeHP(-2);
	}
}

//those three events will be written later

void galleyWater() {
	std::cout << "You've found some water";
	
}

void motherWater() {
	//very interesting because Ash did not need water but could drink it, Ripley is weirded out at this thought
	std::cout << "";
}

void motherPanel() {
	std::cout << "something about checking the panel and then wanting to either look at vents or at the escape pods status, add temperature for vibes";

}
/////

/// @brief Typical event function.
void podsFoundChemfuel() {
	std::cout << "You look around and you decide to inspect one of the broken pods.\n"; //remember to add more events to the escape pods like thirst
	std::cout << "Hidden under the steering panels is a full canister of unused CHEMFUEL.\n";
	std::cout << "The God, if They even exist, must be looking out for you...\n";
	changeChemfuel(1);
}

void WCHiddenPassage() {
	std::cout << "You opened up the stall door and you saw a broken crate to the vents.\n";
	std::cout << "It is leading up to something you cannot see.\n";
	std::cout << "Do you dare to go through? ";
	char c;
	utils::getUserYNinput(c, utils::inputPrompts[0]);
	if (c == 'y' || c == 'Y')
	{
		std::cout << "Goosebumps appear on your skin, it must be shocked by your decision.\n";
		std::cout << "You crawl through the vents slowly. Your movements are making a lot of noise.\n";
		std::cout << "Hotter than before you emerge on the other side.\n";
		std::cout << "You have found yourself in a broken escape pod that was barred from the outside.\n";
		std::cout << "There must be some abandoned equipment you think to yourself.\n";
		std::cout << "Found hidden all around are 1 CHEMFUEL and 2 WATER.\n";
		changeChemfuel(1); changeWater(2);
		std::cout << "Quickly, but steadily you go back to the WC stall.\n";
		std::cout << "You feel so hot, this journey has made you sweat.\n";
		std::cout << "Do you pour WATER on yourself to cool down?";
		utils::getUserYNinput(c, utils::inputPrompts[0]);
		if (c == 'y' || c == 'Y')
		{
			//no need to check for water because we have JUST found some.
			std::cout << "You're so lucky you have just found some WATER.\n";
			std::cout << "It helps you keep your head and thoughts straight and focused on the goal.\n";
			changeWater(-1);
		}
		else if (c == 'n' || c == 'N')
		{
			std::cout << "Even though you have just found WATER, you want to keep it for special occasions.\n";
			std::cout << "But you feel so sick you collapse on the bathroom floor...\n";
			std::cout << "Thankfully it seems like the ALIEN is not nearby.\n";
			std::cout << "Maybe IT does not feel the need to pee.\n";
			std::cout << "You are safe for now, but you have slightly damaged yourself.\n";
			changeHP(-1);
		}
		else {
			std::cout << "The flashes of hot air have made you lose your mind even more.\n";
			std::cout << "As you try to open the bottle of WATER you trip and land on the bathroom floor.\n";
			std::cout << "The bottle spills all of its contents around and you're left with nothing.\n";
			std::cout << "Some of it has sprinkled on you, but you still have damaged yourself.\n";
			changeHP(-1); changeWater(-1);
		}
	}
	else if (c == 'n' || c == 'N')
	{
		std::cout << "This is dangerous, you think to yourself.\n";
		std::cout << "No matter what goods I could potentially find on the side,\n";
		std::cout << "It is not worth it.\n";
		std::cout << "You turn around.\n";
	}
	else {
		std::cout << "You try to examine the fallen crate for whatever reason.\n";
		std::cout << "You wonder what made it break? You slide your hand against the side.\n";
		std::cout << "It just stabs you in the finger. Obviously.\n";
		std::cout << "You try to stop the bleeding. It could alert the ALIEN.\n";
		std::cout << "Thankfully, since you are in the WC, you find some toilet paper right next to you.\n";
		std::cout << "Ripley, Ripley, you are such an idiot, what were you thinking? You mutter to yourself.\n";
		std::cout << "You have just wasted time here and needlessly hurt yourself.\n";
		std::cout << "Resignated, you turn around.\n";
		changeHP(-1);
	}

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
	}
	else if (c == 'n' || c == 'N') {
		std::cout << "You leave this suspicious light be as suspicious as it needs to be.\n";
	}
	else {
		std::cout << "You look around and see that there are lights on other consoles.\nThis one is blinking, but it is of none of your concerns.\nYou order yourself to snap out of it.\nYou have more pressing issues than this after all.\n";
	}

}

void tooHot() {
	std::cout << "As you enter the area, you start feeling increasingly dizzy.\n";
	std::cout << "The fire that broke out one level below increased the temperature all around.\n";
	std::cout << "Will you pour water on yourself to cool down?\n";
	char c;
	utils::getUserYNinput(c, utils::inputPrompts[0]);
	if (c == 'y' || c == 'Y') {
		std::cout << "You can see more clearly now." << "\n";
		std::cout << "It is time to focus." << "\n";
		changeWater(-2);
	}
	else {
		std::cout << "You feel yourself slipping away." << "\n";
		std::cout << "To stay concious you try to punch yourself." << "\n";
		std::cout << "It will work for now, but you need to find more water." << "\n";
		changeHP(-1);
	}
}


void foundChemfuel() {
	std::cout << "You notice a fresh acid-made hole on the ground.\n";
	std::cout << "Search it?\n";
	char c;
	utils::getUserYNinput(c, utils::inputPrompts[0]);
	if (c == 'y' || c == 'Y') {
		std::cout << "Nothing can stop you now!\n";
		std::cout << "With a steady hand you reach out and...\n";
		std::cout << "Bingo! You have no idea why, but you have got 1 CHEMFUEL.\n";
		changeChemfuel(1);
	}
	else if (c == 'n' || c == 'N') {
		std::cout << "You know better than to risk getting acid on your hands.\n";
		std::cout << "The hole sizzles evilly.\n";
	}
	else {
		std::cout << "As you stick your hand inside the hole, your weak body trembles.\n";
		std::cout << "OUCH! A speck of acid nuzzles your sleeve...\n";
		std::cout << "It has not damaged you greatly, but you feel a new wound forming right under.\n";
		changeHP(-1);
	}

}

void foundWater() {
	std::cout << "There's an open vent, that was closed before...\n";
	std::cout << "Search it?\n";
	char c;
	utils::getUserYNinput(c, utils::inputPrompts[0]);
	if (c == 'y' || c == 'Y') {
		std::cout << "Nothing can stop you now!\n";
		std::cout << "You climb up and...\n";
		std::cout << "Bingo! Hidden, left by nobody knows who, there lies 1 WATER.\n";
		changeWater(1);
	}
	else if (c == 'n' || c == 'N') {
		std::cout << "Really? You really do not want to see inside the vents?\n";
		std::cout << "The vents that the ALIEN uses almost all the time?\n";
		std::cout << "You turn your back to the open vent\n";
		std::cout << "And you feel yourself getting more, and more vulnerable.\n";
	}
	else {
		std::cout << "You try to climb up the vents,\n";
		std::cout << "But you are too weak and your hands slip away from the ledge...\n";
		std::cout << "Falling on your latter end did hurt a lot.\n";
		changeHP(-1);
	}
}

/// @brief Array with events that are considered single time.
///		   After they are called, they will be removed from the rooms events list in which the event was fired.
eventPointer singleTimeEvents[] = { foundWater, foundChemfuel, bridgeConsole, WCHiddenPassage, medbayAsh, motherPanel, motherWater, galleyWater, podsFoundChemfuel};

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
