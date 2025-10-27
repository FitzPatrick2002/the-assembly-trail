#pragma once
#include <iostream>

namespace utils {
	// For now no, later maybe such complicated routine as well
	void getUserInputString(char dest[]) {
		char input[32];

		std::cin.getline(input, 32);
		for (int i = 0; i < 32; i++) {
			dest[i] = input[i];
		}
	}

	/// @brief Takes user input from standard stream
	/// @param c Character to which the first letter of user input will be saved
	/// @param message Message displayed before waiting for user input
	void getUserYNinput(char& c, const char* message) {
		// Print the message
		std::cout << message;
		// Get single character input
		c = getchar();
		// If there is more characters in the buffer, empty the buffer
		while (getchar() != '\n');
	}

	/// @brief A set of prompts that can be passed to @getUserYNinput
	const char* inputPrompts[] = {
	"[Y/N]: ",    // Typical Yes / No answer
	"Input: ",    // Generic input, good for multi character strings
	"You: ",      // In a dialog when responding to character
	"Number: ",   // Numeric input
	"Room: ",	  // When changing occupation
	"Any: "		  // When any key is accepted
	};

	/// @brief Checks if given value is in the array
	/// @param value Value that we want to check against values from the array
	/// @param arr Pointer to the beginning of the array
	/// @param len Length of the array
	bool checkIfInArray(int8_t value, int8_t* arr, int8_t len) {
		for (int8_t i = 0; i < len; i++) {
			if (arr[i] == value)
				return true;
		}

		return false;
	}

}