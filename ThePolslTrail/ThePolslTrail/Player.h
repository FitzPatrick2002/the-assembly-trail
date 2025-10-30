#pragma once
#include <iostream>

/// @brief Structure that contains all information about the player.
///		   There is only a single instance of player in the program
struct Player {
	int8_t roomNumber = 0; // Id of the currently occupied room. It corresponds to the location in the rooms table from Room.h file.
	int8_t hp = 5; ///< Health points, if they go down to zero, player dies
	int8_t water = 10; ///< Water needs to be consumed during specific events, if it goes below zero, player will be loosing hp proportionally
	int8_t chemfuel = 0; ///< Chemical fuel which the player is seeking. If the number collected is greater than some value, end of game happens
} player;

/// @brief Prints the current player status. Hp, room number, etc.
void printPlayerStatus() {
	char room;   utils::roomNumberHex(room, player.roomNumber);
	std::cout << "Status: \n";
	std::cout << "Room: " << room << "\n";
	//std::cout << "Room: " << (int)player.roomNumber << "\n";
	std::cout << "HP: " << (int)player.hp << "\n";
	std::cout << "Water: " << (int)player.water << "\n";
	std::cout << "Chemfuel: " << (int)player.chemfuel << " / "<<CHEMFUEL_GOAL<<"\n";
}

/// @brief Cheanges players hp by given value and informs the user about it.
///	@param change Specifies how much hp will the player gain / lose. It's added to the current value of hp.
void changeHP(int8_t change) {
	std::cout << "Your hp is changed by " << (int)change << "!\n";
	player.hp += change;
}

/// @brief Cheanges players water lever by given value and informs the user about it.
///	@param change Specifies how much water will the player gain / lose. It's added to the current value of water level.
void changeWater(int8_t change) {
	std::cout << "Your water storage is changed by " << (int)change << "!\n";
	player.water += change;
}

/// @brief Cheanges players chemical fuel storage by given value and informs the user about it.
///	@param change Specifies how much chemical fuel will the player gain / lose. It's added to the current value of chemical fuel storage the player has.
void changeChemfuel(int8_t change) {
	std::cout << "Your chemfuel storage is changed by " << (int)change << "!\n";
	player.chemfuel += change;
}
