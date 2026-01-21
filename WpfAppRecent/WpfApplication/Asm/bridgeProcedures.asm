include masm32rt.inc
include bridgeProcedures.inc

.data

	inputBuffer BYTE 64 dup(0)

	uiLogCallback DWORD 0

	waitCallback DWORD 0

.code

; @brief Invokes the registered C# procedure which prints a given string to the C# UI.
; @param stringLocation Pointer to the beginning o the string.
printText PROC USES eax stringLocation : DWORD

	mov eax, stringLocation
	push eax
	mov eax, uiLogCallback
	call eax

	ret
printText ENDP

; @brief Blocks the masm code execution unless input is provided from the C# side.
;		 Then specified number of bytes is read from the #inputBuffer which is shared
;		 between masm and C# to the specified memory location.
;		 If '0' is encountered before the given num of bytes is read, procedure terminates.
; @param dest Destination where the string is to be copied
; @param Max length of copied string, should be > 0 && < 32
userInput PROC dest : DWORD, strLen : DWORD

	; Wait for user input
	call waitCallback

	; Read the specified number of bytes or terminate at '0'
	cld 
	mov esi, OFFSET inputBuffer
	mov edi, dest

	; Save the maximal length of the string to read
	mov ecx, strLen

CopyStr:

	; Copy from src to dest and increment pointers
	lodsb
	stosb

	; Check if the string did not terminate early
	test al, al
	jz Exit

	; Check if the max length of the string is reached
	dec ecx
	test ecx, ecx
	jnz CopyStr

	; If the max length is reached, terminate the str with 0 value
	mov BYTE PTR [edi], 0

Exit: 

	ret
userInput ENDP

; @brief Stores callbacks in global variables.
; @param printCallback Will be used in #printText procedureto (it prints the inputBuffer string to the C# TextBox).
; @param waitFunc Blocks the execution of program unitl semaphor is released by the C# side.
registerCallbacks PROC printCallback : DWORD, waitFunc : DWORD

	; Copy the printing callback
	mov eax, printCallback
	mov uiLogCallback, eax

	; Copy the wait callback
	mov eax, waitFunc
	mov waitCallback, eax

	ret
registerCallbacks ENDP

; @brief Reads a string stored in the provided pointer
;		 into the #inputBuffer location. 
;		 If provided string is too long, its trimmed and end with 0.
; @param inputStrPtr Pointer to the input string
updateInputBuffer PROC USES eax esi edi, inputStrPtr : DWORD

	; INVOKE szCopy, inputStrPtr, OFFSET inputBuffer

	mov ah, 64 ; Store the maximal length of the buffer 

	cld							; Clear direction flag
	mov esi, inputStrPtr		; Load src to esi
	mov edi, OFFSET inputBuffer ; Load dest to edi

CpStr:

	lodsb     ; Load byte from src (esi) to al
	stosb     ; Load byte from al to dest (edi)

	test al, al ; Check if the current character is 0 (then its terminator, end procedure)
	jz Finished

	dec ah
	test ah, ah ; Check if its non zero
	jnz CpStr	  ; If not repeat the process

	mov BYTE PTR [edi], 0 ; Write 0 as the end of the string
	
Finished:

	ret
updateInputBuffer ENDP

end
