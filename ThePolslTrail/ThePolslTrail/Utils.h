#pragma once
#include <iostream>

/// @file Utils.h
/// @brief File contains utility functions regarding user input / output and some constants used in the game.

#define MAX_ROOMS 11 ///< Maximal number of rooms on the map
#define MAX_CONNECTIONS 5
#define MAX_EVENTS 4
#define CHEMFUEL_GOAL 5 //part of the win condition

/// @brief Contains functions for dealing with user input and stores some global variables.
namespace utils {
	
	/// @brief Reads user input from the standard stream.
	/// @param[out] dest Array to which the user input will be saved.
	/// @param[in] len Number of bytes to read from the stream.
	/// @param message Message displayed before waiting for user input.
	void getUserInputString(char dest[], int8_t len, const char* message) {
		// Print the message

		std::cout << message;
		std::cin.clear(); //flush

		std::cin.getline(dest, len); // Read len number of bytes from the stream
		// Empty the buffer if there is something more
		//while (getchar() != '\n'); //for my events, this sort of breaks everything
	}

	/// @brief Have [seconds] passed since the time_t [start] timestamp? if yes - false, we did not fit the timeframe.
	/// @param[start] time_t timestamp.
	/// @param[seconds] the number of seconds in our time frame.
	bool fitTimeframe(time_t start, int seconds)
	{
		//calculates the difference betweeen now and given time in seconds
		if (std::difftime(std::time(nullptr), start) <= seconds)
			return true;
		return false;
	}
	
	// @brief a function that returns true if two arrays of char are the same.
	// @param[a] the first char array.
	// @param[b] the second char array.
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

	/// @brief Takes user input from standard stream.
	/// @param c Character to which the first letter of user input will be saved.
	/// @param message Message displayed before waiting for user input.
	void getUserYNinput(char& c, const char* message) {
		// Print the message
		std::cout << message;
		// Get single character input
		c = getchar();
		// If there is more characters in the buffer, empty the buffer
		while (getchar() != '\n');
	}

	/// @brief A set of prompts that can be passed to @getUserYNinput.
	const char* inputPrompts[] = {
	"[Y/N]: ",    // Typical Yes / No answer
	"Input: ",    // Generic input, good for multi character strings
	"You: ",      // In a dialog when responding to character
	"Number: ",   // Numeric input
	"Room: ",	  // When changing occupation
	"Any: "		  // When any key is accepted
	};

	/// @brief Checks if given value is in the array.
	/// @param value Value that we want to check against values from the array.
	/// @param arr Pointer to the beginning of the array.
	/// @param len Length of the array.
	bool checkIfInArray(int8_t value, int8_t* arr, int8_t len) {
		for (int8_t i = 0; i < len; i++) {
			if (arr[i] == value)
				return true;
		}

		return false;
	}

	/// @brief Return the char value of the room (0 to A for now).
	/// @param room_no Number of the given room. Can range from 0 to 10.
	void roomNumberHex(char& c,int8_t room_no)
	{
		//static char c[2]; //rewrite - reference
		//c[1] = '\0'; //end of string
		if (room_no > 9 && room_no < 16)
			c = 55 + room_no;
		else
			c = 48 + room_no;
	}

	/// @brief Return the bitwised XOR'ed seed with the bitwise shifted seed.
	/// @param seed Random seed for the dice rolling.
	/// @return the scrambled seed for further complications in random dice rolling.
	uint32_t scrambleSeed(int seed)
	{
		seed ^= seed << 3;
		seed ^= seed >> 7;
		seed ^= seed << 5;

		return seed;
	}

	/// @brief Returns a random number between 1 and 6 from two random seeds.
	///			Simulates the dice roll.
	/// @param seed Random seed.
	/// @param seed_two Second random seed.
	int rollDice(int seed, int seed_two)
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

	/// @brief Returns the random number from range 1 to 6.
	///			Randomizes two numbers and uses them as seeds for the function rollDice.
	/// @returns A number between 1 and 6.
	int rollDiceWrapper()
	{
		int randomSeed = rand() % 2026 + (INT_MAX - 2026);
		int randomSeedTwo = rand() % 2026 + (INT_MAX - 2026);

		return -rollDice(randomSeed, randomSeedTwo);
	}

}