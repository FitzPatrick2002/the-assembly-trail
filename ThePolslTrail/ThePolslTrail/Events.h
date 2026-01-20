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

//ﾑ・碯・ 粨・浯濵 ・濵粢! (T`is was done, panowe!)
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

//ﾂ韭・瑙・ ﾃ褪・瑙・
//Its done, Hetman!
void map()
{
	std::cout << "Map\n";
	std::cout << "##########################################################################\n";
	std::cout << "######################################.........###########################\n";
	std::cout << "######################......#########..HYPER....##########################\n";
	std::cout << "#####################.MOTHER.########...VAULT...+.......##################\n";
	std::cout << "######################......#########...........+.........################\n";
	std::cout << "#####################+++##############.........########....###############\n";
	std::cout << "####################...#################################...###############\n";
	std::cout << "###################+..##################################+++###############\n";
	std::cout << "##############.....++#######.........##################.....##############\n";
	std::cout << "#-.................-#######...........###############.........###..L.R.###\n";
	std::cout << "#........BRIDGE.....+.....+...GALLEY..+.............+..J.A-2....+...*---##\n";
	std::cout << "#-..................+.....+...........+.............+.........###...+WC###\n";
	std::cout << "##############....++#######...........################.......#####-.+.####\n";
	std::cout << "#################+....#######.......#############...####+++###############\n";
	std::cout << "###################.....#######...##############......##...######.ESC.-###\n";
	std::cout << "#####################.....#####...#############+......##.......+..PODS..##\n";
	std::cout << "#######################.....###...########....MEDBAY..##-..#####.......###\n";
	std::cout << "#########################....+#+++##########.........+.....###############\n";
	std::cout << "###########################.++......###########++##+++...#################\n";
	std::cout << "############################..........+....CORRIDOR....###################\n";
	std::cout << "############################..J.A-1...+.............######################\n";
	std::cout << "############################.........#####################################\n";
	std::cout << "##########################################################################\n";
	std::cout << "Press anything go back and start the game immediately: ";
	char c;
	utils::getUserYNinput(c, utils::inputPrompts[5]);
}

//ﾐ裄・鉋籵濵! (Released!)
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

//Also try karaoke feature with menu (Its a secret feature. I worked hard on it)
//ﾟ 鈕褄琿・
//I heve mede thes!
void openingMenu()
{

	std::cout << "._______________________________________________________.\n";
	std::cout << "|     __ _   __   ____  ____  ____   __   _  _   __     |\n";
	std::cout << "|    (  ( \\ /  \\ / ___)(_  _)(  _ \\ /  \\ ( \\/ ) /  \\    |\n";
	std::cout << "|    /    /(  O )\\___ \\  )(   )   /(  O )/ \\/ \\(  O )   |\n";
	std::cout << "|    \\_)__) \\__/ (____/ (__) (__\\_) \\__/ \\_)(_/ \\__/    |\n";
	std::cout << "|          ____  ____   ___   __   ____  ____           |\n";
	std::cout << "|         (  __)/ ___) / __) / _\\ (  _ \\(  __)          |\n";
	std::cout << "|          ) _) \\___ \\( (__ /    \\ ) __/ ) _)           |\n";
	std::cout << "|         (____)(____/ \\___)\\_/\\_/(__)  (____)          |\n";
	std::cout << "._______________________________________________________.\n";
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
//ﾇ硴褊・ (Done!)
void medbayGlass() {

	std::cout << "Since the MEDBAY is so well equipped,\n";
	std::cout << "You think about heading towards the observation pod, hoping to find some WATER or CHEMFUEL.\n";
	std::cout << "But the glass on the floor...\n";
	std::cout << "The last thing you'd want is to slip and bleed here.\n";
	std::cout << "Do you want to proceed ? Prepare to be quick.\n";
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
			std::cout << "\nYou somehow manage to get across the room safely.\n";
			std::cout << "To the rhythm of your pouding chest you open each cabinet around you.\n";
			std::cout<< "You find CHEMFUEL and WATER.\n";
			changeWater(1);
			changeChemfuel(2);
		}
		else
		{
			std::cout << "Your walk starts out promising, but you fail to realise one crucial fact.\n";
			std::cout << "These broken vials had liquids in them.\n";
			std::cout << "You slip and the shards dig into your skin.\n";
			std::cout << "You manage to retreat relatively undamaged.\n";
			changeHP(-1);
		}

	}
	else if (c == 'n' || c == 'N')
	{
		std::cout << "'This idea seems to risky to execute at this moment.'\n";
		std::cout << "is the thought that flashes your mind.\n";
		std::cout << "You turn back and check the exit of the area...\n";
		std::cout << "No movements, good sign.\n";
	}
	else
	{
		std::cout << "'What if I slip? It will come, it will come to me' those thoughts are racing through your mind.\n";
		std::cout << "You nervously look around the room\n";
		std::cout << "And even though you saw that Lambert killed Ash, his 'corpse' still surprises you right now.\n";
		std::cout << "You should be going. Your mind is not stable.\n";
		std::cout << "Not enough for this.\n";
	}

}

