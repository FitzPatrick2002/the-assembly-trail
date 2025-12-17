include \masm32\include\masm32rt.inc

.data
msgAsh db "Loud ass Ash!", 13, 10, 0
msgJonesyJumpscare db "As you walk inside, you hear shallow breathing...", 13, 10, 0
msgJonesyJumpscare2 db "The sound is coming from", 13, 10, 0
msgJonesyJumpscare3 db "PLACEHOLDER!!! ﾀ ・・ 鈞昕: https://www.youtube.com/watch?v=rVKW1vkmnPo&list=RDrVKW1vkmnPo&start_radio=1", 13, 10, 0
msgJonesyJumpscare4 db "You walk closer...", 13, 10, 0
msgJonesyJumpscare5 db "MEOW!!!", 13, 10, 0
msgJonesyJumpscare6 db "It's Jonesy! He flees in fear before you can catch him.", 13, 10, 0
msgJonesyJumpscare7 db "You hope you can see him again.", 13, 10, 0
msgAlienHide db "You hear ALIEN footsteps! Where will you hide?", 13, 10, 0
msgAlienHide2 db "1. PLACEHOLDER!!!", 13, 10, 0
msgAlienHide3 db "2. PLACEHOLDER!!!", 13, 10, 0
msgAlienHide4 db "Type in your answer quickly! Choose 1 or 2!", 13, 10, 0
msgAlienHide5 db "Carefully, but swiftly, you slip away to the hiding spot.", 13, 10, 0
msgAlienHide6 db "Hoping that the ALIEN won't see you, you freeze and hold your breath.", 13, 10, 0
msgAlienHide7 db "The ALIEN in all of its glory searches for you.", 13, 10, 0
msgAlienHide8 db "It looks around and for a moment you feel as if you were going to die.", 13, 10, 0
msgAlienHide9 db "But you will not. You will persist.", 13, 10, 0
msgAlienHide10 db "At least for now.", 13, 10, 0
msgAlienHide11 db "The ALIEN hears a distant rustle and marches towards the noise.", 13, 10, 0
msgAlienHide12 db "You wait a short while and leave your hiding spot, still alive.", 13, 10, 0
msgAlienHide13 db "It looks around and for a moment you feel as if you are going to die.", 13, 10, 0
msgAlienHide14 db "You have a hunch that you have been noticed.", 13, 10, 0
msgAlienHide15 db "Before you can think, the ALIEN jumps towards you and slashes you with its tail.", 13, 10, 0
msgAlienHide16 db "As you fall to your knees, your predator is content.", 13, 10, 0
msgAlienHide17 db "The ALIEN dissapears as suddenly as it appeared.", 13, 10, 0
msgAlienHide18 db "You freezed for too long and now the ALIEN has seen you.", 13, 10, 0
msgAlienHide19 db "There is no escape.", 13, 10, 0
msgAlienHide20 db "You must be delirious, at a time like this you cannot decide.", 13, 10, 0
msgAlienHide21 db "Full of horror, you try to hide in the plain sight.", 13, 10, 0
msgAlienHide22 db "The ALIEN sees you almost immediately.", 13, 10, 0
msgAlienHide23 db "You have a feeling that the ALIEN is dissapointed in you.", 13, 10, 0
msgAlienHide24 db "You are such an easy prey and it wants to play.", 13, 10, 0

