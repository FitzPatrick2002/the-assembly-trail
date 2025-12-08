include masm32rt.inc

include rooms.inc
include player.inc
include utils.inc
include events.inc

; # -------------------------- DATA -------------------------- # ;

.data

; Rooms info as strings.

; # ------------------- 0-2 ------------------- # ;

info0 BYTE "BRIDGE.", 13, 10, "Now presumably empty, it was your work environment for the past XX years.", 13, 10, "In the front there are two pilot seats and just behind them, another two.", 13, 10, "The rest of the area is filled with cabinets, tall consoles and a bunch of everyday junk.", 13, 10, "The BRIDGE is connected to MOTHER unit (1), GALLEY (2) and JUNCTION-1 (3).", 13, 10, 0
hidingGood0 BYTE "Behind the tall cabinets next to you.", 13, 10, 0
hidingBad0 BYTE "Near the main console, under the desk.", 13, 10, 0

info1 BYTE 		"MOTHER.", 13, 10, "You were never allowed in there, but now that Douglas and the rest are gone...", 13, 10, "The room is surrounded with LED panels and small buttons positioned all over the walls and the ceiling.", 13, 10, "You immediately see the main control panel, the one used to talk directly to MOTHER.", 13, 10, "All is pure white and so you quickly notice a sizzling with acid hole in the back.", 13, 10, "The MOTHER is connected only to the BRIDGE (0).", 13, 10, 0
hidingGood1 BYTE "Inside spacious cabinet.", 13, 10, 0
hidingBad1 BYTE "Under the desk.", 13, 10, 0

info2 BYTE 		"GALLEY.", 13, 10, "The kitchen's a spacey room, it has a round table that used to be enough for 7 persons crew (and for Jones too).", 13, 10, "The coffee's spilled, and so is his blood.", 13, 10, "It seems like yesterday, the day when Kane died. It was yesterday.", 13, 10, "The kitchen was always such a frantic mess, now more than ever.", 13, 10, "The GALLEY is connected to the BRIDGE (0), JUNCTION A-1 (3) and to JUNCTION A-2 (6).", 13, 10, 0
hidingGood2 BYTE "Inside one of the bigger drawers.", 13, 10, 0
hidingBad2 BYTE "Under the main round table.", 13, 10, 0

; # ------------------- 3-5 ------------------- # ;

info3 BYTE "JUNCTION A-1.", 13, 10, "There's a broken ladder right in the middle of the junction.", 13, 10, "You mutter to yourself that probably it has always been broken, but you cannot be sure.", 13, 10, "Big metal crates almost block the passage to the GALLEY, but there's an ideal gap both for you and for the ALIEN.\nJust don't think about it too much.", 13, 10, "The JUNCTION A-1 is connected to the BRIDGE (0), GALLEY (2) and to the CORRIDOR (4).", 13, 10, 0

hidingGood3 BYTE "Behind a tower of crates.", 13, 10, 0
hidingBad3 BYTE "In that gap.", 13, 10, 0

info4 BYTE 		"CORRIDOR.", 13, 10, "The entire corridor is filled with steam.", 13, 10, "The pipes are moderately damaged and so are the vents up above.", 13, 10, "You try your hardest to breathe.", 13, 10, "Normally, you would be annoyed at Brett and Parker, those engineers were lazy as they could be,", 13, 10, "but now you only wanted to pass through.", 13, 10, "The CORRIDOR is connected to JUNCTION A-1 (3), MEDLAB (5), JUNCTION A-2 (6)", 13, 10, "and finally to ESCAPE PODS (A).", 13, 10, 0
hidingGood4 BYTE "Behind a broken wall.", 13, 10, 0
hidingBad4 BYTE "Inside a pipe.", 13, 10, 0

info5 BYTE "MEDLAB.", 13, 10, "All the laboratory equipment that Ash was using is still on the floor,", 13, 10, "he himself is thankfully still a burned 'corpse' on the counter.", 13, 10, "Your tired mind sees a few opened ventilation crates above...", 13, 10, "And many shelves near the observation pod, but the road to them is full of shattered glass.", 13, 10, "The MEDBAY is connected to the CORRIDOR (4).", 13, 10, 0
hidingGood5 BYTE "Inside the closest cabinet.", 13, 10, 0
hidingBad5 BYTE "Under the laboratory bed.", 13, 10, 0

