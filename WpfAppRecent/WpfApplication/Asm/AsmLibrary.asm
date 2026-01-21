.486
.model flat, stdcall
.stack 4096
option casemap : none

include bridgeProcedures.inc
include player.inc

.const

.data
	myMessage BYTE 'Test input:', 13, 10, 0

.code

; ------------------- TEST CODE ------------------- ;

; @brief Main loop of the program
StartGameLoop PROC 
	LOCAL someData[10] : BYTE

StartLoop: 

	; Print the input to the textbox
	INVOKE printText, OFFSET myMessage

	; Wait for user input
	;call waitCallback

	INVOKE userInput, ADDR someData, 5

	INVOKE printText, ADDR someData

	INVOKE printPlayerStatus

	;call printText
	
	jmp StartLoop

	ret
StartGameLoop ENDP

end