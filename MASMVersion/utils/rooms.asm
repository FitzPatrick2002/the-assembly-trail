include masm32rt.inc

include rooms.inc
include player.inc
include utils.inc

.data

; Rooms info (strings)

info0 BYTE "Info 0", 13, 10, 0
hidingGood0 BYTE "Hiding 0", 13, 10, 0
hidingBad0 BYTE "Hiding bad 0", 13, 10, 0

info1 BYTE "Info 1", 13, 10, 0
hidingGood1 BYTE "Hiding 1", 13, 10, 0
hidingBad1 BYTE "Hiding bad 1", 13, 10, 0

info2 BYTE "Info 2", 13, 10, 0
hidingGood2 BYTE "Hiding 2", 13, 10, 0
hidingBad2 BYTE "Hiding bad 2", 13, 10, 0

; Rooms array
; Refernce by [rooms + (SIZE Room) * idx]

rooms Room {offset info0, offset hidingGood0, offset hidingBad0, 4,\
			<0, 0, 0, 0>, \
			<1, 2, 3, 20, 20> }
	  Room {offset info0, offset hidingGood0, offset hidingBad0, 4,\
			<0, 0, 0, 0>, \
			<2, 7, 3, 20, 20> }
	  Room {offset info0, offset hidingGood0, offset hidingBad0, 4,\
			<0, 0, 0, 0>, \
			<1, 2, 3, 20, 20> }

; Room functions strings

changeRoom1 BYTE "# -------------------------------------- #", 13, 10, 0
changeRoom2 BYTE "Choose room to which you want to go:", 13, 10, 0
changeRoom3 BYTE "You chose room number: ", 0
changeRoom4 BYTE " ", 13, 10, 0 ; New line character I guess

temp PBYTE 1 dup(?)

.code


; TO DO:
; 1. If user gives lover case letters a-f, convert them to uppercase A-B 
;	 or handle a separate condition for conversion hex -> dec
; 2. Implement the getUserYNinput() (Done with StdIn, empty the buffer afterwards)

; room : PTR Room should be already pointing to the room currently occupied by the player
changeRoom PROC USES esi edx, room : PTR Room
	LOCAL roomChosen : DWORD ; Idx of the chosen room
	LOCAL userInput[16] : BYTE ; In C++ prototype its char c
	LOCAL roomOffset : DWORD
	;mov roomChosen, 0
	
	print addr changeRoom1
	
	; do

RoomLoop:

	print addr changeRoom2
	; utils::getUserYNinput(userInput, utils::inputPrompts[4]);
	; For now a dummy

	INVOKE StdIn, addr userInput, 16 ; Read the letter that we are interested in and potential 13, 10, 0. Read 16 bytes so as to avoid some bytes dangling in the buffer
	mov userInput[1], 0				 ; Terminate the string early
	xor eax, eax
	movzx eax, userInput[0]
	sub al, 48
	mov roomChosen, eax

	;if (roomChosen >= 17 && roomChosen <= 22)
	cmp roomChosen, 17
	jl @F
	cmp roomChosen, 22
	jg @F
	sub roomChosen, 7
@@:
	print addr changeRoom3
	print addr userInput ; 
	print addr changeRoom4

	; !utils::checkIfInArray(roomChosen, room->connections, MAX_ROOMS)
	; je RoomLoop
	cmp roomChosen, 0
	je RoomLoop
	cmp roomChosen, MAX_ROOMS + 1
	jge RoomLoop

	mov esi, room
	lea edx, [esi].Room.connections
	INVOKE checkIfInArray, roomChosen, edx, MAX_CONNECTIONS
	cmp eax, 1
	jne RoomLoop

	; while end

	; player.roomNumber = roomChosen
	mov eax, roomChosen
	mov player.roomNumber, eax

	; Evalueate offset of the chosen room in the array
	mov eax, SIZEOF Room
	mul roomChosen
	mov roomOffset, eax

	lea esi, rooms
	add esi, roomOffset
	
	; Save the new hiding locations for this room
	;assume esi: PTR Room
	mov eax, [esi].Room.hidingLocationCorrect
	mov player.roomHidingLocations[0], eax
	mov eax, [esi].Room.hidingLocationWrong
	mov player.roomHidingLocations[4], eax
	;assume esi: nothing

	ret
changeRoom ENDP

END