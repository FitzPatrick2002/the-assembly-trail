#pragma once
#include <iostream>

/// @file Utils.h
/// @brief File contains utility functions regarding user input / output and some constants used in the game.

#define MAX_ROOMS 5 ///< Maximal number of rooms on the map
#define MAX_CONNECTIONS 5
#define MAX_EVENTS 4

/// @brief Contains functions for dealing with user input and stores some global variables.
namespace utils {
	
	/// @brief Reads user input from the standard stream.
	/// @param[out] dest Array to which the user input will be saved.
	/// @param[in] len Number of bytes to read from the stream.
	/// @param message Message to print before user is allwoed to input data.
	void getUserInputString(char dest[], int8_t len, const char* message) {
		std::cin.getline(dest, len); // Read len number of bytes from the stream
		
		// Empty the buffer if there is something more
		while (getchar() != '\n');
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

}