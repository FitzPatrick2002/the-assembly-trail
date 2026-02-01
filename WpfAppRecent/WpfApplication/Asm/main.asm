.686
.model flat, stdcall
.XMM
.stack 4096
option casemap : none

include mainLoop.inc

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