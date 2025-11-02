include \masm32\include\masm32rt.inc

.data
msgAsh db "Loud ass Ash!", 13, 10, 0
msgJonesyJumpscare db "You open the cabinet and then MEOW!", 13, 10, 0
msgAlienHide db "You must hide!", 13, 10, 0
msgGalleyWater db "You've found some water", 13, 10, 0
msgMotherPanel db "Something about checking the panel and then wanting to either look at vents or at the escape pods status, add temperature for vibes", 13, 10, 0
msgAlienFire db "Type in quickly fire to fire at the ALIEN", 13, 10, 0
msgNothingHappens1 db "Nothing happens.", 13, 10, 0
msgNothingHappens2 db "You lose hp due to boredom.", 13, 10, 0
msgMotherWater db "err.NULL>err.placeholder(0)", 13, 10, 0
msgPodsFoundChemfuel db "one of the pods had chemfuel left", 13, 10, 0
msgWCHiddenPassage db "You opened up the stall door and you saw a broken crate leading up to something go through? y/n", 13, 10, 0
msgBridgeConsole1 db "As you look around the Bridge you notice a dim blinking light on one of the distant consoles.", 13, 10, 0
msgBridgeConsole2 db "You have never used it before, it was never your responsibility.", 13, 10, 0
msgBridgeConsole3 db "Check it out?", 13, 10, 0
msgBridgeConsole4 db "Careful not to make any noise, you approach the console.", 13, 10, 0
msgBridgeConsole5 db "The blinking light appears to be an indicator...But of what?\nIt highlights the MEDLAB.", 13, 10, 0
msgBridgeConsole6 db "There's a button not covered by dust on the keyboard.", 13, 10, 0
msgBridgeConsole7 db "Do you press it? Think it over.", 13, 10, 0
msgBridgeConsole8 db "You leave this suspicious light be as suspicious as it needs to be.", 13, 10, 0
msgBridgeConsole9 db "You look around and see that there are lights on other consoles.", 13, 10, 0
msgBridgeConsole10 db "This one is blinking, but it is of none of your concerns.", 13, 10, 0
msgBridgeConsole11 db "You order yourself to snap out of it.", 13, 10, 0
msgBridgeConsole12 db "You have more pressing issues than this after all.", 13, 10, 0
msgBridgeConsole13 db "You press the button and then a wave of dust covers you.", 13, 10, 0
msgBridgeConsole14 db "A cabinet under the console suddenly opens up just a bit.", 13, 10, 0
msgBridgeConsole15 db "Inside you find 2 litres of CHEMFUEL.", 13, 10, 0
msgBridgeConsole16 db "It must have been Dallas... Did he want to leave?", 13, 10, 0
msgBridgeConsole17 db "Too scared for your own good you leave this console be.", 13, 10, 0
msgBridgeConsole18 db "What did that button do?", 13, 10, 0
msgBridgeConsole19 db "Who must have recently pressed it?", 13, 10, 0
msgBridgeConsole20 db "Now you will never know.", 13, 10, 0
msgBridgeConsole21 db "You were so confused you pressed all the buttons on the keyboard.", 13, 10, 0
msgBridgeConsole22 db "A wave of thick dust covers you and your fingers.", 13, 10, 0
msgBridgeConsole23 db "You jump in fright as all the cabinets around you burst open!\nOne of the cabinets hits you in the back of your head.\nYou kneel and hide your head in your hands.\nAs you come to your senses, you see 2 litres of CHEMFUEL in a cabinet across you.", 13, 10, 0
msgBridgeConsole24 db "One of the cabinets hits you in the back of your head.", 13, 10, 0
msgBridgeConsole25 db "You kneel and hide your head in your hands.", 13, 10, 0
msgBridgeConsole26 db "As you come to your senses, you see 2 litres of CHEMFUEL in a cabinet across you.", 13, 10, 0
msgPlayerAttacked1 db "You're being attacked by the Alien!", 13, 10, 0
msgPlayerAttacked2 db "Duck?", 13, 10, 0
msgPlayerAttacked3 db "Alien jumps at you and flies over your head as you stand still, you manage to flee.", 13, 10, 0
msgPlayerAttacked4 db "You lunge but alien manages to snatch you. After some rummaging on the floor you manage to run away", 13, 10, 0
msgThirst1 db "You're thirsty", 13, 10, 0
msgThirst2 db "Take a sip?", 13, 10, 0
msgThirst3 db "Water is delightful.", 13, 10, 0
msgThirst4 db "Your throat is sore with thirst.", 13, 10, 0
msgStrangePassage1 db "One of the walls seems fishy to you. Check it out?", 13, 10, 0
msgStrangePassage2 db "Your swift fingers run across the bumps on the wall but you cannot sense any sensible pattern", 13, 10, 0
msgStrangePassage3 db "You decide not to entice the fate this time and leave the wall alone.", 13, 10, 0
msgStrangePassage4 db "You stare at the wall and the wall stares at you.\nIt takes so much time you get hurt by the hunger.", 13, 10, 0
msgFoundItem1 db "There are human remains lying on the floor.\nCorpse is old and dried, clothes are are already gone, only bones and steel of the armour withstood the trial of time.", 13, 10, 0
msgFoundItem2 db "Search it?", 13, 10, 0
msgFoundItem3 db "Under the corpse you discover the item you've been seeking", 13, 10, 0
msgFoundItem4 db "You search the corpse but cannot find anything.", 13, 10, 0
msgFoundItem5 db "Yo mama's fat, ya' know?", 13, 10, 0
msgBlankEvent1 db "This is a blank event", 13, 10, 0
msgBlankEvent2 db "It is a single time event, should not appear more than once.", 13, 10, 0
msgBlankEvent3 db "Nothing in here", 13, 10, 0
msgMedbayGlass1 db "Since the MEDBAY is so well equipped,", 13, 10, 0
msgMedbayGlass2 db "you think about heading towards the observation pod, hoping to find some WATER or CHEMFUEL.", 13, 10, 0
msgMedbayGlass3 db "But the glass on the floor...", 13, 10, 0
msgMedbayGlass4 db "The last thing you'd want is to slip and bleed here.", 13, 10, 0
msgMedbayGlass5 db "Do you want to proceed? Prepare to be quick.", 13, 10, 0
msgMedbayGlass6 db "Deciding to move forward. Write <alertly> quick!", 13, 10, 0
msgMedbayGlass7 db "Deciding to move forward. Write <closely> quick!", 13, 10, 0
msgMedbayGlass8 db "You somehow managed to get across the room safely.", 13, 10, 0
msgMedbayGlass9 db "To the rhythm of your pouding chest you open each cabinet around you.", 13, 10, 0
msgMedbayGlass10 db "You find CHEMFUEL and WATER.", 13, 10, 0
msgMedbayGlass11 db "Your walk starts out promising, but you fail to realise one crucial fact.", 13, 10, 0
msgMedbayGlass12 db "These broken vials had liquids in them.", 13, 10, 0
msgMedbayGlass13 db "You slip and the shards dig into your skin.", 13, 10, 0
msgMedbayGlass14 db "You manage to retreat relatively undamaged.", 13, 10, 0
msgMedbayGlass15 db "This idea seems to risky to execute at this moment. This the thought that flashes your mind.", 13, 10, 0
msgMedbayGlass16 db "You turn back and check the exit of the area...", 13, 10, 0
msgMedbayGlass17 db "No movements, good sign.", 13, 10, 0
msgMedbayGlass18 db "What if I slip? It will come, it will come to me those thoughts are racing through your mind.", 13, 10, 0
msgMedbayGlass19 db "You nervously look around the room", 13, 10, 0
msgMedbayGlass20 db "and even though you saw that Lambert killed Ash, his corpse still surprised you right now.", 13, 10, 0
msgMedbayGlass21 db "You should be going. Your mind is not stable.", 13, 10, 0
msgMedbayGlass22 db "Not enough for this.", 13, 10, 0
cmdAlertly db "alertly", 0
cmdClosely db "closely", 0

