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
dummy2 BYTE "Asdf is", 13, 10, 0
dummy3 BYTE "Asdf is", 13, 10, 0
dummy4 BYTE "Asdf is", 13, 10, 11, 0
dummy5 BYTE "Asdf is", 13, 10, 0

; # ------------- CODE ------------- # ;
.code

main PROC
	LOCAL currentRoomStr[4] : BYTE
	;LOCAL someBuffer[4] : PTR BYTE

	; Test the charCompare
	xor eax, eax
	INVOKE charCompare, addr dummyString, addr dummy2 ; Different
	INVOKE charCompare, addr dummy2, addr dummy3	  ; Equal
	INVOKE charCompare, addr dummy3, addr dummy4	  ; Different (length)
	INVOKE charCompare, addr dummy2, addr dummy3	  ; Equal
	INVOKE charCompare, addr dummy4, addr dummy5	  ; Different (length)


	; Testing the getUserYNinput
	INVOKE getUserYNinput, addr dummyString, addr inputPrompts1
	print addr dummyString
	INVOKE getUserYNinput, addr dummyString, addr inputPrompts2
	print addr dummyString
	INVOKE getUserYNinput, addr dummyString, addr inputPrompts3
	print addr dummyString
	INVOKE getUserYNinput, addr dummyString, addr inputPrompts4
	print addr dummyString
	INVOKE getUserYNinput, addr dummyString, addr inputPrompts5
	print addr dummyString
	INVOKE getUserYNinput, addr dummyString, addr inputPrompts6
	print addr dummyString

	; Testing the roomNumberHex
	xor ecx, ecx

@@:

	INVOKE roomNumberHex, addr dummyString, ecx
	push ecx
	print addr dummyString
	pop ecx

	inc ecx
	cmp ecx, 17
	jne @B

	;mov eax, offset rooms
	;add eax, SIZEOF Room
	;INVOKE loadEvent, eax

	INVOKE ExitProcess, 0
main ENDP

END main