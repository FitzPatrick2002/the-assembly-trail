#pragma once
#include <iostream>

struct Player {
	int8_t roomNumber = 0;
	int8_t hp = 5;
	int8_t water = 10;
	int8_t chemfuel = 0;
} player;

void printPlayerStatus() {
	std::cout << "Status: \n";
	std::cout << "Room: " << (int)player.roomNumber << "\n";
	std::cout << "HP: " << (int)player.hp << "\n";
	std::cout << "Water: " << (int)player.water << "\n";
	std::cout << "Chemfuel: " << (int)player.chemfuel << "\n";
}

void changeHP(int8_t change) {
	std::cout << "Your hp is changed by " << (int)change << "!\n";
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
