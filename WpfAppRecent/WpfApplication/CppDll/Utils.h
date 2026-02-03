#pragma once
#include <iostream>
#include <cstdint>

/// @file Utils.h
/// @brief File contains utility functions regarding user input / output and some constants used in the game.

// ---------------------------------------------------------------------------------- //
// ---------------------------------- Xorshift128+ ---------------------------------- //
// ---------------------------------------------------------------------------------- //

extern uint64_t s[2];

/// @brief Sets up the states table 's' table for xorshift128+ cipher.
/// @param val0 64 bit value which will be placed at s[0].
/// @param val1 64 bit value which will be placed at s[1].
extern "C" __declspec(dllexport) void setupStableCpp(uint64_t val0, uint64_t val1);

/// @brief Returns a new random number from range [0 ; 2^64 - 1]
extern "C" __declspec(dllexport) uint64_t next(void);

/// @brief Use that to shift the front of the generated 2^64 - 1 steps ahead.
extern "C" __declspec(dllexport) void jump(void);

/// @brief Specifies the lower and upper bound for generated number.
/// @param lower Lower bound of the generated naumber.
/// @param higher Higher bound of the generated number.
/// @return Random number from range [lower ; higher], including lower and higher values.
extern "C" __declspec(dllexport) int32_t valueFromRange(int32_t lower, int32_t higher);