hp dd 5 
water db 10
chemfuel db 0
roomNumber db 0
isSingleTimeEvent db 1, 1, 1, 1,  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
buffer db 100 dup(0)
userInput db 100 dup(0)


.code
;Event medbayAsh
medbayAsh proc
    print addr msgAsh
    ret
medbayAsh endp

;Event jonesyJumpscare
jonesyJumpscare proc
    print addr msgJonesyJumpscare
    ret
jonesyJumpscare endp

;Event alienHide
alienHide proc
    print addr msgAlienHide
    ret
alienHide endp

;Event galleyWater
galleyWater proc
    print addr msgGalleyWater
    ret
galleyWater endp

;Event motherPanel
motherPanel proc
    print addr msgMotherPanel
    ret
motherPanel endp

;Event alienFire
alienFire proc
    print addr msgAlienFire
    ret
alienFire endp

;Event nothingHappens
nothingHappens proc
    print addr msgNothingHappens1
    print addr msgNothingHappens2
    mov eax, hp
    sub eax, 1
    mov hp, eax  
;    print str$(hp)   
;    print chr$(13,10)
    ret
nothingHappens endp


;Event motherWater
motherWater proc
mov esi, offset isSingleTimeEvent
mov al, [esi+5]
cmp al, 1
je isAllowed
ret