; # ------------------- 6-8 ------------------- # ;

info6 BYTE "JUNCTION A-2.", 13, 10, "The ladder stands in the middle of the junction, but you have no business of going down there.", 13, 10, "CHEMFUEL must be on this floor, you seem to be sure.", 13, 10, "Vents are jagged and ripped apart, but only darkness and dust follows your gaze.", 13, 10, "The JUNCTION A-2 is connected to GALLEY (2), CORRIDOR (4),", 13, 10, "HYPERSLEEP VAULT(7) and to the LIVING AREA (8).", 13, 10, 0
hidingGood6 BYTE "Inside the nearest vent.", 13, 10, 0
hidingBad6 BYTE "Behind the ladder.", 13, 10, 0

info7 BYTE "HYPERSLEEP VAULT.", 13, 10, "There are seven simple cots with glass lids,", 13, 10, "creating a circle shape in the middle of this massive bedroom.\nSeven simple lockers, seven simple stools next to them.", 13, 10, "It seems like all but one have been moved,", 13, 10, "but it could be just jitter inside your mind.", 13, 10, "The HYPERSLEEP VAULT is connected to the JUNCTION A-2 (6).", 13, 10, 0
hidingGood7 BYTE "Inside the closest cabinet.", 13, 10, 0
hidingBad7 BYTE "Inside one of the cots.", 13, 10, 0

info8 BYTE "LIVING AREA.", 13, 10, "There is a fairly long l-shaped sofa in the corner of this room and a coffee table in front of it.", 13, 10, "The cigarrette smell fills up the room and you almost trip on a can.", 13, 10, "The lights are gone and you wouldn't notice a threat if it was hiding here.", 13, 10, "The LIVING AREA is connected to the JUNCTION A-2 (6) and to WC (9).", 13, 10, 0
hidingGood8 BYTE "Behind the sofa.", 13, 10, 0
hidingBad8 BYTE "Under the table.", 13, 10, 0

; # ------------------- 9-10 ------------------- # ;

info9 BYTE "WC.", 13, 10, "It stinks in here. Why would you come here?", 13, 10, "Do you think the ALIEN will let you pee in peace?", 13, 10, "It probably watches you from that stall over there.", 13, 10, "The WC is connected to the LIVING AREA (8).", 13, 10, 0
hidingGood9 BYTE "Left stall.", 13, 10, 0
hidingBad9 BYTE "Right stall.", 13, 10, 0

info10 BYTE "ESCAPE PODS.", 13, 10, "You are extremely visible right now, it is unnaturally white around.", 13, 10, "Nobody has ever used this room before.", 13, 10, "Three pods but only one could work.", 13, 10, "Your only way out.", 13, 10, "You just need to find the fuel.", 13, 10, "Before someone finds you...", 13, 10, "The ESCAPE PODS are connected to the CORRIDOR (4).", 13, 10, 0
hidingGood10 BYTE "Inside the suit closet.", 13, 10, 0
hidingBad10 BYTE "Inside the broken pod.", 13, 10, 0


; Rooms array
; Refernce it by [rooms + (SIZE Room) * idx]

