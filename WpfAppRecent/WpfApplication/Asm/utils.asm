include masm32rt.inc

.686
.XMM

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

	; Tables, 64 & 128 bit values used by the Xorshift128+
	ALIGN 16
	sTable DWORD 1, 0, 2, 0 ; Table of states of the Xorshift128+ generator

	ALIGN 16
	jmpVal QWORD 8a5cd789635d2dffh, 121fd2155c472f96h ; Used by the jumpStep procedure in Xorshift128+ generator

	ALIGN 16
	one8byte QWORD 1h ; Store cosntant 1 in memory as quadword (64 bits)

	ALIGN 16
	zero16byte QWORD 0h, 0h ; Store 0 as a 128 bit value

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

; # -------------------------------------------------------- # ;
; # --------------------- Xorshift128+ --------------------- # ;
; # -------------------------------------------------------- # ;

; # ------------------- steupStable Proc -------------------- # ;

setupStable PROC val0 : QWORD, val1 : QWORD

	; Preserve the value of xmm0 on stack
	sub esp, 16
	movdqu XMMWORD PTR [esp], xmm0

	; Move the 64 bit value to the sTable[0]
	movq xmm0, val0
	movq QWORD PTR [sTable], xmm0

	; Move the second 64 bit value to sTable[1]
	movq xmm0, val1
	movq QWORD PTR [sTable + 8], xmm0

	; Restore the value of xmm0
	movdqu xmm0, XMMWORD PTR [esp]
	add esp, 16

	ret
setupStable ENDP

; # ------------------ nextStep Procedure ------------------ # ;

; Uses registers: eax, edx to return the value
; Uses xmm registers: xmm0, xmm1, xmm2, xmm3, xmm4

nextStep PROC

	; Move the 64 bit values to lower bytes of 2 xmm registers
	movq xmm0, QWORD PTR [sTable]     ; xmm0 = (0 , sTable[0]) ; s1
	movq xmm1, QWORD PTR [sTable + 8] ; xmm1 = (0 , sTable[1]) ; s0

	; Add the registers
	movdqa xmm2, xmm0 ; xmm2 = s1
	paddq xmm2, xmm1 ; xmm2 = s0 + s1

	; s[0] = s0 (xmm1)
	movq QWORD PTR [sTable], xmm1

	; s1 = s1 ^ (s1 << 23)
	movdqa xmm3, xmm0 ; xmm3 = xmm0 (s1)
	psllq  xmm0, 23   ; s1 = s1 << 23
	pxor   xmm0, xmm3 ; s1 = s1 ^ (s1 << 23)

	; Preserve s1 and s0
	movdqa xmm3, xmm0 ; xmm3 = s1
	movdqa xmm4, xmm1 ; xmm4 = s0

	psrlq  xmm4, 5  ; xmm4 = s0 >> 5
	psrlq  xmm3, 18 ; xmm3 = s1 >> 18

	pxor xmm0, xmm1 ; xmm0 = s1 ^ s2 
	pxor xmm0, xmm3 ; xmm0 = xmm0 ^ (s1 >> 18)
	pxor xmm0, xmm4 ; xmm0 = xmm0 ^ (s0 >> 5)

	movq QWORD PTR [sTable + 8], xmm0

	; Return through [edx, eax] -> [high, low] 32 bits
	movd eax, xmm2  ; Low 32 bits
	;psrldq xmm2, 32
	psrlq xmm2, 32
	movd edx, xmm2 ; high 32 bits

	ret
nextStep ENDP

; # ------------------ jumpStep Procedure ------------------ # ;

jumpStep PROC
	
	; Preapre the 64 bit variables
	;xorpd xmm0, xmm0 ; s0 = 0, xmm0 = (0, s0)
	;xorpd xmm1, xmm1 ; s1 = 0, xmm1 = (0, s1)

	xorpd xmm0, xmm0 ; xmm0 = (s1, s0) = (0, 0)

