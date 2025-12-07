.486 
.model flat, stdcall
.stack 4096
option casemap : none

include masm32rt.inc
include player.inc
include utils.inc
include rooms.inc

ExitProcess PROTO, dwExitCode: DWORD

; # ------------- CONST ------------- # ;
.const 

; # ------------- DATA ------------- # ;
.data

dummyString BYTE "Asdf", 13, 10, 0

; # ------------- CODE ------------- # ;
.code

main PROC
	LOCAL currentRoom : PTR Room
	mov currentRoom, 1 * roomSize 
	mov eax, currentRoom
	add eax, offset rooms

	
	INVOKE changeRoom, eax

	;INVOKE checkIfInArray, 10, addr dummyString, 7

	;mov eax, TYPE Room

	;INVOKE printPlayerStatus
	;INVOKE testPlayer

	mov esi, offset player
	print addr player.roomHidingLocations

	INVOKE ExitProcess, 0
main ENDP

END main