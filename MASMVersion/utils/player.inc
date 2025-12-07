
; Knonw Errors:
; After using the testPlyer in main.asm in VS
; We get info that the source of this module is unknown

Player STRUCT
	roomNumber SDWORD ?
	roomHidingLocations PBYTE 2 dup(?) ; Pointers to const char*
	
	hp SDWORD ?
	water SDWORD ?
	chemfuel SDWORD ?
Player ENDS

printPlayerStatus PROTO 
changeHP PROTO, change : SDWORD
changeWater PROTO, change : SDWORD
changeChemfuel PROTO, change : SDWORD
testPlayer PROTO

; # ------------------ EXTERNAL VARIABLES ------------------ # ;

EXTERNDEF player : Player