; Prepare the counters for loop
mov ecx, 0 ; i = 0, Outer loop counter
OuterLoop:
	
	mov ebx, 0 ; b = 0, inner loop counter
	InnerLoop:	

		; if(JUMP[i] & UINT64_C(1) << b)
		movq xmm5, QWORD PTR jmpVal[ecx * 8]    ; xmm5 = JUMP[i]
		movq xmm6, QWORD PTR one8byte ; xmm6 = UINT64_C(1)
		movd xmm7, ebx   ; xmm7 = b
		psllq xmm6, xmm7 ; xmm6 = xmm6 << xmm7 ; IUNT64_C(1) << b
		pand xmm5, xmm6  ; xmm5 = xmm5 & xmm6 ; xmm5 = JUMP[i] & (UINT64_C(1) << b)

		ptest xmm5, xmm5 ; Check if xmm == 0
		je DontXor		 ; If so, skip the xor operation inside the if()

		; Perform xor operation inside the if
		xorpd xmm0, XMMWORD PTR [sTable]

		DontXor: ; Omit the if(JUMP[i] & UINT64_C(1) << b), condition was not met 
		
		; Preapre for calling next(), preserve the xmm0 register (holding (s1, s0))
		sub esp, 16 ; Preapre space on stack for 16*8 = 128 bit value
		movdqu XMMWORD PTR [esp], xmm0 ; Sace xmm0 + (s1, s0) to stack

		; Preserve the volatile registers
		push ecx
		push ebx

		INVOKE nextStep ; next()

		; Read back the stored values of volatile registers
		pop ebx
		pop ecx

		movdqu xmm0, XMMWORD PTR [esp] ; Restore the xmm0 = (s1, s0) value
		add esp, 16 ; Restore the stack

		; for(int b = 0; b < 64; b++)
		inc ebx		  ; b++
		cmp ebx, 64   ; b < 64
		jne InnerLoop ; Repeat the inner loop
		; End of innerLoop

	; for(int i = 0; i < sizeof jump / sizeof *jump; i++)
	inc ecx				     ; i++
	cmp ecx, LENGTHOF jmpVal ; i < sizeof jump / sizeof *jump
	jne OuterLoop		     ; Repeat the outer loop
	; End of outer loop

	; Overwrite the sTable values with s1, s0.
	movdqa XMMWORD PTR [sTable], xmm0

	ret
jumpStep ENDP

; # ------------------ valueFromRange Procedure ------------------ # ;

; @brief Specifies the lower and upper bound for generated number.
; @param lower Lower bound of the generated naumber.
; @param higher Higher bound of the generated number.
; @return eax = Random number from range [lower ; higher], including lower and higher values.
valueFromRange PROC USES ebx edx ecx lower : SDWORD, higher : SDWORD 
	LOCAL randomVal : QWORD ; Stores the values of a generated random number	

	; Check if lower == higher, if so, return that value

	; if (lower == higher)
	mov eax, lower  ; eax = lower
	cmp eax, higher ; compare lower with higher 
	jne ValsDiffer  ; If values are different, dont return

	; return lower;
	mov eax, lower ; eax = lower
	ret

ValsDiffer:

	; If values are different, check if lower < higher
	; If no, then swap them

	; if (higher < lower)
	mov eax, lower  ; eax = lower
	cmp eax, higher ; compare(lower, higher)
	jl OrderOk	    ; If order is okay, skip swapping

	; swap(higher, lower)
	mov eax, higher ; eax = higher
	mov ebx, lower  ; eax = lower
	mov lower, eax  ; lower = eax (higher)
	mov higher, ebx ; higher = ebx (lower)

OrderOk: 

	; If the order of values is okay then generate the random values

	; Calculate the range
	mov ebx, higher ; ebx = higher
	sub ebx, lower  ; range = ebx = ebx - lower. ebx now stores the range of generation

	; Generate next random number
	INVOKE nextStep ; Generates random value and stores it in (edx, eax) -> (high dw, low dw)

	; Random value is stored in pair edx:eax (higher:lower) bits
	; We will first divide the higher part and then the lower part (long division)

	inc ebx ; ebx = range + 1, so that we get value from [lower ; higher] and not [lower ; higher)

	; Divide the higer bits (edx) and obtain the remainder
	mov ecx, eax ; Save the lower 32 bits in ecx
	mov eax, edx ; Sotre the higher 32 bits in eax
	xor edx, edx ; edx = 0
	div ebx		 ; Divide edx:eax = (0, higher bits) / (range + 1)

	; Divide the lower bits
	mov eax, ecx ; Move the lower bits to eax 
	div ebx		 ; Divide edx:eax = (higher bits rem, lower bits) / (range + 1)

	; Shift it by the 'lower' offset
	add edx, lower ; edx = edx + lower, 

	; Return through eax
	mov eax, edx ; eax = edx = random value from range [lower ; higher]

	ret
valueFromRange ENDP

END