;ALIGN 4
rooms Room {offset info0, offset hidingGood0, offset hidingBad0, 4,\
			<OFFSET alienHide, OFFSET foundChemfuel, OFFSET bridgeConsole, OFFSET jonesyJumpscare>, \
			<1, 2, 3, 20, 20> } ; 0
	  Room {offset info1, offset hidingGood1, offset hidingBad1, 4,\
			<OFFSET alienFire, OFFSET foundWater, OFFSET jonesyJumpscare, OFFSET motherPanel>, \
			<0, 20, 20, 20, 20> } ; 1
	  Room {offset info2, offset hidingGood2, offset hidingBad2, 4,\
			<OFFSET galleyWater, OFFSET foundWater, OFFSET jonesyJumpscare, OFFSET alienHide>, \
			<0, 3, 6, 20, 20> } ; 2
	  Room {OFFSET info3, OFFSET hidingGood3, OFFSET hidingBad3, 4,\
			<OFFSET jonesyJumpscare, OFFSET alienHide, OFFSET alienFire, 0>, \
			<0, 2, 4, 20, 20> } ; 3
	  Room {OFFSET info4, OFFSET hidingGood4, OFFSET hidingBad4, 4,\
			<OFFSET tooHot, OFFSET alienHide, OFFSET jonesyJumpscare, OFFSET alienFire>, \
			<3, 5, 6, 10, 20> } ; 4
	  Room {OFFSET info5, OFFSET hidingGood5, OFFSET hidingBad5, 4,\
			<OFFSET medbayGlass, OFFSET medbayAsh, OFFSET jonesyJumpscare, OFFSET alienHide>, \
			<4,20,20,20,20> } ; 5
	  Room {OFFSET info6, OFFSET hidingGood6, OFFSET hidingBad6, 4,\
			<OFFSET tooHot, OFFSET jonesyJumpscare, OFFSET alienHide, OFFSET foundWater>, \
			<2,4,7,8,20> } ; 6
	  Room {OFFSET info7, OFFSET hidingGood7, OFFSET hidingBad7, 4,\
			<OFFSET tooHot, OFFSET alienHide, OFFSET jonesyJumpscare, OFFSET alienFire>, \
			<6,20,20,20,20> } ; 7
	  Room {OFFSET info8, OFFSET hidingGood8, OFFSET hidingBad8, 4,\
			<OFFSET jonesyJumpscare, OFFSET jonesyJumpscare, OFFSET alienHide, OFFSET foundWater>, \
			<6,9,20,20,20> } ; 8
	  Room {OFFSET info9, OFFSET hidingGood9, OFFSET hidingBad9, 4,\
			<OFFSET tooHot, OFFSET WCHiddenPassage, OFFSET alienHide, OFFSET alienFire>, \
			<8,20,20,20,20> } ; 9
	  Room {OFFSET info10, OFFSET hidingGood10, OFFSET hidingBad10, 4,\
			<OFFSET tooHot, OFFSET alienHide, OFFSET foundWater, OFFSET jonesyJumpscare>, \
			<4,20,20,20,20> } ; 10

; Strings used in functions associated with room operations.
; Notation: functionNameNumber, Number is 1, 2, 3 when strings are from different std::couts
;								Number is 11, 12, 13, ... when strings are from a single std::cout

; # --- changeRoom strings --- # ;
changeRoom1 BYTE "# -------------------------------------- #", 13, 10, 0
changeRoom2 BYTE "Choose room to which you want to go:", 13, 10, 0
changeRoom3 BYTE "You chose room number: ", 0
changeRoom4 BYTE " ", 13, 10, 0 ; New line character I guess

; # --- loadRoom strings --- # ;
loadRoom1 BYTE "YOU ARE AT:", 13, 10, 0
loadRoom2 BYTE " ", 13, 10, 0
loadRoom3 BYTE "You can go to: | ", 0
loadRoom4 BYTE " | ", 0
loadRoom5 BYTE 13, 10, "# -------------------------------------- #", 13, 10, 0

;temp PBYTE 1 dup(?)


; # -------------------------- CODE -------------------------- # ;

.code


; # ------------ changeRoom ------------ # ;

; TO DO:
; 1. If user gives lover case letters a-f, convert them to uppercase A-B 
;	 or handle a separate condition for conversion hex -> dec
; 2. Implement the getUserYNinput() (Sort of done with StdIn, just consumes leftovers into a bigger buffer (16b))

; room : PTR Room should be already pointing to the room currently occupied by the player

; @brief Handles the mechanic of changing the room, occupied by the player.
;		 1. Prompt user for single value input (room number).
;		 2. Validate the input. If provided room number is illegal, prompt player again.
;		 3. Print the final choice and change the room occupied by the player in the player struct.
changeRoom PROC USES esi edx, room : PTR Room
	LOCAL roomChosen : DWORD   ; Idx of the room chosen by the user.
	LOCAL userInput[16] : BYTE ; User input, read from the cnosole. In C++ prototype its char c
	LOCAL roomOffset : DWORD   ; Offset in memomry expressed in bytes. Its equal: roomChsoen * SIZEOF Room
	;mov roomChosen, 0
	
	print addr changeRoom1
	
	; do

