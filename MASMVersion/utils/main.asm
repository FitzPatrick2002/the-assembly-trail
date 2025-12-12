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
	LOCAL timeStamp : DWORD

	; Testing the mainLoop

	INVOKE mainLoop

	;alienFire PROTO
	;nothingHappens PROTO
	;motherWater PROTO
	;podsFoundChemfuel PROTO
	;WCHiddenPassage PROTO
	;bridgeConsole PROTO
	;playerAttacked PROTO

	; Testing the isSIngleTimeEvent
	; singleTimeEventsTab DWORD OFFSET foundWater, OFFSET foundChemfuel, OFFSET bridgeConsole, OFFSET WCHiddenPassage, OFFSET medbayAsh, OFFSET motherPanel, OFFSET motherWater, OFFSET galleyWater, OFFSET podsFoundChemfuel
	;mov eax, LENGTHOF singleTimeEventsTab
	;INVOKE isSingleTimeEventProc, OFFSET foundWater

	; # --------------------------------------- # ;

	; Test the time stamp

	; Store the ticks count
	INVOKE GetTickCount
	mov timeStamp, eax

	; Dummy input so that some time passes
	INVOKE StdIn, addr currentRoomStr, 4

	; Check the condition
	INVOKE fitTimeframe, timeStamp, 5000

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