isAllowed:
    mov byte ptr [esi+5], 0  
    print addr msgMotherWater
    ret

motherWater endp

;Event podsFoundChemfuel
podsFoundChemfuel proc
mov esi, offset isSingleTimeEvent
mov al, [esi+7]
cmp al, 1
je isAllowed
ret

isAllowed:
    mov byte ptr [esi+5], 0  
    print addr msgPodsFoundChemfuel
    ret

podsFoundChemfuel endp

;Event WCHiddenPassage
WCHiddenPassage proc
mov esi, offset isSingleTimeEvent
mov al, [esi+8]
cmp al, 1
je isAllowed
ret

isAllowed:
    mov byte ptr [esi+5], 0  
    print addr msgWCHiddenPassage
    ret

WCHiddenPassage endp


;Event bridgeConsole
bridgeConsole proc
mov esi, offset isSingleTimeEvent
mov al, [esi+10]
cmp al, 1
je isAllowed
ret

isAllowed:
    mov byte ptr [esi+10], 0  
    print addr msgBridgeConsole1
    print addr msgBridgeConsole2
    print addr msgBridgeConsole3
    
    mov edx, offset buffer
    mov ecx, sizeof buffer
    invoke StdIn, edx, ecx
    
    mov esi, offset buffer
    movzx eax, byte ptr [esi]   
        
    mov buffer, al  
    cmp al, 'y'
    je choice1Y
    cmp al, 'Y'
    je choice1Y 
    cmp al, 'n'
    je choice1N
    cmp al, 'N'
    je choice1N
    jmp choice1None

choice1Y:
    print addr msgBridgeConsole4
    print addr msgBridgeConsole5
    print addr msgBridgeConsole6
    print addr msgBridgeConsole7


    mov edx, offset buffer
    mov ecx, sizeof buffer
    invoke StdIn, edx, ecx
    
    mov esi, offset buffer
    movzx eax, byte ptr [esi] 

  
    mov buffer, al 
    cmp al, 'y'
    je choice2Y
    cmp al, 'Y'
    je choice2Y 
    cmp al, 'n'
    je choice2N
    cmp al, 'N'
    je choice2N
    jmp choice2None

    
choice1N:
    print addr msgBridgeConsole8
    ret
    
choice1None:
    print addr msgBridgeConsole9
    print addr msgBridgeConsole10
    print addr msgBridgeConsole11
    print addr msgBridgeConsole12
    ret  
    
choice2Y:
    print addr msgBridgeConsole13
    print addr msgBridgeConsole14
    print addr msgBridgeConsole15
    print addr msgBridgeConsole16
    mov al, chemfuel
    add al, 2
    mov chemfuel, al
    ret
    
choice2N:
    print addr msgBridgeConsole17
    print addr msgBridgeConsole18
    print addr msgBridgeConsole19
    print addr msgBridgeConsole20
    ret  
     
choice2None:
    print addr msgBridgeConsole21
    print addr msgBridgeConsole22
    print addr msgBridgeConsole23
    print addr msgBridgeConsole24
    print addr msgBridgeConsole25
    print addr msgBridgeConsole26  
    mov al, chemfuel
    add al, 2
    mov chemfuel, al  
    
    mov eax, hp
    sub eax, 1
    mov hp, eax  
    ret 

bridgeConsole endp


