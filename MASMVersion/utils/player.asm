
include masm32rt.inc
include player.inc
include utils.inc

.data
	; Initial values in the roomHidingLocations[] in Player struct
	roomHidingLocation0 BYTE "Behind the tall cabinets next to you.", 13, 10, 0
	roomHidingLocation1 BYTE "Near the main console, under the desk.", 13, 10, 0

	; printPlayerStatus procedure strings
	separationBar BYTE "# -------------------------- #", 13, 10, 0
	printPlayerStatus1 BYTE  "| Status:                    |", 13, 10, 0
	printPlayerStatus2 BYTE  "| Room: ", 0
	printPlayerStatus21 BYTE "                    |", 13, 10, 0
	printPlayerStatus3 BYTE  "| HP: ", 0
	printPlayerStatus31 BYTE "                      |", 13, 10, 0
	printPlayerStatus4 BYTE  "| Water: ", 0
	printPlayerStatus5 BYTE  " ", 0
	printPlayerStatus6 BYTE  "                  | ", 13, 10, 0
	printPlayerStatus7 BYTE  "| Chemfuel: ", 0
	printPlayerStatus71 BYTE " / ", 0
	printPlayerStatus72 BYTE "            |", 13, 10, 0

	; changeHP procedure strings
	changeHP1 BYTE "Your hp is changed by ", 0
	changeHP12 BYTE "!", 13, 10, 0

	; changeWater procedure strings
	changeWater1 BYTE "Your water storage is changed by ", 0
	changeWater12 BYTE "!", 13, 10, 0

	; changeChemfuel procedure strings
	changeChemfuel1 BYTE "Your chemfuel storage is changed by ", 0
	changeChemfuel12 BYTE "!", 13, 10, 0

	; Player definition
	player Player {0, \													       ; room number
				   <offset roomHidingLocation0, offset roomHidingLocation1>, \ ; room hiding location strings
			       5, 10, 0}												   ; hp, water, chemfuel


; # ------------- CODE ------------- # ;

.code

; # ------------------- printPlayerStatus PROC ------------------- # ;

printPlayerStatus PROC
	; Player status converted to strings
	LOCAL playerRoom[12] : BYTE
	LOCAL playerHp[12] : BYTE
	LOCAL playerWater[12] : BYTE
	LOCAL playerChemfuel[12] : BYTE

	; Status print
	print addr separationBar
	print addr printPlayerStatus1

	; Room print
	print addr printPlayerStatus2
	INVOKE roomNumberHex, addr playerRoom, player.roomNumber ; Convert the room idx to hexadecimal
	; INVOKE dwtoa, player.roomNumber, addr playerRoom
	print addr playerRoom
	print addr printPlayerStatus21

	; HP print
	print addr printPlayerStatus3
	INVOKE dwtoa, player.hp, addr playerHp 
	print addr playerHp
	print addr printPlayerStatus31

	; Water print
	print addr printPlayerStatus4
	INVOKE dwtoa, player.water, addr playerWater
	print addr playerWater

	cmp player.water, 10
	jz @F

	print addr printPlayerStatus5

@@:
	
	print addr printPlayerStatus6

	; Chemfuel print
	print addr printPlayerStatus7
	INVOKE dwtoa, player.chemfuel, addr playerChemfuel
	print addr playerChemfuel      ; Print chemfuel level
	print addr printPlayerStatus71 
	print addr CHEMFUEL_GOAL_STR   ; Show how mych chemfuel needs to be collected. (current value / CHEMFUEL_GOAL_STR)
	print addr printPlayerStatus72

	print addr separationBar

	ret
printPlayerStatus ENDP

; # ------------------- changeHP PROC ------------------- # ;

changeHP PROC USES eax, change : SDWORD
	LOCAL changeSTR[12] : BYTE
	
	; Print info
	print addr changeHP1

	; Print the signed change of hp
	INVOKE dwtoa, change, addr changeSTR
	print addr changeSTR
	print addr changeHP12

	; Modify the players HP by adding the change to current level of hp
	xor eax, eax
	mov eax, player.hp
	add eax, change
	mov player.hp, eax

	ret 
changeHP ENDP

; # ------------------- changeWater PROC ------------------- # ;

changeWater PROC USES eax, change : SDWORD
	LOCAL waterSTR[12] : BYTE

	; Convert the 8 bit signed value to 32 bit signed value
	print addr changeWater1

	; Print the signed change
	INVOKE dwtoa, change, addr waterSTR
	print addr waterSTR
	print addr changeWater12

	; Modify the players water by adding the change to players water level
	xor eax, eax
	mov eax, player.water
	add eax, change
	mov player.water, eax

	ret
changeWater ENDP

; # ------------------- changeChemfuel PROC ------------------- # ;

changeChemfuel PROC USES eax, change : SDWORD
	LOCAL strChemfuel[12] : BYTE

	print addr changeChemfuel1

	; Print the signed change of chemfuel
	INVOKE dwtoa, change, addr strChemfuel
	print addr strChemfuel
	print addr changeChemfuel12

	; Modify the players chemfuel by adding the change to current chemfuel level
	xor eax, eax
	mov eax, player.chemfuel
	add eax, change
	mov player.chemfuel, eax

	ret
changeChemfuel ENDP

; # ------------------- changeChemfuel PROC ------------------- # ;

; Tests whether player functions and struct are working fine
testPlayer PROC

	; For debugging purposes, load the players address into eax, 
	; because Im poor and cant learn how to view varaibles without knowing their address
	mov eax, offset player

	; Print intial values
	INVOKE printPlayerStatus

	xor eax, eax
	mov eax, -2

	; Change HP
	INVOKE changeHP, eax
	INVOKE printPlayerStatus
	mov eax, -2

	; Change Water
	INVOKE changeWater, eax
	INVOKE printPlayerStatus
	mov eax, -2

	; Change Chemfuel
	INVOKE changeChemfuel, eax
	INVOKE printPlayerStatus
	mov eax, -2

testPlayer ENDP

END