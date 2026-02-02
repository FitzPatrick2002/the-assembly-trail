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

// ---------------------------------------------------------------------------------- //
// ---------------------------------- Xorshift128+ ---------------------------------- //
// ---------------------------------------------------------------------------------- //

/// @brief Contains the state of the generator
uint64_t s[2] = { 12342, 22342 };

/// @brief Sets the values of the initial state of the generator.
/// @param val0 Value set as the 0'th state element.
/// @param val1 Value set as the 1'st state element.
extern "C" __declspec(dllexport) void setupStable(uint64_t val0, uint64_t val1) {
	s[0] = val0;
	s[1] = val1;
}

/// @brief Generates a new random value and advances the generator by one step.
/// @return Random value from range [0, 2^64 - 1].
extern "C" __declspec(dllexport) uint64_t next(void) {
	uint64_t s1 = s[0];
	const uint64_t s0 = s[1];
	// Calculate the result
	const uint64_t result = s0 + s1;
	// Update the state of the generator (xor & shift)
	s[0] = s0;
	s1 ^= s1 << 23; // a
	s[1] = s1 ^ s0 ^ (s1 >> 18) ^ (s0 >> 5); // b, c
	// Return result
	return result;
}

/// @brief Advances the generator by 2^64 - 1 steps ahead. 
///		   Use it to initialize the generator before using next().
///		   It's equivalent to 2^64 calls to next() function.
extern "C" __declspec(dllexport) void jump(void) {
	static const uint64_t JUMP[] = { 0x8a5cd789635d2dff, 0x121fd2155c472f96 };
	uint64_t s0 = 0;
	uint64_t s1 = 0;
	for (int i = 0; i < sizeof JUMP / sizeof * JUMP; i++)
		for (int b = 0; b < 64; b++) {
			if (JUMP[i] & UINT64_C(1) << b) {
				s0 ^= s[0];
				s1 ^= s[1];
			}
			next();
		}
	s[0] = s0;
	s[1] = s1;
}

/// @brief Specifies the lower and upper bound for generated number.
/// @param lower Lower bound of the generated naumber.
/// @param higher Higher bound of the generated number.
/// @return Random number from range [lower ; higher], including lower and higher values.
extern "C" __declspec(dllexport) int32_t valueFromRange(int32_t lower, int32_t higher) {
	// Swap if ranges are incorrect
	if (higher < lower) {
		int temp = higher;
		higher = lower;
		lower = temp;
	}

	// If range contains only single value, return it
	if (lower == higher)
		return lower;

	// Calculate the range
	int32_t range = higher - lower;

	// Generate random value from the range
	uint64_t randomVal = next();
	randomVal = randomVal % ((uint64_t)range + 1);

	// Shift by 'lower' value
	int32_t outcome = (int32_t)randomVal + lower;

	return outcome;
}