;Event playerAttacked
playerAttacked proc

    print addr msgPlayerAttacked1
    print addr msgPlayerAttacked2
    
    mov edx, offset buffer
    mov ecx, sizeof buffer
    invoke StdIn, edx, ecx
    
    mov esi, offset buffer
    movzx eax, byte ptr [esi] 

  
    mov buffer, al 
    cmp al, 'n'
    je choice1N
    cmp al, 'N'
    je choice1N
    jmp choice1None

choice1N:
    print addr msgPlayerAttacked3
    
    ret
    
choice1None:
    print addr msgPlayerAttacked4
    mov eax, hp
    sub eax, 2
    mov hp, eax  
    ret  

playerAttacked endp

;Event thirst
thirst proc

    print addr msgThirst1
    print addr msgThirst2
    
    mov edx, offset buffer
    mov ecx, sizeof buffer
    invoke StdIn, edx, ecx
    
    mov esi, offset buffer
    movzx eax, byte ptr [esi] 

  
    mov buffer, al 
    cmp al, 'y'
    je choice1Y
    cmp al, 'Y'
    je choice1Y
    jmp choice1None

choice1Y:
    print addr msgThirst3
    mov al, water
    sub al, 1
    mov water, al 
    ret
    
choice1None:
    print addr msgThirst4
    mov eax, hp
    sub eax, 1
    mov hp, eax  
    ret  

thirst endp


;Event strangePassage
strangePassage proc

    print addr msgStrangePassage1
    
    mov edx, offset buffer
    mov ecx, sizeof buffer
    invoke StdIn, edx, ecx
    
    mov esi, offset buffer
    movzx eax, byte ptr [esi] 

  
    mov buffer, al 
    cmp al, 'y'
    je choice1Y
    cmp al, 'Y'
    je choice1Y
    cmp al, 'n'
    je choice1N
    cmp al, 'N'
    je choice1N    
    jmp choice1None

choice1Y:
    print addr msgStrangePassage2
    ret
    
choice1N:
    print addr msgStrangePassage3
    ret   
choice1None:
    print addr msgStrangePassage4
    mov eax, hp
    sub eax, 1
    mov hp, eax  
    ret  

strangePassage endp


;Event foundItem
foundItem proc

    print addr msgFoundItem1
    print addr msgFoundItem2
    
    mov edx, offset buffer
    mov ecx, sizeof buffer
    invoke StdIn, edx, ecx
    
    mov esi, offset buffer
    movzx eax, byte ptr [esi] 

  
    mov buffer, al 
    cmp al, 'a'
    jl checkY           
    cmp al, 'n'
    jg checkY 
    
    print addr msgFoundItem3
    mov al, chemfuel
    add al, 1
    mov chemfuel, al 
    ret
checkY:
    cmp al, 'y'
    je foundNothing
    cmp al, 'Y'
    je foundNothing
    
    print addr msgFoundItem5
    ret
      
foundNothing:
    print addr msgFoundItem4
    ret  

foundItem endp

;Event blankEvent
blankEvent proc
    mov esi, offset isSingleTimeEvent
    mov al, [esi+16]
    cmp al, 1
    je isAllowed
    ret

isAllowed:
    mov byte ptr [esi+10], 0  
    print addr msgBlankEvent1
    print addr msgBlankEvent2
    
    mov edx, offset buffer
    mov ecx, sizeof buffer
    invoke StdIn, edx, ecx
    
    mov esi, offset buffer
    movzx eax, byte ptr [esi] 

  
    mov buffer, al 
    cmp al, 'y'
    je choice1Y
    cmp al, 'Y'
    je choice1Y  
    jmp choice1None

choice1Y:
    print addr msgBlankEvent3
    mov al, chemfuel
    add al, 2
    mov chemfuel, al 
    ret
      
choice1None:
    ret  

blankEvent endp

;Event medbayGlass
medbayGlass proc
    mov esi, offset isSingleTimeEvent
    mov al, [esi]
    cmp al, 1
    je isAllowed
    ret
    
isAllowed:
    print addr msgMedbayGlass1
    print addr msgMedbayGlass2
    print addr msgMedbayGlass3
    print addr msgMedbayGlass4
    print addr msgMedbayGlass5
    
    mov edx, offset buffer
    mov ecx, sizeof buffer
    invoke StdIn, edx, ecx
    
    mov esi, offset buffer
    movzx eax, byte ptr [esi] 
  
    cmp al, 'y'
    je choice1Y
    cmp al, 'Y'
    je choice1Y  
    cmp al, 'n'
    je choice1N
    cmp al, 'N'
    je choice1N    
    jmp choice1None
    
