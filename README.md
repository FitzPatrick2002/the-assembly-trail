# Nostromo Escape 

> **Note:** This repository is a fork of a university team project — a survival game inspired by "Alien". 
> My primary responsibilities included **low-level game event programming in MASM** and developing the **graphical user interface (GUI) using WPF**.

## My Contributions

### Tech Stack:
* ![Assembly](https://img.shields.io/badge/Assembly_MASM-%23000000.svg?style=for-the-badge&logo=assembly&logoColor=white)
* ![WPF](https://img.shields.io/badge/WPF-%23512BD4.svg?style=for-the-badge&logo=dotnet&logoColor=white)
* ![C#](https://img.shields.io/badge/c%23-%23239120.svg?style=for-the-badge&logo=c-sharp&logoColor=white)

### Core Logic & Game Events (MASM):
* Programmed room-specific events and interactions using x86 Assembly (MASM).
* Implemented low-level game mechanics, including tick-based animations, quick-time-events, choice system.

### Graphical User Interface (WPF):
* Designed and implemented the visual interface to transition the game from a purely console-based format to a graphical interface.
* Applied triggers to GUI components and system data display.

---

## Project Overview
Nostromo Escape is a survival text game, where player must escape from the ship via finding 3 fuel units and evacuating through the escape pod. However, player is not alone on ship. Alien is folowing through out the map. Player must avoid any kontakt with it at any cost.

### Features  
* Logic is written on MASM
* Interface based on WPF (C#)
* Oldschool GUI (Underscaling style)
* Quick-time-events
* Time-driven events
* Random events

### Map
!(Very cool map in ASCII)[media/map.PNG]

### GUI
!(Very cool GUI)[media/GUI2.png]

Interface consists of:
1 "Confirm" Button - In choices automaticaly chooses accept-option
2 "Refuse" Button - In choices automaticaly chooses decline-option
3 "CORE STAT" Button - Turns on benchmark mode
4 Main panel (left corner) - Displays information
5 Input panel (right corner) - Needed for command input. After each keyword, ENTER should be pressed

### Gameplay
!(Fantastic game process)[media/GUI2.PNG]

To start game, press "Confirm" or "Refuse" button on GUI.
Player will spawn in room 0. In order to travel through out the ship, player have to enter the number of available room in input pannel.

Game is event-driven. That means player may experience random effects in entrance to a room. In the same way, player can gain fuel, which is needed to escape. After finding 3 fuel units, player have an access to escape option via pod.

However, player Health is limited by Hit Points. They can be lost by events and encounters with an alien. Alien may be randomly found in rooms and almost every such encounter is deadly. After the last Hit Point is lost, game finishes.

Additionaly, there is Water Mechanic. Some events drain it. If it is imposible to do so, player`s Hit Points will be reduced.


