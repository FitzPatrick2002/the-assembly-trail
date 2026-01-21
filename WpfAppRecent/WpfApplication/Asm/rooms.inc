include utils.inc

; @breif Room structure stores information about a single room.
;		 It holds info about the room, list of events and connections to other rooms.
Room STRUCT 
	info PBYTE ?							 ; Pointer to room info string CHANGED -> pbyte -> dword
	hidingLocationCorrect DWORD ?			 ; Pointer to correct hiding location
	hidingLocationWrong DWORD ?				 ; Pointer to the wrong hiding location string CHANGED -> pbyte -> dword
	eventsNumber DWORD ?					 ; Number of events stored in the room
	eventsList DWORD MAX_EVENTS dup(?)		 ; Array of function pointers to events associated with this specific room
	connections DWORD MAX_CONNECTIONS dup(?) ; Array of rooms idxs to which the room is connected to
Room ENDS

; @brief Handles the mechanic of changing the room, occupied by the player.
;		 1. Prompt user for single value input (room number).
;		 2. Validate the input. If provided room number is illegal, prompt player again.
;		 3. Print the final choice and change the room occupied by the player in the player struct.
; @param room Pointer to room occupied by the player.
; @return None
changeRoom PROTO, room : PTR Room 

; @brief Prints the information about the room and possible passages to other rooms.
; @param room Pointer to the room which will be referenced in the procedure.
; @returns None
loadRoom PROTO, room : PTR Room  

; @brief Randomly chooses event from the events list of the room.
;		 Event is a pointer to particular event procedure which is then invoked.
; @param room Pointer to room occupied by the player.
; @return None
loadEvent PROTO, room : PTR Room  ; (in testing (the null insertion))

; Test procedures
testChangeRoom PROTO 
testLoadRoom PROTO

; @brief Array which holds all instances of Rooms. 
;		 Holds 11 rooms in total. Memory is not aligned in any special way.
EXTERNDEF rooms : Room 