choice1Y:
    invoke GetTickCount
    invoke nseed, eax
    invoke nrandom, 2
    cmp eax, 0
    je showMsg1
    jmp showMsg2  ; Краще використати jmp замість cmp eax, 1
   
showMsg1:
    print addr msgMedbayGlass6
    

    mov edi, offset buffer
    mov ecx, 100
    xor al, al
    rep stosb
    

    mov edx, offset buffer
    mov ecx, sizeof buffer
    invoke StdIn, edx, ecx
    invoke StripLF, addr buffer
    

    invoke szCmp, addr buffer, addr cmdAlertly
    cmp eax, 0  
    je doFailure
    jmp doSuccess
    
showMsg2:
    print addr msgMedbayGlass7
    

    mov edi, offset buffer
    mov ecx, 100
    xor al, al
    rep stosb
    

    mov edx, offset buffer
    mov ecx, sizeof buffer
    invoke StdIn, edx, ecx
    invoke StripLF, addr buffer
    
        invoke szCmp, addr buffer, addr cmdClosely
    cmp eax, 0  
    je doFailure
    jmp doSuccess
    
doSuccess:
    print addr msgMedbayGlass8
    print addr msgMedbayGlass9
    print addr msgMedbayGlass10
    
    mov al, chemfuel
    add al, 2
    mov chemfuel, al 
    
    mov al, water
    add al, 1
    mov water, al 
    
    ; Відмічаємо подію як виконану
    mov esi, offset isSingleTimeEvent
    mov byte ptr [esi], 0 
    ret
    
doFailure:  
    print addr msgMedbayGlass11
    print addr msgMedbayGlass12
    print addr msgMedbayGlass13
    print addr msgMedbayGlass14
    
    mov eax, hp
    sub eax, 1
    mov hp, eax  
    ret
  
choice1N:
    print addr msgMedbayGlass15
    print addr msgMedbayGlass16
    print addr msgMedbayGlass17
    ret
         
choice1None:
    print addr msgMedbayGlass18
    print addr msgMedbayGlass19
    print addr msgMedbayGlass20
    print addr msgMedbayGlass21
    print addr msgMedbayGlass22
    ret  
    
medbayGlass endp



;Main loop (debug) (Fun fact. It is also called "Game loop". ...! Well... I will proceed with my pudding machine then)
;Compile with:
;ml /c /coff test.asm
;link /SUBSYSTEM:CONSOLE test.obj
;test.exe
;(you can change test with custom name)

start:
    ;call medbayAsh
    ;call jonesyJumpscare
    ;call alienHide
    ;call galleyWater
    ;call motherPanel
    ;call alienFire
    ;call nothingHappens
    ;call motherWater
    ;call podsFoundChemfuel
    ;call WCHiddenPassage
    ;call bridgeConsole
    ;call playerAttacked
    ;call thirst
    ;call strangePassage
    ;call foundItem
    ;call blankEvent
    call medbayGlass
    exit
end start









