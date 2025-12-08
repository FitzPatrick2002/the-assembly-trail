
; Game constants
EXTERNDEF MAX_ROOMS_STR : BYTE       ; Maximal number of rooms on the map. (Its actually the total number of rooms on the map).
EXTERNDEF MAX_CONNECTIONS_STR : BYTE ; Maximal number of connections a room can have to other rooms.
EXTERNDEF MAX_EVENTS_STR : BYTE		 ; Maximal number of events that can happen in a room.
EXTERNDEF CHEMFUEL_GOAL_STR : BYTE   ; How much chemfuel must be collected by the player to win the game.

; Set of prompts that can be passed to getUserYNinput
EXTERNDEF inputPrompts1 : BYTE
EXTERNDEF inputPrompts2 : BYTE
EXTERNDEF inputPrompts3 : BYTE
EXTERNDEF inputPrompts4 : BYTE
EXTERNDEF inputPrompts5 : BYTE
EXTERNDEF inputPrompts6 : BYTE

; Checks if given value is present in the array
checkIfInArray PROTO value : DWORD, arr : PTR DWORD, len : DWORD
roomNumberHex PROTO destBuf : PTR BYTE, value : DWORD
getUserYNinput PROTO destBuf : PTR BYTE, message : PTR BYTE
charCompare PROTO srcBuffer : PTR BYTE, destBuffer : PTR BYTE
getUserInputString PROTO destBuffer : PTR BYTE, bufferLength : DWORD, message : PTR BYTE

; Flsuhes the input buffer.
; If user gave some letters on the input and only first few bytes were consumed
; the leftovers may be discarded with this procedure
;flushInputBuffer PROTO

; # -------------------------- CONST -------------------------- # ;

.const 
MAX_ROOMS EQU 11 
MAX_CONNECTIONS EQU 5
MAX_EVENTS EQU 4
CHEMFUEL_GOAL EQU 5