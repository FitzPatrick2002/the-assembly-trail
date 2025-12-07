
EXTERNDEF MAX_ROOMS_STR : BYTE
EXTERNDEF MAX_CONNECTIONS_STR : BYTE
EXTERNDEF MAX_EVENTS_STR : BYTE
EXTERNDEF CHEMFUEL_GOAL_STR : BYTE

; Checks if given value is present in the array
checkIfInArray PROTO value : DWORD, arr : PTR DWORD, len : DWORD

; Flsuhes the input buffer.
; If user gave some letters on the input and only first few bytes were consumed
; the leftovers may be discarded with this procedure
;flushInputBuffer PROTO


.const 
MAX_ROOMS EQU 11 
MAX_CONNECTIONS EQU 5
MAX_EVENTS EQU 4
CHEMFUEL_GOAL EQU 5