include masm32rt.inc
include globalBuffer.inc

.data

	inputBuffer BYTE 32 dup(0)

	uiLogCallback DWORD 0

	waitCallback DWORD 0

.code

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

	mov ah, 32 ; Store the maximal length of the buffer 

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
