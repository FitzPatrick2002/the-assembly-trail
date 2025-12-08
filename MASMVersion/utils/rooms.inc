include utils.inc

Room STRUCT 
	info PBYTE ?							 ; Pointer to room info string
	hidingLocationCorrect PBYTE ?			 ; Pointer to correct hiding location
	hidingLocationWrong PBYTE ?				 ; Pointer to the wrong hiding location string
	eventsNumber DWORD ?					 ; Number of events stored in the room
	eventsList DWORD MAX_EVENTS dup(?)		 ; Array of function pointers to events associated with this specific room
	connections DWORD MAX_CONNECTIONS dup(?) ; Array of rooms idxs to which the room is connected to
Room ENDS

changeRoom PROTO, room : PTR Room ; (OK)
loadRoom PROTO, room : PTR Room   ; (OK)
loadEvent PROTO, room : PTR Room  ; (unfinished)

testChangeRoom PROTO 
testLoadRoom PROTO

dummyProc1 PROTO
dummyProc2 PROTO

EXTERNDEF rooms : Room 

.const
roomSize EQU SIZEOF Room ; Size of a single room is 34 bytes (22h)