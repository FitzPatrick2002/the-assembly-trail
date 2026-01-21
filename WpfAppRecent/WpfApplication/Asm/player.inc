
; Knonw Errors:
; After using the testPlyer in main.asm in VS
; We get info that the source of this module is unknown

; PBYTE TYPEDEF PTR BYTE ; For now define it like this

Player STRUCT 
	roomNumber SDWORD ?				   ; Idx of the room which is occupied by the player.
	roomHidingLocations DWORD 2 dup(?) ; Pointers to strings which tell about hiding locations in the occupied room. ; DWORD -> PBYTE (changed)
	
	hp SDWORD ?						   ; Player health points.
	water SDWORD ?					   ; PLayer water level.
	chemfuel SDWORD ?				   ; Amount of chemical fuel collected by the player.
Player ENDS

; @brief Prints the current player status.
;		 Hp, Occupied room, water level and chemfuel
; @return None
printPlayerStatus PROTO 

; @brief Adds the change to current player hp.
;		 In order to decresse the hp, set change = negative number.
; @param change Change in hp.
; @return None
changeHP PROTO, change : SDWORD

; @brief Adds the change to current player water level.
;		 In order to decresse the water level, set change = negative number.
; @param change Change in water.
; @return None
changeWater PROTO, change : SDWORD

; @brief Adds the change to current player chemfuel units.
;		 In order to decresse the chemfuel units, set change = negative number.
; @param change Change in chemfuel.
; @return None
changeChemfuel PROTO, change : SDWORD

; @brief A test function 
testPlayer PROTO

; # ------------------ EXTERNAL VARIABLES ------------------ # ;

; @brief Global instance of player. 
;		 There is only one player.
EXTERNDEF player : Player