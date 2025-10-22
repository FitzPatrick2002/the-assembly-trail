#include <iostream>
#include <ctime>

// TO DO:
// 1. Add more rooms (ok)
// 2. Add more events (ok)
//	   - 
// 3. routine for modifying the parameters of a player (ok)
//	  Automatically prints the modification			   
// 4. Player 'Inventory' -> hp, water, food, modifiers (sickness, hunger, thirst, etc)
// 5. End of game conditions (set in events I suppose) (ok)
// 6. Slow printing (text printed letter by letter)
// 7. Pretty styling of the terminal 
// 8. Inventory + player status is displayed

// Notes:
// - 

// Project for later:
// 3D ASCII TITLE TEXT CONVERTER (3DATC)
// 1. Takes bitmaps of all leters as input
//	  + text
// 2. Creates 3D model by adding additional Z-axis (faces)
// 3. Sets camera under given angle
// 4. Elements hit at specific angle are assigned specific ascii code
//	  Elements that lay on lines connecting vertices get other elements

// Scene
// 1. Date: 28.13.1991
// 2. Location: Zielinski office
// 3. Picture (?)
// 4. Info about current situation
// 5. Event info (optional)
// 6. Event options
// 7. User decision

// How to store this stuff?
//lol global
// Yeah I know, just as arrays I suppose
// How rigid will it be?
// Same room -> always same description, same event, same options?
// first we need to design it all. as in, do we do it like you have two options, we check whether the input is the same as oeither, if not, repeat, this way we do not really need to store it for longer, like a book. choose your own adventure type, you just go further in, example that is
// Okke, so w sorry, just, its easy to implement because you simply add on,okke makes sense.
// We'll need to design it first then, like what user can/cannot, general layout, it will dictate the code,
// i have a homework for you, play a text based game like the one i got you , its actually semi text but yeah a ton of stuff you do in a terminal

// Contain consecutive dates of the journey
const char dates[][12] = {"13.13.20024", "13.14.20024", "13.15.20024"};

const char event[][128] = {
	"You're thirsty. Drink? Y/N",
	"A smooth, undecorated, totally common golden ring is lying on the floor. Check it out? Y/N",
	"There is a noise in the distance in the corridor, continue your journey? Y/N",
	"You see doors. Get in? Y/N"
};

const char* inputPrompts[] = {
	"[Y/N]: ",    // Typical Yes / No answer
	"Input: ",    // Generic input, good for multi character strings
	"You: ",      // In a dialog when responding to character
	"Number: ",   // Numeric input
	"Room: ",	  // When changing occupation
	"Any: "		  // When any key is accepted
};

// For now no, later maybe such complicated routine as well
void getUserInputString(char dest[]) {
	char input[32];

	std::cin.getline(input, 32);
	for (int i = 0; i < 32; i++) {
		dest[i] = input[i];
	}
}

void getUserYNinput(char& c, const char* message) {
	// Print the message
	std::cout << message;
	// Get single character input
	c = getchar();
	// If there is more characters in the buffer, empty the buffer
	while (getchar() != '\n');
}

// Game values
struct Game {
	bool gameOn = true;

} game;

struct Player {
	uint8_t room = 0;
	int8_t hp = 5;
	int8_t water = 10;
	int8_t chemfuel = 0;
} player;

void printPlayerStatus() {
	std::cout << "Status: \n";
	std::cout << "Room: " << (int)player.room << "\n";
	std::cout << "HP: " << (int)player.hp << "\n";
	std::cout << "Water: " << (int)player.water << "\n";
	std::cout << "Chemfuel: " << (int)player.chemfuel << "\n";
}

void changeHP(int8_t change) {
	std::cout << "Your hp is changed by "<<(int)change<<"!\n";
	player.hp += change;
}

void changeWater(int8_t change) {
	std::cout << "Your water storage is changed by " << (int)change << "!\n";
	player.water += change;
}

void changeChemfuel(int8_t change) {
	std::cout << "Your chemfuel storage is changed by " << (int)change << "!\n";
	player.chemfuel += change;
}