void medbayAsh() {
	std::cout << "A strange feeling creeps into your mind, as if someone is watching you.\n";
	std::cout << "You turn to see the 'corpse' of Ash staring directly at your skull.\n";
	std::cout << "There's a scream, but it is not yours, it is Ash's.\n";
	std::cout << "Do you shut him up?\n";
	char c;
	utils::getUserYNinput(c, utils::inputPrompts[0]);
	if (c == 'y' || c == 'Y')
	{
		std::cout << "You cannot risk being noticed by the ALIEN.\n";
		std::cout << "This is probably what Ash wants, he would do anything just to protect this creature.\n";
		std::cout << "The question remains, how to shut up this synth?\n";
		std::cout << "You need to be firm and quick, so you think about a few solutions:\n";
		std::cout << "1. Kick him in the mouth (or what remains of it).\n";
		std::cout << "2. Try to fry his circuits.\n"; //you will fry yourself too, there's water on the floor
		std::cout << "3. Smash his head with a chair.\n";
		std::cout << "What will you do?\n";
		char c;
		utils::getUserYNinput(c, utils::inputPrompts[3]);
		if (c == '1')
		{
			std::cout << "This is the fastest method you could think of.\n";
			std::cout << "You position yourself right in front of Ash laying on the counter.\n";
			std::cout << "Not thinking much about it, you lift up your leg and stomp on the synth's face.\n";
			std::cout << "The screaming does not stop, so you kick him\n";
			std::this_thread::sleep_for(std::chrono::seconds(1));
			std::cout << "Again\n";
			std::this_thread::sleep_for(std::chrono::seconds(1));
			std::cout << "And again,\n";
			std::cout << "Ash tries to desperately bite onto your boot.\n";
			std::cout << "Maybe the resonable solution would be to shake him off, but you press your boot harder in.\n";
			std::cout << "After a while his fake teeth start to break under the pressure.\n";
			std::cout << "You feel the resistance dying down suddenly.\n";
			std::cout << "When the screaming finally ends, you step back and stare at what is left.\n";
			std::cout << "It is a good thing, that you cannot see his eyes anymore.\n";
			std::cout << "Your boot is covered in white fuel and you turn your back to him\n";
			std::cout << "He was still your coworker. At least until he tried to kill you.\n";
		}
		else if (c == '2')
		{
			std::cout << "This will shut him up no matter how durable he could still be.\n";
			std::cout << "Since you are in a lab, you are able to find fitting equipment for the job.\n";
			std::cout << "You are glad it was not too hard to pry Ash's circuits open,\n";
			std::cout << "His so called skull, was already half smashed.\n";
			std::cout << "You take the wire and you attach the crocodile clips to his brain.\n";
			std::cout << "The electricity shoots out immediately and licks your skin as well.\n";
			std::cout << "The pain both you and Ash feel is so intense, you break free.\n";
			std::cout << "Trying to electrocute him, you fried yourself as well.\n";
			std::cout << "At least his screaming stops right in the moment,\n";
			std::cout << "But his eyes give up and spill over the counter.\n";
			std::cout << "Had he not tried to kill you, just a few hours before...\n";
			std::cout << "You do not want to think what would be in your head then.\n";
			changeHP(-1);
		}
		else if (c == '3')
		{
			std::cout << "The chair will serve as an adequate barrier of protection against him...\n";
			std::cout << "That is what you think as you grab the closest laboratory chair.\n";
			std::cout << "You prepare for a short second and take a swing at Ash's poor skull.\n";
			std::cout << "His head falls on the floor upon impact and shatters into more pieces.\n";
			std::cout << "But most importantly, his screaming starts to stop.\n";
			std::cout << "His vocal cords begin to glitch out and give out.\n";
			std::cout << "White fuel spattered on your uniform and it tastes like oil...\n";
			std::cout << "You are glad you do not taste blood right now.\n";
		}
		else {
			if (player.water > 0)
			{
				std::cout << "Wait a second...\n";
				std::cout << "You know the perfect solution and it is right here with you.\n";
				std::cout << "Reaching into your backpack you grab a WATER bottle.\n";
				std::cout << "It seems like the screaming is worsening as you make your way over to Ash.\n";
				std::cout << "Without any hesitation you pour the water on his half-cracked skull.\n";
				std::cout << "Among the sizzling and the glitching, his vocal cords give out.\n";
				std::cout << "Some of his white fuel has leaked out on your pants and shoes...\n";
				std::cout << "You are thankful it is not his blood.\n";
				changeWater(-1);
			}
			else
			{
				std::cout << "Without thinking you run towards the corpse on the counter\n";
				std::cout << "And you throw a punch you never realised you were capable of.\n";
				std::cout << "Somehow Ash's teeth fall out afterwards.\n";
				std::cout << "But since the screaming does not stop, you take a swing and\n";
				std::this_thread::sleep_for(std::chrono::seconds(1));
				std::cout << "Hit him again.\n";
				std::cout << "His white fuel sprinkles all over your uniform, but you are not done yet.\n";
				std::cout << "Punch after punch you see his vocal cords giving in and losing their power.\n";
				std::cout << "It is done.\n";
				std::cout << "You recoil and look at your bruised hand.\n";
				std::cout << "Did his hand bruise the same when he was alive?\n";
				std::cout << "No matter, this is a silly thought.\n";
			}
		}
		std::cout << "While examining your stained clothing,\n";
		std::cout << "You notice some supplies on the ground.\n";
		std::cout << "Upon closer inspection and wiping off the fuel off of the items,\n";
		std::cout << "It turns out you have found 2 CHEMFUELS and 1 WATER hidden away.\n";
		std::cout << "Better to leave, Ash's screaming could have called over the ALIEN.\n";
		changeChemfuel(2);
		changeWater(1);
	}
	else if (c == 'n' || c == 'N')
	{
		std::cout << "Maybe it will be smarter to simply run away?\n";
		std::cout << "Ash's screaming could call the ALIEN over to him and him only.\n";
		std::cout << "This is the safest option, you tell yourself and turn around.\n";
	}
	else
	{
		std::cout << "You panic and start screaming right back at him.\n";
		std::cout << "It seems Ash has lost his core programming,\n";
		std::cout << "Because he does not react to you.\n";
		std::cout << "And yet, his stare is so frightening, you take a wrench and throw it at his side.\n";
		std::cout << "You miss horribly... Instead of Ash, you hit the open ventilation crate above him.\n";
		std::cout << "Since the metal was already loosely hanging, it breaks free.\n";
		std::cout << "It hits Ash right in the skull, piercing it right through.\n";
		std::cout << "You try to reach out to your face to gasp in shock,\n";
		std::cout << "But a lose shard pricks your hand pretty badly.\n";
		std::cout << "Thankfully, with the equipment available, you quickly patch yourself up.\n";
		std::cout << "You are losing your mind, you acted so inanely...\n";
		std::cout << "This commotion could have alerted the ALIEN, you should flee as soon as possible.\n";
		changeHP(-2);
	}
}

