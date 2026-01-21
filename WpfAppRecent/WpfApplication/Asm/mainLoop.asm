
include masm32rt.inc
include player.inc
include rooms.inc
include utils.inc
include events.inc

include mainLoop.inc

.data 
	;gameOn BYTE 1
	mainLoop1 BYTE "Your water level is too low, you're suffering!", 13, 10, 0
	mainLoop2 BYTE "Your water level is low, watch out!", 13, 10, 0
	

.code

; TO DO:
; 1. srand(time(0)) -> randomization? Look at Danills

; @brief The game loop of the game.
;		 Acts as entry point which starts up the whole game.
;		 Conians the gameloop in which all game mechanics are handled.
mainLoop PROC
	LOCAL playerRoomPtr : PTR Room
	LOCAL trashBuffer[12] : PTR BYTE
	
	INVOKE openingMenu

GameLoop:
	
	INVOKE ClearScreen ; Clears the console screen, cursor at (0, 0)
	INVOKE printPlayerStatus

	; Calculate the address of the room in which player is currently occupying
	mov eax, TYPE Room
	mul player.roomNumber
	lea esi, rooms[eax]
	mov playerRoomPtr, esi

	
	INVOKE loadRoom, playerRoomPtr   ; Loads the rooms description and lists connections
	INVOKE loadEvent, playerRoomPtr  ; Loads random event from the room 
	INVOKE changeRoom, playerRoomPtr ; Prompts player for input to change the room

	; if (player.chemfuel >= CHEMFUEL_GOAL && player.roomNumber == 10) -> show win screen & end game
	mov eax, player.chemfuel
	cmp eax, CHEMFUEL_GOAL
	jl NotWonYet ; If player.chemfuel < CHEMFUEL_GOAL, dont show end screen 
	mov eax, player.roomNumber
	cmp eax, 10  ; If player.roomNumber != 10, dont show the end screen
	jne NotWonYet
	INVOKE winningScreen
	jmp EndGame

NotWonYet:

	;if (player.water <= 0) -> Change HP if water level is too low
	mov eax, player.water
	cmp eax, 0
	jge NoWaterSuffer ; If water level is ok, dont take hp from player
	print addr mainLoop1
	INVOKE changeHP, player.water ; I think that taking that muhc hp when total is 5 is a bit deadly
	print addr inputPrompts6
	INVOKE crt__getch
	
NoWaterSuffer:

	;if (player.water <= 3 && player.water > 0) ; I think the (player.water > 0) is unnecessary
	mov eax, player.water
	cmp eax, 3
	jg NoWaterWarning ; if player.water > 3, dont print warning message
	;cmp eax, 0
	;jl NoWaterWarning
	print addr inputPrompts6
	INVOKE crt__getch
	print addr mainLoop2

NoWaterWarning:

	; if (player.hp <= 0)
	mov eax, player.hp
	cmp eax, 0
	jg PlayerAlive ; If player.hp > 0, continue the game, dont show the ending screen
	INVOKE gameoverScreen
	print addr inputPrompts6
	INVOKE crt__getch
	jmp EndGame

PlayerAlive:
	
	; Main loop condition
	; If the game conditon is fulfilled, keep looping
	jmp GameLoop

EndGame:

	ret
mainLoop ENDP

END