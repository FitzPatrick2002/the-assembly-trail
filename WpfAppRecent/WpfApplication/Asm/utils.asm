include masm32rt.inc
include utils.inc
include bridgeProcedures.inc

; TO DO: 
; - fitTimeframe(time_t start, int seconds) (ok)
; - https://learn.microsoft.com/en-us/windows/win32/api/sysinfoapi/nf-sysinfoapi-gettickcount

; # -------------------------- DATA -------------------------- # ;

.data 

	; Game constants as null terminated strings
	MAX_ROOMS_STR BYTE "11", 0		; Maximal number of rooms on the map. (Its actually the total number of rooms on the map).
	MAX_CONNECTIONS_STR BYTE "5", 0 ; Maximal number of connections a room can have to other rooms.
	MAX_EVENTS_STR BYTE "4", 0		; Maximal number of events that can happen in a room.
	CHEMFUEL_GOAL_STR BYTE "5", 0   ; How much chemfuel must be collected by the player to win the game.

	; Input prompts that can be used in getUserYNinput procedure
	inputPrompts1 BYTE "[Y/N]: ", 0
	inputPrompts2 BYTE "Input: ", 0
	inputPrompts3 BYTE "You: ", 0
	inputPrompts4 BYTE "Number: ", 0
	inputPrompts5 BYTE "Room: ", 0
	inputPrompts6 BYTE "Any: ", 0

	; Static data used by rollDice procedure.
	diceSides DWORD 2, 4, 3, 1, 
					2, 0, 3, 5,
					4, 0, 1, 5,
					1, 0, 4, 5,
					3, 0, 2, 5,
					1, 3, 4, 2

; # -------------------------- CODE -------------------------- # ;

.code 

; # -------------------------- checkIfInArray Procedure -------------------------- # ;

checkIfInArray PROC PROC USES esi ecx, value : DWORD, arr : PTR DWORD, arrLength : DWORD
	xor ecx, ecx
	mov esi, arr 

Search:

	mov eax, value
	cmp eax, DWORD PTR [esi]
	je Present

	inc ecx
	add esi, 4

	cmp ecx, arrLength
	jl Search

	mov eax, 0
	ret

Present:

	mov eax, 1
	ret
checkIfInArray ENDP

; # -------------------------- roomNumberHex Procedure -------------------------- # ;

roomNumberHex PROC USES esi eax, destBuffer : PTR BYTE, value : DWORD
	mov eax, value	
	mov esi, destBuffer

	; Check if value is < 0 or > 15, if so, move '#' into the buffer and end the procedure
	cmp eax, 0
	jl ValTooHigh
	cmp eax, 15
	jg ValTooHigh

	; if (room_no > 9 && room_no < 16)
	; If so, change the value into letter
	cmp eax, 9
	jle @F
	
	add al, 55
	mov BYTE PTR [esi], al
	ret
	
@@:
	; Handle conversion of value 0-9 into ACII cahracter 0-9
	add al, 48
	mov BYTE PTR [esi], al

	ret

ValTooHigh:

	; Value was invalid, move # into buffer and end procedure
	mov BYTE PTR [esi], 35
	ret
roomNumberHex ENDP

; # -------------------------- getUserYNinput Procedure -------------------------- # ;

getUserYNinput PROC USES esi eax, destBuf : PTR BYTE, message : PTR BYTE
	LOCAL readBytes[32] : BYTE
	
	; Print the message and read all user input from the stdin.
	INVOKE printText, message
	INVOKE userInputC, addr readBytes, 32

	; Move the first character from the read stdin into the destination buffer
	mov esi, destBuf 
	mov al, readBytes[0]
	mov BYTE PTR [esi], al

	ret
getUserYNinput ENDP

; # -------------------------- charCompare Procedure -------------------------- # ;

charCompare PROC USES ebx esi edi, str1 : PTR BYTE, str2 : PTR BYTE

	; Load pointers to strings into esi and edi
	mov esi, str1
	mov edi, str2

SearchStr: 

	; Store the characters which will be compared in al and bl
	mov al, [esi]
	mov bl, [edi]

	; Check if strings areal
	cmp al, bl
	jne NotEqual

	; Check if one of the strings ended
	; Strings are equal so far so al and bl == 0. 
	cmp al, 0
	je @F

	; Increment the string pointers
	inc esi
	inc edi
	jmp SearchStr

@@:

	; After all the strings are equal
	mov eax, 1
	ret

NotEqual:

	; Strings were not equal
	mov eax, 0
	ret
charCompare ENDP

; # -------------------------- getUserInputString Procedure -------------------------- # ;

