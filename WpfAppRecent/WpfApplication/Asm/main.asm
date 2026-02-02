include masm32rt.inc

.686
.model flat, stdcall
.XMM
.stack 4096
option casemap : none

include mainLoop.inc
include utils.inc

ExitProcess PROTO, dwExitCode: DWORD

; # ------------- CONST ------------- # ;
.const 

; # ------------- DATA ------------- # ;
.data

; # ------------- CODE ------------- # ;
.code

main PROC
	LOCAL seed_1 : QWORD
	LOCAL seed_2 : QWORD

	; Seed the Xorshift 

	INVOKE GetTickCount				   ; Get the tick count. It will be used as one of the seeds

	mov DWORD PTR [seed_1], eax		   ; Save the tick count as the seed 0
	xor eax, ebx					   ; xor the seed with whatever is in ebx
	mov DWORD PTR [seed_2], eax		   ; Save the xored version of the 0th seed as the seed 1

	INVOKE setupStable, seed_1, seed_2 ; Seed the xorshift generator

	; Start the main loop

	INVOKE mainLoop					   ; Invoke the main loop of the game

	INVOKE ExitProcess, 0
main ENDP

END main