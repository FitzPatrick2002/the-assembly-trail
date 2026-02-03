#pragma once
#include <iostream>

// ---------------------------------------------------------------------------------- //
// ---------------------------------- Xorshift128+ ---------------------------------- //
// ---------------------------------------------------------------------------------- //

/// @brief Contains the state of the generator
uint64_t s[2] = { 12342, 22342 };

/// @brief Sets the values of the initial state of the generator.
/// @param val0 Value set as the 0'th state element.
/// @param val1 Value set as the 1'st state element.
extern "C" __declspec(dllexport) void setupStableCpp(uint64_t val0, uint64_t val1) {
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