RoomLoop:

	print addr changeRoom2
	; utils::getUserYNinput(userInput, utils::inputPrompts[4]);
	; For now we just consume bigger buffer than necessary. 

	INVOKE StdIn, addr userInput, 16 ; Read the letter that we are interested in and potential 13, 10, 0 sequence. Read 16 bytes so as to avoid some bytes dangling in the buffer
	mov userInput[1], 0				 ; Terminate the string early
	xor eax, eax
	movzx eax, userInput[0]
	sub al, 48						
	mov roomChosen, eax				 ; If input was in characters range 0-9 now roomChosen stores a numeric value 0-9 (not an ASCII code).

	;if (roomChosen >= 17 && roomChosen <= 22)
	cmp roomChosen, 17
	jl @F
	cmp roomChosen, 22
	jg @F
	sub roomChosen, 7  ; Converts the character A-F (capital) from ASCII code to numeric value 10-15
@@:
	; Print the info about the user input
	print addr changeRoom3
	print addr userInput 
	print addr changeRoom4

	; Check the do while{} conditions 
	; !utils::checkIfInArray(roomChosen, room->connections, MAX_ROOMS) || roomChosen < 0 || roomChosen >= MAX_ROOMS
	cmp roomChosen, 0			  ; roomChosen < 0
	je RoomLoop
	cmp roomChosen, MAX_ROOMS + 1 ; roomChosen >= MAX_ROOMS
	jge RoomLoop

	; !utils::checkIfInArray(roomChosen, room->connections, MAX_ROOMS)
	mov esi, room
	lea edx, [esi].Room.connections
	INVOKE checkIfInArray, roomChosen, edx, MAX_CONNECTIONS ; !utils::checkIfInArray(roomChosen, room->connections, MAX_ROOMS)
	cmp eax, 1
	jne RoomLoop

	; while end

	; player.roomNumber = roomChosen
	mov eax, roomChosen
	mov player.roomNumber, eax ; Save the chosen room idx into the player struct.

	; Evalueate offset of the chosen room in the array
	mov eax, SIZEOF Room
	mul roomChosen
	mov roomOffset, eax ; roomOffset = roomChosen * SIZEOF Room

	; Get pointer to the chosen room in the rooms array
	lea esi, rooms		; Load the address of the rooms array
	add esi, roomOffset ; esi stores pointer to the n-th room in the array, where n = roomChosen
	
	; Save the new hiding locations for this room in the player struct
	mov eax, [esi].Room.hidingLocationCorrect
	mov player.roomHidingLocations[0], eax    ; Pointer to string with the correct hiding location is saves in player.roomHidingLocations
	mov eax, [esi].Room.hidingLocationWrong
	mov player.roomHidingLocations[4], eax    ; Pointer to string with the worng hiding location is saves in player.roomHidingLocations

	ret
changeRoom ENDP


; # ------------ loadRoom ------------ # ;

; @brief Prints the information about the room and possible passages to other rooms.
; @param room Pointer to the room which will be referenced in the procedure.
; @returns None
loadRoom PROC USES eax ecx esi edx, room : PTR Room
	LOCAL roomIdxChar[12] : BYTE ; Stores the room index as ASCII character	

	print addr loadRoom1
	mov esi, room								; Loads the string addrs of the info for this room
	mov esi, [esi].Room.info
	print esi									; References the string which contains info for this room
	print addr loadRoom2
	print addr loadRoom3

	; for (int8_t i = 0; i < MAX_ROOMS; i++)
	xor ecx, ecx
	mov eax, room					; Pointer to the struct loaded into ebx
	lea esi, [eax].Room.connections ; esi is poinintg to the beginning of the connections array (its effective address)

Iterate:
	
	; int8_t r = room->connections[i];
	mov edx, [esi] ; edx = r

	; For loop operation
	; (r >= MAX_ROOMS || r < 0) causes a break (jmp EndIteration)
	; So (r > 0 && r < MAX_ROOMS) should not cause it
	cmp edx, 0			; I think condition with < 0 is irrevelant if we assume that room id is always positive > 0.
	jl EndIteration     ; End the for loop if the room id has a value from outside the range
	cmp edx, MAX_ROOMS
	jge EndIteration     ; End the for loop if the room id has a value from outside the range

