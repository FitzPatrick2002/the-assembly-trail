; This file stores the declarations of all event procedures

; Events procedures

medbayAsh PROTO
jonesyJumpscare PROTO
alienHide PROTO
galleyWater PROTO
motherPanel PROTO
alienFire PROTO
nothingHappens PROTO
motherWater PROTO
podsFoundChemfuel PROTO
WCHiddenPassage PROTO
bridgeConsole PROTO
playerAttacked PROTO
thirst PROTO
strangePassage PROTO
foundItem PROTO
blankEvent PROTO
medbayGlass PROTO
start PROTO

foundWater PROTO
foundChemfuel PROTO
tooHot PROTO
openingMenu PROTO
winningScreen PROTO
gameoverScreen PROTO

; Utility procedures

isSingleTimeEventProc PROTO eventPtr : DWORD

; @brief Table which stores pointers to procedures, which are regarded as single time events.
EXTERNDEF singleTimeEventsTab : DWORD