msgWait db "...", 13, 10, 0
msgGalleyWater db "There must be some water left. You think to yourself.", 13, 10, 0
msgGalleyWater2 db "You check the appropriate storage.", 13, 10, 0
msgGalleyWater3 db "Canned peaches, canned pineapples, even canned tomatoes.", 13, 10, 0
msgGalleyWater4 db "Dallas really liked exotic fruits.", 13, 10, 0
msgGalleyWater5 db "You switch to a neighbouring shelf and here it is.", 13, 10, 0
msgGalleyWater6 db "There lies 3 WATER, all yours now.", 13, 10, 0

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
msgHelp db ".________________________________.", 13, 10, 0
msgHelp2 db "|     _  _  ____  __    ____     |", 13, 10, 0
msgHelp3 db "|    / )( \\(  __)(  )  (  _ \\    |", 13, 10, 0
msgHelp4 db "|    ) __ ( ) _) / (_/\\ ) __/    |", 13, 10, 0
msgHelp5 db "|    \\_)(_/(____)\\____/(__)      |", 13, 10, 0
msgHelp6 db ".________________________________.", 13, 10, 0
msgHelp7 db "Nostromo Escape is a game developed by:", 13, 10, 0
msgHelp8 db "Daniil Khortov, Magdalena Rapala, Milosz Liniewiecki and Ruth Zhou", 13, 10, 0
msgHelp9 db "As Asembler Programming Language project, made in 2025.", 13, 10, 0
msgHelp10 db " ", 13, 10, 0
msgHelp11 db "You play as Ellen Ripley, the last Nostromo survivor.", 13, 10, 0
msgHelp12 db "Still stuck on the ship, your goal is to collect 5 chemical fuels", 13, 10, 0
msgHelp13 db "And survive long enough to escape via an escape pod.", 13, 10, 0
msgHelp14 db "How to play?", 13, 10, 0
msgHelp15 db "This is a text-based game, everything you do, you do so by writing in the terminal.", 13, 10, 0
msgHelp16 db "There are time dependent decisions, you must pay attention.", 13, 10, 0
msgHelp17 db "Now, good luck and remember:", 13, 10, 0
msgHelp18 db "  ", 13, 10, 0
msgHelp19 db "|      __  __ _    ____  ____   __    ___  ____                     |", 13, 10, 0
msgHelp20 db "|     (  )(  ( \\  / ___)(  _ \\ / _\\  / __)(  __) _               |", 13, 10, 0
msgHelp21 db "|      )( /    /  \\___ \\ ) __//    \\( (__  ) _) ( )              |", 13, 10, 0
msgHelp22 db "|     (__)\\_)__)  (____/(__)  \\_/\\_/ \\___)(____)(/              |", 13, 10, 0
msgHelp23 db "|     __ _   __      __   __ _  ____     ___   __   __ _            |", 13, 10, 0
msgHelp24 db "|    (  ( \\ /  \\    /  \\ (  ( \\(  __)   / __) / _\\ (  ( \\     |", 13, 10, 0
msgHelp25 db "|    /    /(  O )  (  O )/    / ) _)   ( (__ /    \\/    /          |", 13, 10, 0
msgHelp26 db "|    \\_)__) \\__/    \\__/ \\_)__)(____)   \\___)\\_/\\_/\\_)__)   |", 13, 10, 0
msgHelp27 db "|     _  _  ____   __   ____    _  _  __   _  _                     |", 13, 10, 0
msgHelp28 db "|    / )( \\(  __) / _\\ (  _ \\  ( \\/ )/  \\ / )( \\              |", 13, 10, 0
msgHelp29 db "|    ) __ ( ) _) /    \\ )   /   )  /(  O )) \\/ (                  |", 13, 10, 0
msgHelp30 db "|    \\_)(_/(____)\\_/\\_/(__\\_)  (__/  \\__/ \\____/              |", 13, 10, 0
msgHelp31 db "|     ____   ___  ____  ____   __   _  _                            |", 13, 10, 0
msgHelp32 db "|    / ___) / __)(  _ \\(  __) / _\\ ( \\/ )                        |", 13, 10, 0
msgHelp33 db "|    \\___ \\( (__  )   / ) _) /    \\/ \\/ \\ _                    |", 13, 10, 0
msgHelp34 db "|    (____/ \\___)(__\\_)(____)\\_/\\_/\\_)(_/(_)                   |", 13, 10, 0
msgTypeAnything db "Input anything go back and start the game immediately: ", 13, 10, 0
msgMap db "-==================================+Map+==================================-", 13, 10, 0
msgMap2 db "##########################################################################", 13, 10, 0
msgMap3 db "######################################.........###########################", 13, 10, 0
msgMap4 db "######################......#########..HYPER....##########################", 13, 10, 0
msgMap5 db "#####################.MOTHER.########...VAULT...+.......##################", 13, 10, 0
msgMap6 db "######################......#########...........+.........################", 13, 10, 0
msgMap7 db "#####################+++##############.........########....###############", 13, 10, 0
msgMap8 db "####################...#################################...###############", 13, 10, 0
msgMap9 db "###################+..##################################+++###############", 13, 10, 0
msgMap10 db "##############.....++#######.........##################.....##############", 13, 10, 0
msgMap11 db "#-.................-#######...........###############.........###..L.R.###", 13, 10, 0
msgMap12 db "#........BRIDGE.....+.....+...GALLEY..+.............+..J.A-2....+...*---##", 13, 10, 0
msgMap13 db "#-..................+.....+...........+.............+.........###...+WC###", 13, 10, 0
msgMap14 db "##############....++#######...........################.......#####-.+.####", 13, 10, 0
msgMap15 db "#################+....#######.......#############...####+++###############", 13, 10, 0
msgMap16 db "###################.....#######...##############......##...######.ESC.-###", 13, 10, 0
msgMap17 db "#####################.....#####...#############+......##.......+..PODS..##", 13, 10, 0
msgMap18 db "#######################.....###...########....MEDBAY..##-..#####.......###", 13, 10, 0
msgMap19 db "#########################....+#+++##########.........+.....###############", 13, 10, 0
msgMap20 db "###########################.++......###########++##+++...#################", 13, 10, 0
msgMap21 db "############################..........+....CORRIDOR....###################", 13, 10, 0
msgMap22 db "############################..J.A-1...+.............######################", 13, 10, 0
msgMap23 db "############################.........#####################################", 13, 10, 0
msgMap24 db "##########################################################################", 13, 10, 0