;%%*++#@@@#*#%%###%#*+*####*++++--++=-*+-::--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;##%#*#@%###%##*+*%%###%####****==+*+-++**+*=-=:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;####*#%*++*%@@*+*##+++**++*##*+*#**+=**=-+-:+=:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;*+##***++#%%##*+###*++**+++##******++::=+-:++=:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;+++*#*+++#%*+*##+*##*+###++#+=+*+*#*=-++*::#*+:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;**#%%#+*#%%*++**+++%%%#**##***++-=###++**==+++:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;%@#**+*#%@@%#*%#++*%#+=+#%#*##**+=++=++++**=-::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;****+++*%*++#@%###%#**++%@#+****##*#*-*#*++:+-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;*=++##+*%*++*@%%%@%+==*%%#*==+***####**#*++++::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;++***+*#%%#**%+==*@#*+##++*+#%##%###%####*=**=:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;#####++*%%%%%#++#@%#**%#+++***+#%#+*#*+*+=+**+:::..::--==+++++++****########**++=::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;+*######**#%##**%%#*+***+**===+###*#%*+**++:==:..::-=+++****++***+++*###%%%%%%#####*+-:::..::::::::::::::::::::::::::::::::::::::::::::::::::::::::==
;####%%#%%##%##%%%%###******=++**+**++##*#*=:--:=++++++*###*+**++++*#%%%%%%%%%%%%%%%%%%%##*=:::::::::::::::::::::::::::::::::::::::::::::::::::::-=+**
;%*+*###%#**%%%%%%**%%%##*+++**+*****+#+=+-.====++==++***+======+*###%####%%%%%%%%%%%%%%%%%%%#+-:.::....................:::::::::::::::::::::::-+++*#*
;####***#%##%%%%%%######%#++++%**#%####*=--===++==+*****+===-+*#%%%%###%%%%%%%%%##%%%%%%%%%@@@%%*==-:.....................................::::-+**###*
;*#%%%%%%%%%%%%%%####%***++***%*+*#**#+=+++=++===++*++=====+**#######%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#*+=:....................................::=+##*%%*
;@%%%@@%%###%%%%%%%%%%#**+++++%%#*+===-===-+=--=++=+=====+***#######%#####%%%%%##%%%%%%%%%%%%%%%@@@%%%#+:..................................:-+***+--++
;%**#%%%%%%%%%%%%#%%%%##**%%%###%#**+=-====--===+++=---++******#*****###%%%####%%%@%#####%%%%%%%%%@@@%%%#+.................................--=+=---+*-
;@**##%%%%%%%%%%%%%%##**##%%#%%%##******+---+***++==::::==+*****+**######*####%%%#***##%%%%%%%%%%%%%%%%%%%#+-:...........................:=++++*#*++*-
;@+*##%@%%%%%%%#%%%%%%##*#%#%%#%%####*+=++*#+=====++====+*#*++++***+**###%#**###+=*######%%%%%%@@@%@%%%%%%%%%#++-......................:++*#*+**--=**=
;@+*##%%%%%%%%%%%%%%%########%%#%###*####**+++*****#**++****###*++++***+++*##%#*+++***##%%%%%%%%%%%%%%%%%%%%%%#**=:...................:==+##+*%*=+*+=+
;%*+##%%%%%%%%%%%%%%####%####%%@%###%%#++++=+***+**##***####%###*+====-=+*####+++***#%%%%%%%%%%%%%%%%%%%%@@%%%%%#*=...................-==####**+-+**==
;#*+####*#%%%%%@@%%##%%%%%##%%%%%####**********++++#####%%%%##***++++=+++***+=+**##%%%%%%%%%%%%%%%%%%%%%@@@@%%%%##+-...............:--+*+*%###*++####*
;#+=#####%@%%%%%%%%%%%%#*##%%%%%##%#*#####*==+++=+*#####%###********++++++===+*###%%%%%%%%%%%%%%%%%%%%##%@@%%%%%%#*=........::------=+*+=*##%##++*++#=
;#*+**###@%%%@%%%%%#**%%%%##@%%%%%%####%#*****+++***+++**+++++++++=====---===+***###%%%%%%%%%%%%####****#%@@@@%%%#*=-.....-=++*****++++*#%###%#++##**=
;#+-*%%###%%%%@%%%%#*##*#@**%%%%%%###%%##*#****##**+==++=-==++++=:::-======+++**##%%#%##########****++++*#%@@@@%%##+==--==-=+=++####*+=++***###++**##+
;#*=*##%%%#%##%%#%%#*####*###%%%%##%%%%####*####*++==++===+===-:.:--=+***********########********++++++++*#%@@%%%%#*++++*++===++=+*+++***####****+***+
;#*=**##*#@@%%##%%%**%%%%*###@%%##%%%%%%%######**++++++++=-:..---==++**++=++**************++++++++++++++++*%@@@%%%#++*****+===+++**++*######***+****+*
;%#=**####%##@@%%###*##%*#@%@@%%*#%%%%%%%%%%%%##******+=-......-+++++***++++********+++++++++++++++++++++++#%@@%%#*****##+-+++==##****+*********##****
;%#=#*##%%%#%%%#%%#*=*%%#**#@@%#*#%%%%%%%%%%%%%%%%##*=-:........:+*************++++++++=============+++++++*%%%%#*##*####*+=++==+##*####%#*###*%#+****
;%#+####+#%%@@%%@%#*###%**#%@@%#*#%%%%%%%%%%%%%%%%%#+=::..........:-+++***++++=========================+++++#%%*++******##++*++++*+=*%%%#%####+=******
;#**#####@@##@##%###++%%#%##%%%#*###%%%%%%@%@@@%%%#*+=-...................::::::::::----=================+++###+++#######%***+*********###*###**##**##
;##*##*##%%%#%%%%%%#+*%**%##%%%#**#*#%%@@@@@@@%%%%#*+-.............................:::----==============++++**#**#%####*#%***********###%%%%##########
;#*+#**#%##%##%%#%%#**###*#%%@@%####%%%@@%%@%%%%%#*=:...............................:::----===========++****+=++++==---+*+===+**+++****+*#####*****#**
;##+*#%@%%%%%%%##%#*+#%%%##%@@@%##%%%%@@%%@@%%%%#*+:.....................::::::---------===========++*##%%%%#*=--*++**==+++*+***++=+=====***###***##**
;##=####*#%%#%%#%###*###*#@@@@@%*#%%%%@@@%%#%%%##*=................::-==++******###****+++=====+++**##%%%%%%##++-+++**=====+**++**++==++=+#**#####**##
;##=**#%%%%#%@%%%#*++##%##%%@@@#*#%%%%###***%####+-...............:-=++**###############***+++++**####%#####***+**#*##+=*##+++##+++**++=+=+***********
;##+#**#%%%%%%%#######%%%%@@@@@*#%%%*:..:-=+*#***+=:............::-==+*##%%%%%%##**********++++***##%%%%%##*++++*#%%##++*##*=*##*++***+=+====******###
;%#*#####%%%%%%%%%%%%%%%%%@@@@%*#%@*::::.:=+*****+=:............:-=+*##%%%%%%###%##***+++++===+**%%%%#**%%%**##=*#%###+=*%#+++###*+*+*+-=---:=******+*
;;%##%####%%%#++*#*###%%%%%%@@%#*%%%+-==::::-+**#**+:............:--===++**###**###**+++===----=*#%%%%######**##=#%####++*+**+*#**+*+=+======---=-===--
;%##%###*#**++++*+**++**##%%@%##%%#=--......:=+*#**=...................::-==++****++==--::....:=*####*******+##*****##+++=+#*+++**++=++===--::-+++++==
;###%###****++******++***#%%@%###%#-::...-=:...-*++=...................::-===+++++==-:.........:=*********+++*#***#**###*##+=+****+**+==--=---+#######
;###%###+++************#**%%@%###%%+....:-==....::........................:::--::..............:-=+++++++++++=**###%#*+==+**=+*#*+==+++=-==--::--:-=+*
;%%%%###***************####%%%%#%%%*:..:---:....................................................:-+++++++++++-=+*##++*###-:::::----==::::::::--=====+*
;%%%#%#++******++++*++++**#%%%%%%%%#=...:::......................................................:=++=====+++--:--=+**#*+-::::-++==++=-+-::::-=++=-=:=
;%####******+**++++++++++**#%%%%%%##+-............................................................-=======+++-::::::=::-=::::::::--++-:++:::-:-*+-::::
;+*+++****++*****###*####++*##%%%%###*-............................................................-========+-::::::::::::::::::::::=:-+*:::::::::::::
;++=+++*##+*##%######**##++***#%%%#####=.........................................:::..............:-=======+=-:::::::::::::-:::::::::::-::::::::::::-:
;======+##*###%%%%%%%####*+++*#%%%%#####*+.....................................:::::.....:----:::-=+++++++++=:::::::::-:::::--::::::::::::::::::::::::
;++++++*##+*#%####%%#####+==-=*#%%%#####%#=..................................:::::....:-=++++*******++++++++-:::::::::--::::::::::::::::::::::::::::::
;+++++=+##+*######*###*##+====+**#######%#+...............................................:-=+*******++++++=-:::::::::=+=:::::::::::::::::::::::::::::
;===++=+%#+*#############+++===+***####%%#+................................................-=+********+++++=-::::::::=+*+:::::::::::::::::::::::::::::
;+==+=-+%%##%%%%%##%###%#+=++++++==+*##%%%*...................................::::..........::--==++++*++++=----::::-=**-:::::::::::::::::::::::::::::
;++====*%%##############%*+=++++++++*##%%#+..................................::-==::......::--==+++****++++-::::::::-=**+:::::::::::::::::::::::::::::
;+++*++*%%##%%%%#%%%%#****+++++*+==+#####+:.................................:-=+*##*****+++****####***+++++----=++++++++++++++=-:::::::::::::::::-++++
;====++*%%%%%%%%%%#+##*++++*++++==++=*##*-..................................:-===-:.....::-=+*******+++++++++++++++++++++++++++++++++++-::=+++++++++++
;+++++*#@@%%%%%%##******++***++*+=+***##-....................................:::.......::-==++****++++++++++++++++++++++++++++++++++++++++++++++++++++
;***===+#########*++*****+++****+-*****+:.............::.....................:::......:-=+**##****++++++++++++++++++++++++++++++++++++++++++++++++++++
;*+=+++*###**+++++++++***++***********#:...............-=-::.................:::...:::-=++*******+++++**++++++++++++++++++++++++++++++++++++++++++++++
;*******=--::--::::-=+****************-.................:-=+==-::::...........:::.:::::---==++*++++++**++++++++++++++++++++++++++++++++++++++*++++++++
;+==-----::::::-=+*****************#*-...................:-=+***+=--:::............:::::::::-==+++++**++++++++++++++++++++++++++++++++++++++++++++++**
;----=+++**++*******+++**********##*:....................::-=+*******+=--::::............::-===++++***+++++++++++++++++++++++++++++++++++**+++**+++*++
;****+****++++++*****++***##*###%#+.....................::--=++***#####**+==-::::....::::-=+++++++***++++++++=*++++++++++++*++++**++++++*+++****+**+++
;-++****+*+++++++***#*****%%*+##=.....................::::--==++*****#######*++=----====++************++*+++++++++++*+++++*+++****+**********+++++++**
;*++*++***+++************###=-=-......................:::---=++++*******########********########**+++++*++++++++*+++*++++++***+**+++++++++++******+***
;****+***++++++********###+:::::......................:----==+++++++===++*########*#####%%%%%#*++++++***+++++++*++++++*++*+++++*******+++**+++++**+***
;******++***+*+++*****##*=-::::--:....................::---==+++++++=---=+**###****#+++++****+++*+++++++++++*++***++++++*++****++++++++++++++++*******
;*+++++***++++++++*###*=-:---:::---:..................::--===+++++++====+*********###****++++++****++++*++++**++***++*****++**+**++++****++***++*+++**
;****+********++++***+---::--====----:................::-==++++++++++++**********#%%####***+++++++++++**+*+++***+++++**+*****+**++*****++*+***********
;**********++++****+=-----:::-=========:.............:::-==+++++++++*********#*##%%%%%###***++++++++++**+++***++++**++**+++********************++*****
;*++***++********+=-------------==++++++=:...........::--=+++++++++**********###%%%%%%%%%##*+++***+**+++*++********++++**+++*++**++*******************
;****+********++==--===========--==+*++===-..........::-==+++++++++**********#%%%%%%%%%%%%##*+++++*++*****+++*++*++++*+++++*******+**************+****
;************=-===-========++=======+**++===:........:-====++++++***********###%%%%%%%%%%%##************+**++*++*****+++***************+++*****+++****
;*********+=---============+++=======+***++==-:.....:-==+++++***************#%#%%%%%%%%%%%%##**++**++****++++*++******+****+**++++********************
;*******+=---=--==========+++++++++++++*****+++=:...:-==++++***************#%%%%%%%%%%%%%%%##************++*************************++++***+**********
;*****++=---==-=========+++++++++++++++++*****+++=-:-===+++***************#%%%%%%%##%%%%%%%%#**********************+++***********+********************
;****+=----==-=====+++++++++++*++++++++*+++*****++*++==++****************#%%%%####%%%%#%%%%%#*******+*********************++**************************
;***+-----==--=====+++++++++++**+++++++***+***#****###*******************%%%%%%%######%%%%%%#***+*****************************************************
;*+=------==--====+++++++++++++***++++++******########%####*************#%%#%%%####**##%%%%%#************++****************++************************#
;=-------==---===++++++++++++**************+**###########%#####**############%#####*+=+*#%%%#*******************************************************##
;:----=========++++++++++++********++++*****###############################%%######*+*#*#%%%%#*****************+*****************************####*****
