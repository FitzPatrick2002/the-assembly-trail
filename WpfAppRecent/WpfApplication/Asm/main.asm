.486 
.model flat, stdcall
.stack 4096
option casemap : none

include masm32rt.inc
include player.inc
include utils.inc
include rooms.inc
include mainLoop.inc
include events.inc

ExitProcess PROTO, dwExitCode: DWORD

; # ------------- CONST ------------- # ;
.const 

; # ------------- DATA ------------- # ;
.data

; # ------------- CODE ------------- # ;
.code

main PROC
	LOCAL currentRoomStr[4] : BYTE
	LOCAL timeStamp : DWORD

	; Testing the mainLoop

	INVOKE mainLoop

	INVOKE ExitProcess, 0
main ENDP

END main