@@:

	; Convert the room number into an ASCII character which expresses a hexadecimal number
	; INVOKE roomNumberHex outcomeBuf, edx
	; print addr outcomeBuf
	; print loadRoom4
	push ecx
	push esi
	INVOKE dwtoa, edx, addr roomIdxChar
	print addr roomIdxChar
	print addr loadRoom4
	pop esi
	pop ecx

	inc ecx

	; esi = esi + 4 * ecx.
	mov eax, 4
	;mul ecx		; ecx * 4 -> offset of next room id in the array
	add esi, eax

	; For loop condition ecx < MAX_ROOMS, got to Iterate:
	cmp ecx, MAX_CONNECTIONS
	jne Iterate

EndIteration:
	
	print addr loadRoom5
	ret
loadRoom ENDP

; # ------------ loadEvent ------------ # ;

; TO DO:
; 1. Document the code
; 2. Swap CALL for INVOKE 
; 3. Write the isSingleTimeEvent
; @brief 
loadEvent PROC room : PTR Room
	LOCAL eventPtr : DWORD

	; esi - room ptr
	; edi - random event idx

	mov esi, room ; Load the ptr to the room into esi
	INVOKE nrandom, [esi].Room.eventsNumber
	mov edi, eax


	mov edx, [esi].Room.eventsList[edi * 4] ; Move the function pointer address to eax
	mov eventPtr, edx

	; If event is different than null pointer, run it
	cmp eventPtr, 0
	je @F
	push esi
	push edi
	call eventPtr
	pop edi
	pop esi

	; push esi
	; push edi
	; INVOKE isSiIngleTimeEvent, eventPtr
	mov eax, 1 ; For now assume it is a single time event
	cmp eax, 1
	; pop edi
	; pop esi
	jne @F
	mov [esi].Room.eventsList[edi * 4], 0
	mov eax, room
	
@@:

	ret
loadEvent ENDP

; # ------------ testChangeRoom ------------ # ;

; Some test code for the changeRoom procedure, probably does not work
testChangeRoom PROC
	LOCAL currentRoom : PTR Room
	LOCAL currentRoomStr[4] : BYTE

	INVOKE dwtoa, player.roomNumber, addr currentRoomStr
	print addr currentRoomStr

	; Choose room 
	mov eax, player.roomNumber
	mov ebx, SIZEOF Room
	mul ebx
	add eax, OFFSET rooms

	; INvoke the procedure for room change
	INVOKE changeRoom, eax

	; Print the results
	INVOKE dwtoa, player.roomNumber, addr currentRoomStr
	print addr currentRoomStr

	mov eax, player.roomNumber
	mov ebx, SIZEOF Room
	mul ebx
	add eax, OFFSET rooms

	INVOKE changeRoom, eax
	INVOKE dwtoa, player.roomNumber, addr currentRoomStr
	print addr currentRoomStr

	;INVOKE checkIfInArray, 10, addr dummyString, 7

	;mov eax, TYPE Room

	;INVOKE printPlayerStatus
	;INVOKE testPlayer

	mov esi, offset player
	print addr player.roomHidingLocations

testChangeRoom ENDP

; # ------------ testLoadRoom ------------ # ;

testLoadRoom PROC
	; Move the pointer to the room with idx = 0 (first in rooms array) to eax
	mov eax, offset rooms
	INVOKE loadRoom, eax

	; Do same for room with idx = 1
	mov eax, offset rooms
	add eax, SIZEOF Room
	INVOKE loadRoom, eax

	; Do the same for room with idx = 2
	mov eax, offset rooms
	add eax, SIZEOF Room
	add eax, SIZEOF Room
	INVOKE loadRoom, eax
testLoadRoom ENDP

dummyProc1 PROC
	mov eax, 0
	mov ebx, 4
	add eax, ebx
	ret
dummyProc1 ENDP

dummyProc2 PROC
	mov eax, 11
	mov ebx, 11
	add eax, ebx
	ret
dummyProc2 ENDP

END