// Event is something that happenes during the gameplay
// 1. Information what's going on
// 2. 
struct Event {
	const char* info;
	
	void (*consequence) ();
};

void playerAttacked() {
	std::cout << "You're being attacked by the Alien!\n";
	std::cout << "Duck?\n";
	char c;
	getUserYNinput(c, inputPrompts[0]);
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
	getUserYNinput(c, inputPrompts[0]);
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
	getUserYNinput(c, inputPrompts[0]);
	if (c == 'y') {
		std::cout << "Your swift fingers run across the bumps on the wall but you cannot sense any sensible pattern\n";
	}
	else if(c =='n') {
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
	getUserYNinput(c, inputPrompts[0]);
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

Event events[5] = {
	{"Alien Attack", &playerAttacked},
	{"Thrist", &thirst},
	{"Boredom", &nothingHappens},
	{"Strange Wall", &strangePassage},
	{"Old Corpse", &foundItem}
};

// Clusters of information
// Fields:
// 1. Info number
// 2. Picture number
// 3. Events list ID (for now singular event)
struct Room {
	const char* info;
	uint8_t eventsList[3];
	uint8_t connections[5]; // 
};

// ##########
// #        #
// #  R0  R2#
// #   |  | #
// #   ---R1#
// #   |    #
// #R3-|--R4#
// #        #
// #        #
// ##########

Room rooms[5] = {
	{
		"You are in a large, dark room. The atmosphere is damp and warm, you can hear the water droplets falling off the chains.\n",
		{4, 4, 4},
		{1, 3, 4, 20, 20}
	},
	{
		"The corridor fills you with eerie feeling. A shadow rushes through the dark...\n",
		{0, 1, 2},
		{0, 2, 3, 4, 20}
	},
	{
		"The doors are shut, you cannot get out. There is no way, you can't get out.\nThey're coming.\n",
		{1, 2, 20},
		{20, 20, 20, 20, 20}
	}, // For now it's a dummy like model, just to mess around
	{
		"You find yourself in a narrow passage with 2 doors on both ends.\n",
		{1, 2, 4},
		{0, 1, 4, 20, 20}
	},
	{
		"Room seems like some kind of a storage room. There is some foul scent in the air.\n",
		{3, 4, 0},
		{0, 1, 3, 20, 20}
	}
};

// Let player decide to which room go next
void changeRoom() {
	uint8_t roomChosen = 0;
	char c;
	do {
		std::cout << "Choose room to which you want to go\n";
		getUserYNinput(c, inputPrompts[4]);
		roomChosen = c - 48;
		std::cout << "You chose room number: " << c << "\n";

	} while (roomChosen > 4);

	player.room = roomChosen;
}

void loadRoom(uint8_t roomId) {
	std::cout << rooms[roomId].info << "\n";
	std::cout << "You can go to: ";
	for (int i = 0; i < 5; i++) {
		int r = rooms[roomId].connections[i];
		if (r == 20)
			break;
		std::cout << r << ", ";
	}
	std::cout << "\n\n";
}

void loadEvent(uint8_t roomId) {
	int id = rand() % 3;
	int eventId = rooms[roomId].eventsList[id];

	std::cout << "Event id ==== " << eventId << " | rand: " << id << "\n";
	if (eventId != 20) {
		std::cout << "EVENT: " << events[eventId].info << "\n";
		(*events[eventId].consequence)();
	}

}

int main() {
	time(0);

	char input[32] = {};
	char choice;
	while (game.gameOn) {
		std::cout << "\n\n# -------------------------------------- #\n\n";
		printPlayerStatus();
		loadRoom(player.room);
		loadEvent(player.room);
		changeRoom();

		if (player.chemfuel >= 3) {
			std::cout << "You won!\n";
			break;
		}

		if (player.hp <= 0) { // We could also give player 0 hp at start and increase dmg taken if it rises above some value game over. -> we avoid negative numbers?
			std::cout << "You died!\n";
			break;
		}
	}

	return 0;
}