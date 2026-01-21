.486
.model flat, stdcall
.stack 4096
option casemap : none

include globalBuffer.inc

.const
	STD_OUTPUT_HANDLE EQU -11
	;GetStdHandle PROTO, nStdHandle: DWORD
	;WriteConsoleA PROTO, dwExitCode: DWORD


.data
	myMessage BYTE 'I like femboys', 13, 10, 0

.code

; @brief Invokes the registered C# procedure which prints a given string to the C# UI.
; @param stringLocation Pointer to the beginning o the string.
; @param strLen Length of the string. (only for compatibility reasons).
printText PROC USES eax stringLocation : DWORD, strLen : DWORD

	mov eax, stringLocation
	push eax
	mov eax, uiLogCallback
	call eax

	ret
printText ENDP

; @brief Main loop of the program
StartGameLoop PROC 

StartLoop: 

	; Print the input to the textbox
	INVOKE printText, OFFSET myMessage, 17

	; Wait for user input
	call waitCallback

	INVOKE printText, OFFSET inputBuffer, 32

	;call printText
	
	jmp StartLoop

	ret
StartGameLoop ENDP

end