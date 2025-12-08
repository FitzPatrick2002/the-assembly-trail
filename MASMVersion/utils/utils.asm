include masm32rt.inc
include utils.inc

; # -------------------------- DATA -------------------------- # ;

.data 

MAX_ROOMS_STR BYTE "11", 0		; Maximal number of rooms on the map. (Its actually the total number of rooms on the map).
MAX_CONNECTIONS_STR BYTE "5", 0 ; Maximal number of connections a room can have to other rooms.
MAX_EVENTS_STR BYTE "4", 0		; Maximal number of events that can happen in a room.
CHEMFUEL_GOAL_STR BYTE "5", 0   ; How much chemfuel must be collected by the player to win the game.

inputPrompts1 BYTE "[Y/N]: ", 13, 10, 0
inputPrompts2 BYTE "Input: ", 13, 10, 0
inputPrompts3 BYTE "You: ", 13, 10, 0
inputPrompts4 BYTE "Number: ", 13, 10, 0
inputPrompts5 BYTE "Room: ", 13, 10, 0
inputPrompts6 BYTE "Any: ", 13, 10, 0

; # -------------------------- CODE -------------------------- # ;

.code 

; # -------------------------- checkIfInArray -------------------------- # ;

; @brief Compares elements of array of DWORDs.
; @param value : DWORD Value which will be compared with array elements.
; @param arr : PTR DWORD Pointer to the beginning of the array.
; @param allLEngth : DWORD Length of the array.
; @returns eax = 1 - value found in the array, eax = 0 - if not.
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



;flushInputBuffer PROC
;	LOCAL trash
;	Invoke StdIn
	

;	ret
;flushInputBuffer ENDP


; # -------------------------- roomNumberHex -------------------------- # ;

; @brief Converts a DWORD value into an ASCII character representing a hex number in range 0-F.
;		 In case provided value is < 0 or > 15, character # will be placed in the destination buffer.
; @param destBuf : PTR BYTE Pointer to location where result character will be stored.
; @param value : DWORD Value that will be converted to hex, should be in range 0-15.
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

; # -------------------------- getUserYNinput -------------------------- # ;

; @brief Prompts user for input. 
;		 Takes only the first letter of the input.
; @param destBuf Destination buffer, the first letter of user input will be put at the neginning of it.
; @param message Pointer to string which will be printed before user is prompted for input.
; @returns None.
getUserYNinput PROC USES esi eax, destBuf : PTR BYTE, message : PTR BYTE
	LOCAL readBytes[32] : BYTE
	
	; Print the message and read all user input from the stdin.
	print message
	INVOKE StdIn, addr readBytes, 32

	; Move the first character from the read stdin into the destination buffer
	mov esi, destBuf 
	mov al, readBytes[0]
	mov BYTE PTR [esi], al

	ret
getUserYNinput ENDP

; # -------------------------- charCompare -------------------------- # ;

; @brief Compares two strings if they are equal.
; @param str1 Pointer to the first string.
; @param str2 Pointer to the second string.
; @returns eax = 1 if strings are equal, eax = 0 if strings are different.
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

; # -------------------------- getUserInputString -------------------------- # ;

; TO DO: 
; 1. Remove the terminal 13, 10 and substitute it with 0

; @brief Reads input of specified length from the console into the destination and prints a specified message.
; @param destBuffer Pointer to buffer where the console input will be saved.
; @param bufferLength Specifies how many bytes will be read from the stdin.
; @param message A message that will be printed before user is prompted for input.
; @returns None
getUserInputString PROC USES eax, destBuffer : PTR BYTE, bufferLength : DWORD, message : PTR BYTE

	; Flush the console in case there is some stuff dangling in there
	INVOKE GetStdHandle, -10 ; STD_INPUT_HANDLE == -10
	INVOKE FlushConsoleInputBuffer, eax

	; Print the message and read the console input
	print message
	INVOKE StdIn destBuffer, bufferLength

	; Remove the 13, 10 from the end of the string 
	; 

	ret
getUserInputString ENDP
; -------- Flawed, dont use --------- ;
;charCompareWeird PROC srcBuffer : PTR BYTE, destBuffer : PTR BYTE

; -------- Flawed, dont use --------- ;

;	cld						; Direction flag forward
;	lea edi, srcBuffer		; esi is pointing at the source buffer
;
;	mov ecx, -1				; repe will decrese ecx so we start with maximal count
;	xor eax, eax			; Sought after character is 0
;	repe scasb destBuffer	; Count how many characters are in the string (unitl 0 is encountered)
;	not ecx					; Obtain the count count = max - ecx
;
;	lea esi, srcBuffer		
;	lea edi, destBuffer
;	repe cmpsb				; Repeat comparison for the length of one of the strings or as long as they are equal
;	je @F
;
;	mov eax, 0
;	ret
;charCompareWeird ENDP

END