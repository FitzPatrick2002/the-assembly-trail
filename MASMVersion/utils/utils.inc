
; # --------------- Strings --------------- # ;

; Game constants as strings
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

; --------------- Utility Procedures --------------- # ;

; @brief Compares elements of an array of DWORDs.
; @param value : DWORD Value which will be compared with array elements.
; @param arr : PTR DWORD Pointer to the beginning of the array.
; @param arrLength : DWORD Length of the array.
; @returns eax = 1 - value found in the array, eax = 0 - if not.
checkIfInArray PROTO value : DWORD, arr : PTR DWORD, len : DWORD

; @brief Converts a DWORD value into an ASCII character representing a hex number in range 0-F.
;		 In case provided value is < 0 or > 15, character # will be placed in the destination buffer.
; @param destBuf : PTR BYTE Pointer to location where result character will be stored.
; @param value : DWORD Value that will be converted to hex, should be in range 0-15.
roomNumberHex PROTO destBuf : PTR BYTE, value : DWORD

; @brief Prompts user for input. 
;		 Takes only the first letter of the input.
; @param destBuf Destination buffer, the first letter of user input will be put at the neginning of it.
; @param message Pointer to string which will be printed before user is prompted for input.
; @returns None.
getUserYNinput PROTO destBuf : PTR BYTE, message : PTR BYTE

; @brief Compares two strings if they are equal.
; @param str1 Pointer to the first string.
; @param str2 Pointer to the second string.
; @returns eax = 1 if strings are equal, eax = 0 if strings are different.
charCompare PROTO srcBuffer : PTR BYTE, destBuffer : PTR BYTE


; @brief Reads input of specified length from the console into the destination and prints a specified message.
; @param destBuffer Pointer to buffer where the console input will be saved.
; @param bufferLength Specifies how many bytes will be read from the stdin.
; @param message A message that will be printed before user is prompted for input.
; @returns None
getUserInputString PROTO destBuffer : PTR BYTE, bufferLength : DWORD, message : PTR BYTE

; @brief Compares the number of milliseconds which elapsed since system startup to 
;		the given timeStamp. If the differrnce is > than specified threshold it returns 0 
;		through eax and 1 if it is < than the threshold.
; @param timeStamp Time stamp which will be subtracted from the current reading of time.
; @param milisecThreshold Maximal value of difference between timeStamp and current reading of time
;		 expressed in milliseconds.
fitTimeframe PROTO startTime : DWORD, seconds : DWORD

; # -------------------------- CONST -------------------------- # ;

.const 

; Game constants in numerical form.
MAX_ROOMS EQU 11 
MAX_CONNECTIONS EQU 5
MAX_EVENTS EQU 4
CHEMFUEL_GOAL EQU 5