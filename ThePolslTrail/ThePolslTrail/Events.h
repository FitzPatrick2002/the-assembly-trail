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
	std::cout << "As Asembler Programming Language project, made in 2025.\n\n";
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
	utils::printMapFromFile("ascii/ASCII_map.txt");
	std::cout << "Press anything go back and start the game immediately: ";
	char c;
	utils::getUserYNinput(c, utils::inputPrompts[5]);
}

void openingScene() {
	std::cout << ".______________________________.\n";
	std::cout << "|#########################.-.###|\n";
	std::cout << "|#######.-''`''-.######  (@ @) #|\n";
	std::cout << "|####_(`oOoOoOoOo`)_###  \\\\-/  #|\n";
	std::cout << "|##'.-=-=-=-=-=-=-=.`##  \\/ \\  #|\n";
	std::cout << "|####`-=.-=.-=.-=.'####   \\ /\\ #|\n";
	std::cout << "|#######^  ^  ^  ######   _H_ \\#|\n";
	std::cout << "|###############################|\n";
	std::cout << "._______________________________.\n";
	std::cout << "This is commercial towing vehicle Nostromo out of the Solomons,\n";
	std::cout << "Registration number 180924609.\n";
	std::cout << "Executive officer Ripley, W564502460H\n";
	std::cout << "In need of dire help.\n";
	std::cout << "Unknown ALIEN organism is trying to hunt me down.\n";
	std::cout << "Plan of launching Narcissus light shuttle as the last means of escape.\n";
	std::cout << "Pod lacks chemical fuel, search underway.\n";
	std::cout << "Day of the recording - 5th June 2122.\n";
	std::cout << "# -------------------------- #\n";
	char c;
	utils::getUserYNinput(c, "Enter anything to sign off:");
}

void openingMenu()
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
	std::cout << "[map]\n";
	std::cout << "[exit]\n";


	char text[10];

	do {
		utils::getUserInputString(text, 10, utils::inputPrompts[1]);
	} while (!utils::charCompare(text, "help") && !utils::charCompare(text, "start") && !utils::charCompare(text, "exit") && !utils::charCompare(text, "map"));
	
	if (utils::charCompare(text, "help"))
	{
		help();
	}
	else if(utils::charCompare(text, "start"))
	{
		openingScene();
	}
	else if (utils::charCompare(text, "map"))
	{
		map();
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
	std::cout << "A strange feeling creeps into your mind, as if someone is watching you.\n";
	std::cout << "You turn to see the 'corpse' of Ash staring directly at your skull.\n";
	std::cout << "There's a scream, but it is not yours, it is Ash's\n";
	std::cout << "Do you shut him up?\n";
	char c;
	utils::getUserYNinput(c, utils::inputPrompts[0]);
	if (c == 'y' || c == 'Y')
	{
		std::cout << "Unsure of your choice, you walk to the shelf.\n";
		
	}
	else if (c == 'n' || c == 'N')
	{
		std::cout << "This seems too dangerous... I better not risk my life over this.\n";
		
	}
	else
	{
		std::cout << "You try to move forward, but you slip.\n";
		
	}
	//NOT SINGLE TIME EVENT HEHE
}

void jonesyJumpscare() {
	std::cout << "As you walk inside, you hear shallow breathing...\n";
	std::cout << "The sound is coming from\n";
	std::cout << player.roomHidingLocations[0];
	std::cout << "\nYou walk closer...\n";
	std::this_thread::sleep_for(std::chrono::seconds(2));
	std::cout << "MEOW!!!\n";
	std::cout << "It's Jonesy! He flees in fear before you can catch him.\n";
	std::cout << "You hope you can see him again.\n";
}