//ﾑ・淲 碯・ 琥 ・・
//T`is wasn`t as scary!
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

//ﾒ矜 蒡萵 ｳ・鞳褞
//ｲ 矜聰 ・
void alienHide() {
	std::cout << "You hear ALIEN footsteps! Look for hiding locations!\n";
	char e;
	utils::getUserYNinput(e, utils::inputPrompts[5]);
	std::cout << "Where will you hide? \n";
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

//ﾁｳ・ ・
void galleyWater() {
	std::cout << "You think to yourself that there must be some water left.\n";
	std::cout << "Kneeling down, you check the appropriate storage.\n";
	std::cout << "Canned peaches, canned pineapples, even canned tomatoes.\n";
	std::cout << "Dallas really liked exotic fruits.\n";
	std::cout << "You switch to a neighbouring shelf and here it is.\n";
	std::cout << "There lies 3 WATER, all yours now.\n";
	changeWater(3);
}

//ﾁ璢瑣・・ 裔・蒡萵
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

//ﾁ璢瑣・・ 裔・蒡萵
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
					correct_pass = true;
					break;
				}if (utils::charCompare(password, "2120"))
				{
					std::cout << "Incorrect.\n";
					std::cout << "You must have forgotten that two years have already gone by...\n";
				}
				else {
					std::cout << "Incorrect.\n";
				}
			}
			if (correct_pass)
			{
				std::cout << "That makes sense... Ash did wake up every few months or so to check up on Mother.\n";
				std::cout << "The passwords were updated regularly.\n";
				std::cout << "But that is not important now.\n";
				std::cout << "You check the logs and you freeze.\n";
				std::cout << ".____________________________________________.\n";
				for (int i = 5; i > 0; i--)
				{
					std::cout << "30:0" << i << " minutes left to self-destruct.\n";
				}
				std::cout << ".____________________________________________.\n";
				std::cout << "Oh no no no no.\n";
				std::cout << "You scroll up to see what and who set it off.\n";
				std::cout << "Special Order	937? What is this directive...?\n";
				std::cout << "'[...] even at the expense of the crew, the perfect organism must be returned\n";
				std::cout << "to the laboratories on Earth.'\n";
				std::cout << "Those Weyland-Yutani bastards.\n";
				std::cout << "Of course Ash would rather kill us all. Corporation's ideal puppet.\n";
				std::cout << "I should leave now. The time is ticking after all.\n";
			}
			else
			{
				std::cout << "You failed to provide the correct password.\n";
				std::cout << "TERMINAL LOCKED.\n";
				std::cout << "At least I tried. You think to yourself as you back out.\n";
				std::cout << "I have spent too much time in here, I should leave soon.\n";
			}

		}
		else if (c == 'n' || c == 'N')
		{
			std::cout << "You do not think you recall the password.\n";
			std::cout << "Only Ash and Dallas were supposed to after all.\n";
			std::cout << "Just 4 digits, wonder what could that have been. You mutter to yourself.\n";
			std::cout << "However, there's no time for such thoughts and the chills on your body reminds you of this fact.\n.";
			std::cout << "You should escape as soon as possible.\n";

		}
		else {
			std::cout << "You may not know the password, but you know the perfect remedy for disobedient technology.\n";
			std::cout << "WHAM! You kick the computer underneath with all your might.\n";
			std::cout << "Hoping the ALIEN will not hear your deranged solution, you stare at the screen as it refreshes.\n";
			std::cout << "You did not expect this to actually work, but here it is...\n";
			std::cout << "You check the logs and you freeze.\n";
			std::cout << ".____________________________________________.\n";
			for (int i = 5; i > 0; i--)
			{
				std::cout << "30:0" << i << " minutes left to self-destruct.\n";
			}
			std::cout << ".____________________________________________.\n";
			std::cout << "Oh no no no no.\n";
			std::cout << "You scroll up to see what and who set it off.\n";
			std::cout << "Special Order	937? What is this directive...?\n";
			std::cout << "'[...] even at the expense of the crew, the perfect organism must be returned\n";
			std::cout << "to the laboratories on Earth.'\n";
			std::cout << "Those Weyland-Yutani bastards.\n";
			std::cout << "Of course Ash would rather kill us all. Corporation's ideal puppet.\n";
			std::cout << "I should leave now. The time is ticking after all.\n";
		}
	}
	else if (c == 'n' || c == 'N')
	{
		std::cout << "No way, you need to leave this ship as soon as possible.\n";
		std::cout << "This is not the time to be sitting at the panel.\n";
		std::cout << "You will never know the secrets that Ash and Dallas hid behind their backs.\n";
		std::cout << "But they are dead and you are not, and let's keep it that way.\n";
		std::cout << "You swiftly head to the exit hatch.\n";
	}
	else {
		std::cout << "You think and think about this idea for far too long.\n";
		std::cout << "There is a panel in the middle of the room, but where are the cables?\n";
		std::cout << "They must be hidden somewhere...\n";
		std::cout << "Maybe if you follow them, you will find some CHEMFUEL at the end?\n";
		std::cout << "Since every idea is worth trying out, you get on your knees\n";
		std::cout << "And try to pry out the floor tiles.\n";
		std::cout << "You end up bruising and straining yourself to no satisfiable result.\n";
		std::cout << "You must be really losing your mind.\n";
		std::cout << "Best to get out of here.\n";
		changeHP(-1);
	}
}

