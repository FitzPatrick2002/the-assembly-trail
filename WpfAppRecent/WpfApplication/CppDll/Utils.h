#pragma once
#include <iostream>
#include <cstdint>

/// @file Utils.h
/// @brief File contains utility functions regarding user input / output and some constants used in the game.

#define MAX_ROOMS 11 ///< Maximal number of rooms on the map
#define MAX_CONNECTIONS 5
#define MAX_EVENTS 4
#define CHEMFUEL_GOAL 5 //part of the win condition
	
/// @brief Reads user input from the standard stream.
/// @param[out] dest Array to which the user input will be saved.
/// @param[in] len Number of bytes to read from the stream.
/// @param message Message displayed before waiting for user input.
void getUserInputString(char dest[], int8_t len, const char* message);

/// @brief Have [seconds] passed since the time_t [start] timestamp? if yes - false, we did not fit the timeframe.
/// @param[start] time_t timestamp.
/// @param[seconds] the number of seconds in our time frame.
bool fitTimeframe(time_t start, int seconds);
	
// @brief a function that returns true if two arrays of char are the same.
// @param[a] the first char array.
// @param[b] the second char array.
bool charCompare(const char* a, const char* b);

/// @brief Takes user input from standard stream.
/// @param c Character to which the first letter of user input will be saved.
/// @param message Message displayed before waiting for user input.
void getUserYNinput(char& c, const char* message);

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
bool checkIfInArray(int8_t value, int8_t* arr, int8_t len);

/// @brief Return the char value of the room (0 to A for now).
/// @param room_no Number of the given room. Can range from 0 to 10.
void roomNumberHex(char& c, int8_t room_no);


// # ------------------------------ TODO ------------------------------- # ;
// # ---------------- Remove this in favour of xorshift ---------------- # ;

/// @brief Return the bitwised XOR'ed seed with the bitwise shifted seed.
/// @param seed Random seed for the dice rolling.
/// @return the scrambled seed for further complications in random dice rolling.
extern "C" __declspec(dllexport) uint32_t scrambleSeed(int seed);

/// @brief Returns a random number between 1 and 6 from two random seeds.
///			Simulates the dice roll.
/// @param seed Random seed.
/// @param seed_two Second random seed.
extern "C" __declspec(dllexport) int rollDice(int seed, int seed_two);

/// @brief Returns the random number from range 1 to 6.
///			Randomizes two numbers and uses them as seeds for the function rollDice.
/// @returns A number between 1 and 6.
extern "C" __declspec(dllexport) int rollDiceWrapper();

// ---------------------------------------------------------------------------------- //
// ---------------------------------- Xorshift128+ ---------------------------------- //
// ---------------------------------------------------------------------------------- //

extern uint64_t s[2];

/// @brief Sets up the states table 's' table for xorshift128+ cipher.
/// @param val0 64 bit value which will be placed at s[0].
/// @param val1 64 bit value which will be placed at s[1].
extern "C" __declspec(dllexport) void setuStable(uint64_t val0, uint64_t val1);

/// @brief Returns a new random number from range [0 ; 2^64 - 1]
extern "C" __declspec(dllexport) uint64_t next(void);

/// @brief Use that to shift the front of the generated 2^64 - 1 steps ahead.
extern "C" __declspec(dllexport) void jump(void);

/// @brief Specifies the lower and upper bound for generated number.
/// @param lower Lower bound of the generated naumber.
/// @param higher Higher bound of the generated number.
/// @return Random number from range [lower ; higher], including lower and higher values.
extern "C" __declspec(dllexport) int32_t valueFromRange(int32_t lower, int32_t higher);