void alienHide() {
	std::cout << "You hear ALIEN footsteps! Where will you hide?\n";
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

void galleyWater() {
	std::cout << "There must be some water left. You think to yourself.\n";
	std::cout << "You check the appropriate storage.\n";
	std::cout << "Canned peaches, canned pineapples, even canned tomatoes.\n";
	std::cout << "Dallas really liked exotic fruits.\n";
	std::cout << "You switch to a neighbouring shelf and here it is.\n";
	std::cout << "There lies 3 WATER, all yours now.\n";
	changeWater(3);
}

void motherWater() {
	std::cout << "As you move through the shaft door, you notice something strange.\n";
	std::cout << "It appears that one of the small shelves is slightly opened.\n";
	std::cout << "Go towards it?\n";
	char c;
	utils::getUserYNinput(c, utils::inputPrompts[0]);
	if (c == 'y' || c == 'Y')
	{
		std::cout << "Unsure of your choice, you walk to the shelf.\n";
		std::cout << "It is from Ash's desk.\n";
		std::cout << "Once you are near, you see 1 WATER inside.\n";
		std::cout << "How could this be? Ash did not need to drink any water.\n";
		std::cout << "He was able to and he was playing his role around us,\n";
		std::cout << "But only and Dallas were allowed to enter this space.\n";
		std::cout << "Did he try to fool himself too? No, he was a smart 'man'.\n";
		std::cout << "But this is not the time to be analysing this situation.\n";
		std::cout << "Thank you Ash, for this free water.\n";
		changeWater(1);
	}
	else if (c == 'n' || c == 'N')
	{
		std::cout << "This seems too dangerous... I better not risk my life over this.\n";
		std::cout << "What was hidden in the drawer, you will never know.\n";
		std::cout << "You turn your back to the room.\n";
	}
	else
	{
		std::cout << "You try to move forward, but you slip.\n";
		std::cout << "WHAM! Your head bangs on the door, you whimper in pain.\n";
		std::cout << "Holding your head in your palms,\n";
		std::cout << "You slowly make your way towards the shelf.\n";
		std::cout << "What is that... You are so confused, you cannot analyse the item properly.\n";
		std::cout << "It must be some liquid... so it must be 1 WATER.\n";
		std::cout << "But why is it here? Ash did not need to drink.\n";
		std::cout << "This is so weird, I should get out of here. My head hurts...\n";
		changeWater(1);
		changeHP(-1);
	}
}

void motherPanel() {
	std::cout << "Weirdly enough, this room is colder than the rest, emptier than the rest.\n";
	std::cout << "You have never been allowed here, the Mother was a distant entity to you.\n";
	std::cout << "Whatever Ash and Dallas talked with Mother about here, does it matter now?\n";
	std::cout << "You could check the logs on the panel...\n";
	std::cout << "Do you give in the curiosity and temptation one last time?\n";
	std::cout << "Do you check out the main Mother panel?\n";
	char c;
	utils::getUserYNinput(c, utils::inputPrompts[0]);
	if (c == 'y' || c == 'Y')
	{
		std::cout << "You walk up to the panel and the screen automatically lights up.\n";
		std::cout << "Hmm... the machine needs the password to let you in on its secrets.\n";
		std::cout << "Do you try to enter?";
		utils::getUserYNinput(c, utils::inputPrompts[0]);
		if (c == 'y' || c == 'Y')
		{
			std::cout << "Hopefully the ALIEN will not find you hunched over an old screen.\n";
			bool correct_pass = false;
			for (int i = 0; i < 3; i++)
			{
				char password[10];
				const char* input_text = "PASSWORD [4 DIGITS]: ";
				utils::getUserInputString(password, 10, input_text);
				if (utils::charCompare(password, "2122"))
				{
					std::cout << "Correct.\n";
					//some text here, more lore
					correct_pass = true;
					break;
				}if (utils::charCompare(password, "2120"))
				{
					std::cout << "You forgot that two years have gone by, but wrong.\n";
				}
				else {
					std::cout << "Wrong.\n";
				}
			}

		}
		else if (c == 'n' || c == 'N')
		{
			std::cout << "Even though you have just found WATER, you want to keep it for special occasions.\n";

		}
		else {
			std::cout << "The flashes of hot air have made you lose your mind even more.\n";

		}
	}
	else if (c == 'n' || c == 'N')
	{
		std::cout << "This is dangerous, you think to yourself.\n";

	}
	else {
		std::cout << "You try to examine the fallen crate for whatever reason.\n";

	}
}

/// @brief Typical event function.
void podsFoundChemfuel() {
	std::cout << "You look around and you decide to inspect one of the broken pods.\n"; 
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
	std::cout << "The sweat forms on your face, you feel the ALIEN coming this way.\n";
	std::cout << "You have no time to hide now, it could be here any moment.\n";
	std::cout << "Do you use the fire to scare it away?\n";
	std::cout << "If yes, prepare to have a steady stance and a fast hand.\n";
	char c;
	utils::getUserYNinput(c, utils::inputPrompts[0]);
	if (c == 'y' || c == 'Y')
	{
		int choice = rand() % 2;
		const char* word = choice == 1 ? "FIRE" : "FLAME";

		std::cout << "Scare the ALIEN. Write '" << word << "' quick!\n";
		time_t start = std::time(nullptr); //start the timer
		int end = 10;
		char text[8];
		utils::getUserInputString(text, 8, utils::inputPrompts[1]);

		if (utils::charCompare(text, word) && utils::fitTimeframe(start, end)) //managed to write correct input in a specified timeframe
		{
			std::cout << "As you expected, the ALIEN appears from round the corner.\n";
			std::cout << "Each moment counts, as you press on the trigger.\n";
			std::cout << "The fire burts out of the flamethrower!\n";
			std::cout << "You try to hold your ground.\n";
			std::cout << "The ALIEN is not scared of you, but it is scared of the flames...\n";
			std::cout << "You have won this duel, the ALIEN retreats in fear.\n";
			//no prize, survival is more than enough.
		}
		else
		{
			std::cout << "As expected, the ALIEN appears from round the corner.\n";
			std::cout << "Each moment counts, as you try to find the trigger.\n";
			std::cout << "The ALIEN feels your panic and quickly attacks you with its tail.\n";
			std::cout << "Thankfully, you manage to fire in just the right time,\n";
			std::cout << "The tail only scratches you and then gets engulfed in the flames.\n";
			std::cout << "You try to hold your ground, but the pain makes you tremble.\n";
			std::cout << "The ALIEN is wounded too and it fears the fire you control.\n";
			std::cout << "You have won this duel, but just barely. The ALIEN retreats.\n";
			changeHP(-1);
		}
	}
	else if (c == 'n' || c == 'N')
	{
		std::cout << "This might have been a stupid decision.\n";
		std::cout << "You think to yourself as you see the ALIEN appear.\n";
		std::cout << "The boxes to your side catch your eye.\n";
		std::cout << "Having no time for anything else, you throw the boxes at the ALIEN.\n";
		std::cout << "They successfully block the way.\n";
		std::cout << "The ALIEN, now angrier, attacks you with its tail! It pierces your shoulder.\n";
		std::cout << "Being unable to get to you fully, the ALIEN retreats.\n";
		std::cout << "It will get to you sooner than later after all.\n";
		changeHP(-2);
	}
	else {
		std::cout << "What is happening? You feel dizzy...\n";
		std::cout << "Suddenly the ALIEN appears in all of its glory.\n";
		std::cout << "You wake your brain up and grab the firethrower,\n";
		std::cout << "But the ALIEN has already attacked you with its tail.\n";
		std::cout << "The pain is a great motivator to survive. You press the trigger.\n";
		std::cout << "With the blood on your legs, you try to stand your ground.\n";
		if (player.water > 0) {
			std::cout << "The pain is so terrible you drop on one knee.\n";
			std::cout << "Something falls out of your pocket, it's 1 WATER.\n";
			std::cout << "No matter, you stand up and raise the flames higher.\n";
			changeWater(-1);
		}
		std::cout << "The fire licks the ALIEN's tail and as tries to escape.\n";
		std::cout << "You have barely won this duel, you need to be more concious.\n";
		changeHP(-2);
	}
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

void winningScreen() {
	std::cout << "As soon as you open the useless vault, you pour the CHEMFUEL into the reservoir.\n";
	std::cout << "It is ready now.\n";
	std::cout << "By forcing yourself to stop checking your back for just a few seconds, you barge into the pod.\n";
	std::cout << "A small ginger creature slithers between your legs.It is Jonesy.\n";
	std::cout << "You close the pad and prepare for takeoff.\n";
	std::cout << "After a short while, which feels like your last moments, the spaceship starts to move away from you...\n";
	std::cout << "You take your recorder and turn it on.\n";
	std::cout << "This is Ripley,\n";
	std::cout << "W564502460H, executive officer,\n";
	std::cout << "last survivor of the commercial\n";
	std::cout << "starship Nostromo signing off.\n";
	std::cout << "._______________________________________________________________________________.\n";
	std::cout << "|     _  _  __   _  _     __   ____  ____     __   __    __  _  _  ____         |\n";
	std::cout << "|    ( \\/ )/  \\ / )( \\   / _\\ (  _ \\(  __)   / _\\ (  )  (  )/ )( \\(  __)        |\n";
	std::cout << "|     )  /(  O )) \\/ (  /    \\ )   / ) _)   /    \\/ (_/\\ )( \\ \\/ / ) _)  _      |\n";
	std::cout << "|    (__/  \\__/ \\____/  \\_/\\_/(__\\_)(____)  \\_/\\_/\\____/(__) \\__/ (____)(_)     |\n";
	std::cout << "._______________________________________________________________________________.\n";
}

void gameoverScreen() {
	std::cout << "All your injuries... They slow you down.\n";
	std::cout << "You have endured a lot of damage, but you are human.\n";
	std::cout << "As your blood marks the path you've taken...\n";
	std::cout << "It has lead the ALIEN right to you...\n";
	std::cout << ".______________________________________________________.\n";
	std::cout << "|      ___   __   _  _  ____  __   _  _  ____  ____    |\n";
	std::cout << "|     / __) / _\\ ( \\/ )(  __)/  \\ / )( \\(  __)(  _ \\   |\n";
	std::cout << "|    ( (_ \\/    \\/ \\/ \\ ) _)(  O )\\ \\/ / ) _)  )   /   |\n";
	std::cout << "|     \\___/\\_/\\_/\\_)(_/(____)\\__/  \\__/ (____)(__\\_)   |\n";
	std::cout << ".______________________________________________________.\n";
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