//ﾒ裲
/// @brief Typical event function.
void podsFoundChemfuel() {
	std::cout << "You look around and you decide to inspect one of the broken pods.\n"; 
	std::cout << "Hidden under the steering panels is a full canister of unused CHEMFUEL.\n";
	std::cout << "The God, if They even exist, must be looking out for you...\n";
	changeChemfuel(1);
}
//ﾁ璢瑣褊・・・ 裔・蒡萵
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

//ﾒ矜 ・礪
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

		std::cout << "Scare the ALIEN. Write '" << word << "' quickly!\n";
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
//ｲ・・・炅魵瑙・ 琿鉋籵濵!
void bridgeConsole() {
	std::cout << "As you look around the Bridge you notice a dim blinking light on one of the distant consoles.\n";
	std::cout << "You have never used it before, it was never your responsibility.\n";
	std::cout << "Check it out ? \n";
	char c;
	utils::getUserYNinput(c, utils::inputPrompts[0]);
	if (c == 'y' || c == 'Y') {
		std::cout << "Careful not to make any noise, you approach the console.\n";
		std::cout << "The blinking light appears to be an indicator...But of what?\n";
		std::cout << "It highlights the MEDLAB.\n";
		std::cout << "There's a button not covered by dust on the keyboard.\n";
		std::cout << "Do you press it? Think it over.\n";
		utils::getUserYNinput(c, utils::inputPrompts[0]);
		if (c == 'y' || c == 'Y') {
			std::cout << "You press the button and then a wave of dust covers you.\n";
			std::cout << "A cabinet under the console suddenly opens up just a bit.\n";
			std::cout << "Inside you find 2 litres of CHEMFUEL.\n";
			std::cout << "It must have been Dallas... But why? \n";
			changeChemfuel(2);
		}
		else if (c == 'n' || c == 'N') {
			std::cout << "Too scared for your own good you leave this console be.\n";
			std::cout << "What did that button do?\n";
			std::cout << "Who must have recently pressed it?\n";
			std::cout << "Now you will never know.\n";
		}
		else {
			std::cout << "You were so confused you pressed all the buttons on the keyboard.\n";
			std::cout << "A wave of thick dust covers you and your fingers.\n";
			std::cout << "You jump in fright as all the cabinets around you burst open!\n";
			std::cout << "One of the cabinets hits you in the back of your head.\n";
			std::cout << "You kneel and hide your head in your hands.\n";
			std::cout << "As you come to your senses, you see 2 litres of CHEMFUEL in a cabinet across you.\n";
			changeChemfuel(2);
			changeHP(-1);
		}
	}
	else if (c == 'n' || c == 'N') {
		std::cout << "You leave this suspicious light be as suspicious as it needs to be.\n";
	}
	else {
		std::cout << "You look around and see that there are lights on other consoles.\n";
		std::cout << "This one is blinking, but it is of none of your concerns.\n";
		std::cout << "You order yourself to snap out of it.\n";
		std::cout << "You have more pressing issues than this after all.\n";
	}

}
//ﾏⅳ硼・銜髜頸・
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

//ﾏⅳ硼・銜髜頸・
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

//ﾏⅳ硼・銜髜頸・
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
//ﾏⅳ硼・銜髜頸・
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
//ﾏⅳ硼・銜髜頸・
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