msgOpeningScene db ".______________________________.", 13, 10, 0
msgOpeningScene2 db "|#########################.-.###|", 13, 10, 0
msgOpeningScene3 db "|#######.-''`''-.######  (@ @) #|", 13, 10, 0
msgOpeningScene4 db "|####_(`oOoOoOoOo`)_###  \\\\-/  #|", 13, 10, 0
msgOpeningScene5 db "|##'.-=-=-=-=-=-=-=.`##  \\/ \\  #|", 13, 10, 0
msgOpeningScene6 db "|####`-=.-=.-=.-=.'####   \\ /\\ #|", 13, 10, 0
msgOpeningScene7 db "|#######^  ^  ^  ######   _H_ \\#|", 13, 10, 0
msgOpeningScene8 db "|###############################|", 13, 10, 0
msgOpeningScene9 db "This is commercial towing vehicle Nostromo out of the Solomons,", 13, 10, 0
msgOpeningScene10 db "Registration number 180924609.", 13, 10, 0
msgOpeningScene11 db "Executive officer Ripley, W564502460H", 13, 10, 0
msgOpeningScene12 db "In need of dire help.", 13, 10, 0
msgOpeningScene13 db "Unknown ALIEN organism is trying to hunt me down.", 13, 10, 0
msgOpeningScene14 db "Plan of launching Narcissus light shuttle as the last means of escape.", 13, 10, 0
msgOpeningScene15 db "Pod lacks chemical fuel, search underway.", 13, 10, 0
msgOpeningScene16 db "Day of the recording - 5th June 2122.", 13, 10, 0
msgOpeningScene17 db "# -------------------------- #", 13, 10, 0
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
    print addr msgJonesyJumpscare2
    print addr msgJonesyJumpscare3
    invoke Sleep, 1000
    print addr msgJonesyJumpscare4
    invoke Sleep, 2000
    print addr msgJonesyJumpscare5
    print addr msgJonesyJumpscare6
    print addr msgJonesyJumpscare7
    ret
jonesyJumpscare endp

;Event alienHide
alienHide proc
    print addr msgAlienHide
    print addr msgAlienHide2
    print addr msgAlienHide3
    print addr msgAlienHide4
    
    mov edi, offset buffer
    mov ecx, 100
    xor al, al
    rep stosb
    
    invoke GetTickCount
    mov ebx, eax        
    add ebx, 12000 
    
    mov edx, offset buffer
    mov ecx, sizeof buffer
    invoke StdIn, edx, ecx
    
    mov esi, offset buffer
    movzx eax, byte ptr [esi]   
    mov buffer, al                  
    invoke GetTickCount        
    cmp eax, ebx
    jge choice3 
    
    mov al, buffer             
    cmp al, '1'     
    je choice1
    cmp al, '2'     
    je choice1
    jmp choice2
    ret

choice1:
    print addr msgAlienHide5
    print addr msgAlienHide6
    print addr msgAlienHide7

    print addr msgWait
    invoke Sleep, 1000
    print addr msgWait
    invoke Sleep, 1000
    print addr msgWait
    invoke Sleep, 1000
    print addr msgWait
    invoke Sleep, 1000
    print addr msgWait
    invoke Sleep, 1000

    invoke GetTickCount
    invoke nseed, eax           
    invoke nrandom, 2           
    cmp eax, 0                  
    je choice11                 
    jmp choice12   
    ret
    
choice11:
    print addr msgAlienHide8
    print addr msgAlienHide9
    print addr msgAlienHide10
    print addr msgAlienHide11
    print addr msgAlienHide12
    ret

choice12:
    print addr msgAlienHide13
    print addr msgAlienHide14
    print addr msgAlienHide15
    print addr msgAlienHide16
    print addr msgAlienHide17

    mov eax, hp
    sub eax, 2
    mov hp, eax 
    ret

