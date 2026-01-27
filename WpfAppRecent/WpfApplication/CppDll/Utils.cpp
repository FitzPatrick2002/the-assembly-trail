#pragma once
#include <iostream>

void getUserInputString(char dest[], int8_t len, const char* message) {
	// Print the message

	std::cout << message;
	std::cin.clear(); //flush

	std::cin.getline(dest, len); // Read len number of bytes from the stream
	// Empty the buffer if there is something more
	//while (getchar() != '\n'); //for my events, this sort of breaks everything
}

bool fitTimeframe(time_t start, int seconds)
{
	//calculates the difference betweeen now and given time in seconds
	if (std::difftime(std::time(nullptr), start) <= seconds)
		return true;
	return false;
}

bool charCompare(const char* a, const char* b)
{
	while (*a && *b)
	{
		if (*a != *b)
			return false;
		a++; b++;
	}

	//check for length because cat!=catty
	return *a == *b;
}

void getUserYNinput(char& c, const char* message) {
	// Print the message
	std::cout << message;
	// Get single character input
	c = getchar();
	// If there is more characters in the buffer, empty the buffer
	while (getchar() != '\n');
}

bool checkIfInArray(int8_t value, int8_t* arr, int8_t len) {
	for (int8_t i = 0; i < len; i++) {
		if (arr[i] == value)
			return true;
	}

	return false;
}

void roomNumberHex(char& c, int8_t room_no)
{
	//static char c[2]; //rewrite - reference
	//c[1] = '\0'; //end of string
	if (room_no > 9 && room_no < 16)
		c = 55 + room_no;
	else
		c = 48 + room_no;
}

extern "C" __declspec(dllexport) uint32_t scrambleSeed(int seed)
{
	seed ^= seed << 3;
	seed ^= seed >> 7;
	seed ^= seed << 5;

	return seed;
}

extern "C" __declspec(dllexport) int rollDice(int seed, int seed_two)
{
	// Sides of a dice and each side's neighbours.
	static const int diceSides[6][4] = {
		{2,4,3,1}, //1
		{2,0,3,5}, //2
		{4,0,1,5}, //3
		{1,0,4,5}, //4
		{3,0,2,5}, //5
		{1,3,4,2}  //6
	};

	int sideIndex = seed % 6;
	uint32_t complicator = seed ^ seed_two;

	//int previousSeed 
	while (seed)
	{
		complicator = scrambleSeed(complicator);
		int randomDir = (complicator + seed) & 3;
		sideIndex = diceSides[sideIndex][randomDir];

		seed >>= 1;
		complicator >>= 1;

		complicator += (uint32_t)seed;
	}

	return sideIndex + 1;
}

extern "C" __declspec(dllexport) int rollDiceWrapper()
{
	int randomSeed = rand() % 2026 + (INT_MAX - 2026);
	int randomSeedTwo = rand() % 2026 + (INT_MAX - 2026);

	return -rollDice(randomSeed, randomSeedTwo);
}