; TO DO: 
; 1. Remove the terminal 13, 10 and substitute it with 0

getUserInputString PROC USES eax, destBuffer : PTR BYTE, bufferLength : DWORD, message : PTR BYTE

	; Flush the console in case there is some stuff dangling in there
	INVOKE GetStdHandle, -10 ; STD_INPUT_HANDLE == -10
	INVOKE FlushConsoleInputBuffer, eax

	; Print the message and read the console input
	INVOKE printText, message
	INVOKE userInputC, destBuffer, bufferLength

	; Remove the 13, 10 from the end of the string 
	; 

	ret
getUserInputString ENDP

; # -------------------------- fitTimeframe Procedure -------------------------- # ;

fitTimeframe PROC timeStamp : DWORD, milisecThreshold : DWORD
	;LOCAL currentTime : DOWRD ; Stores current tick time

	INVOKE GetTickCount ; Read current time
	sub eax, timeStamp

	; If (currentTime - timeStamp < milisecThreshold)
	cmp eax, milisecThreshold
	jg @F

	; Return 1 (true) thorugh eax
	mov eax, 1
	ret

@@:
	; Return 0 (false) through eax
	mov eax, 0
	ret
fitTimeframe ENDP

; # -------------------------- scrambleSeed Procedure -------------------------- # ;

scrambleSeed PROC USES ebx, seed : DWORD

	; Store the seed values
	mov ebx, seed
	mov eax, seed
	
	shl eax, 3
	xor eax, ebx ; eax = xor(seed, seed << 3)

	mov ebx, eax ; Save the new seed value

	shr eax, 7 
	xor eax, ebx 

	mov ebx, eax

	shl eax, 5
	xor eax, ebx

	ret
scrambleSeed ENDP

; # -------------------------- rollDice Procedure -------------------------- # ;

rollDice PROC USES ebx edx, seed : DWORD, seedTwo : DWORD
	LOCAL sideIndex : DWORD   ; Stores the index of the cube side
	LOCAL complicator : DWORD ; Complicator factor which adds some randomness

	; 1. sideIndex = seed % 6
	mov eax, seed	   ; Prepare for division
	xor edx, edx	   ; Zero edx before division
	mov ebx, 6         ; Divide seed by 6
	div ebx			   ; divide eax / ebx (seed / 6)
	mov sideIndex, edx ; Move the remainder to sideIndex
	
	; 2. complicator = seed ^ seed_two
	mov eax, seed        ; Save the seed to eax
	xor eax, seedTwo     ; eax = eax ^ ebx
	mov complicator, eax ; complicator = eax

GenerateSide: ; Loop beginning label

	; 3. Loop condition: seed != 0
	cmp seed, 0     ; Check if seed is zero
	je FinishedLoop ; If it is then finish the loop

	; 4. complicator = scrambleSeed(complicator)
	INVOKE scrambleSeed, complicator ; Invoke the procedure
	mov complicator, eax			 ; Store the result in the complicator variable

	; 5. randomDir = (complicator + seed) & 3
	mov eax, complicator ; eax = complicator
	add eax, seed		 ; eax = complicator + seed	     
	and eax, 3		     ; eax = (complicator + seed) & 3

	; 6. sideIndex = diceSides[sideIndex][randomDir]
	mov ecx, sideIndex ; Store sideIndex in ecx
	shl ecx, 4		   ; ecx = sideIndex * 16, (4 * sizeof(DWORD))
	mov ebx, diceSides[ecx + eax * 4] ; Save the value of the dice side in ebx
	mov sideIndex, ebx ; Store the side value in sideIndex

	; 7. Adjust the new values of the seed and complicator
	shr seed, 1        ; Shift right by 1 position
	shr complicator, 1 ; Shift right by 1 position

	; 8. complicator += seed
	mov eax, seed	     ; Store the seed in eax, preapre for addition
	add complicator, eax ; Add seed to complicator and store in complicator variable
	
	jmp GenerateSide ; Repeat the loop

FinishedLoop: ; Loop end label

	mov eax, sideIndex ; Store the sideIndex in eax
	inc eax			   ; Return sideIndex + 1.

	ret
rollDice ENDP

; # -------------------------- rollDiceWrapper Procedure -------------------------- # ;

rollDiceWrapper PROC
	
	; I suppose these should be called once only at the beginning of the program?
	; invoke GetTickCount ; Reads the number of ticks into the eax register
    ; invoke nseed, eax

    invoke nrandom, 2026 ; Generates the random number based on the seed in eax
	add eax, 7FFFFFFFh   

	ret
rollDiceWrapper ENDP

END