choice2:
    print addr msgAlienHide20
    print addr msgAlienHide21
    print addr msgAlienHide22
    print addr msgAlienHide23
    print addr msgAlienHide24
    print addr msgAlienHide15
    print addr msgAlienHide16
    print addr msgAlienHide17 

    mov eax, hp
    sub eax, 2
    mov hp, eax 
    ret
choice3:
    print addr msgAlienHide18
    print addr msgAlienHide19
    print addr msgAlienHide15
    print addr msgAlienHide16
    print addr msgAlienHide17 

    mov eax, hp
    sub eax, 2
    mov hp, eax 
    ret
alienHide endp


;Event galleyWater
galleyWater proc
    print addr msgGalleyWater
    print addr msgGalleyWater2
    print addr msgGalleyWater3
    print addr msgGalleyWater4
    print addr msgGalleyWater5
    print addr msgGalleyWater6
    
    mov al, water
    add al, 3
    mov water, al 
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
    jmp showMsg2  ; ﾊ 粨・瑣・jmp 鈞・・cmp eax, 1
   
showMsg1:
    print addr msgMedbayGlass6
    

    mov edi, offset buffer
    mov ecx, 100
    xor al, al
    rep stosb
    
    invoke GetTickCount
    mov ebx, eax        
    add ebx, 5000 
    
    mov edx, offset buffer
    mov ecx, sizeof buffer
    invoke StdIn, edx, ecx
    
    
    invoke GetTickCount
    cmp eax, ebx
    jge doFailure         
    
    
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
    
    invoke GetTickCount
    mov ebx, eax        
    add ebx, 5000 
    
    mov edx, offset buffer
    mov ecx, sizeof buffer
    invoke StdIn, edx, ecx
    
    
    invoke GetTickCount
    cmp eax, ebx
    jge doFailure         
    
    
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

;Event help
help proc
    print addr msgHelp
    print addr msgHelp2
    print addr msgHelp3
    print addr msgHelp4
    print addr msgHelp5
    print addr msgHelp6
    print addr msgHelp7
    print addr msgHelp8
    print addr msgHelp9
    print addr msgHelp10
    print addr msgHelp11
    print addr msgHelp12
    print addr msgHelp13
    print addr msgHelp14
    print addr msgHelp15
    print addr msgHelp16
    print addr msgHelp17
    print addr msgHelp18
    print addr msgHelp19
    print addr msgHelp20
    print addr msgHelp21
    print addr msgHelp22
    print addr msgHelp23
    print addr msgHelp24
    print addr msgHelp25
    print addr msgHelp26
    print addr msgHelp27
    print addr msgHelp28
    print addr msgHelp29
    print addr msgHelp30
    print addr msgHelp31
    print addr msgHelp32
    print addr msgHelp33
    print addr msgHelp34
    print addr msgTypeAnything
    mov edx, offset buffer
    mov ecx, sizeof buffer
    invoke StdIn, edx, ecx
    ret
help endp

;Event map
map proc
    print addr msgMap
    print addr msgMap2
    print addr msgMap3
    print addr msgMap4
    print addr msgMap5
    print addr msgMap6
    print addr msgMap7
    print addr msgMap8
    print addr msgMap9
    print addr msgMap10
    print addr msgMap11
    print addr msgMap12
    print addr msgMap13
    print addr msgMap14
    print addr msgMap15
    print addr msgMap16
    print addr msgMap17
    print addr msgMap18
    print addr msgMap19
    print addr msgMap20
    print addr msgMap21
    print addr msgMap22
    print addr msgMap23
    print addr msgMap24
    print addr msgTypeAnything
    mov edx, offset buffer
    mov ecx, sizeof buffer
    invoke StdIn, edx, ecx
    ret
map endp


;Event openingScene
openingScene proc
    print addr msgOpeningScene
    print addr msgOpeningScene2
    print addr msgOpeningScene3
    print addr msgOpeningScene4
    print addr msgOpeningScene5
    print addr msgOpeningScene6
    print addr msgOpeningScene7
    print addr msgOpeningScene8
    print addr msgOpeningScene9
    print addr msgOpeningScene10
    print addr msgOpeningScene11
    print addr msgOpeningScene12
    print addr msgOpeningScene13
    print addr msgOpeningScene14
    print addr msgOpeningScene15
    print addr msgOpeningScene16
    print addr msgOpeningScene17
    print addr msgTypeAnything
    mov edx, offset buffer
    mov ecx, sizeof buffer
    invoke StdIn, edx, ecx
    ret
openingScene endp

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
    ;call medbayGlass
    ;call help
    call map
    ;call openingScene
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
