include \masm32\include\masm32rt.inc
include utils.inc

.data

msgAsh db "A strange feeling creeps into your mind, as if someone is watching you.", 13, 10, 0
msgAsh2 db "You turn to see the 'corpse' of Ash staring directly at your skull.", 13, 10, 0
msgAsh3 db "There's a scream, but it is not yours, it is Ash's.", 13, 10, 0
msgAsh4 db "Do you shut him up?", 13, 10, 0
msgAsh5 db "You cannot risk being noticed by the ALIEN.", 13, 10, 0
msgAsh6 db "This is probably what Ash wants, he would do anything just to protect this creature.", 13, 10, 0
msgAsh7 db "The question remains, how to shut up this synth?", 13, 10, 0
msgAsh8 db "You need to be firm and quick, so you think about a few solutions:", 13, 10, 0
msgAsh9 db "1. Kick him in the mouth (or what remains of it).", 13, 10, 0
msgAsh10 db "2. Try to fry his circuits.", 13, 10, 0
msgAsh11 db "3. Smash his head with a chair.", 13, 10, 0
msgAsh12 db "What will you do?", 13, 10, 0
msgAsh13 db "This is the fastest method you could think of.", 13, 10, 0
msgAsh14 db "You position yourself right in front of Ash laying on the counter.", 13, 10, 0
msgAsh15 db "Not thinking much about it, you lift up your leg and stomp on the synth's face.", 13, 10, 0
msgAsh16 db "The screaming does not stop, so you kick him", 13, 10, 0
msgAsh17 db "Again", 13, 10, 0
msgAsh18 db "And again,", 13, 10, 0
msgAsh19 db "Ash tries to desperately bite onto your boot.", 13, 10, 0
msgAsh20 db "Maybe the resonable solution would be to shake him off, but you press your boot harder in.", 13, 10, 0
msgAsh21 db "After a while his fake teeth start to break under the pressure.", 13, 10, 0
msgAsh22 db "You feel the resistance dying down suddenly.", 13, 10, 0
msgAsh23 db "When the screaming finally ends, you step back and stare at what is left.", 13, 10, 0
msgAsh24 db "It is a good thing, that you cannot see his eyes anymore.", 13, 10, 0
msgAsh25 db "Your boot is covered in white fuel and you turn your back to him", 13, 10, 0
msgAsh26 db "He was still your coworker. At least until he tried to kill you.", 13, 10, 0
msgAsh27 db "This will shut him up no matter how durable he could still be.", 13, 10, 0
msgAsh28 db "Since you are in a lab, you are able to find fitting equipment for the job.", 13, 10, 0
msgAsh29 db "You are glad it was not too hard to pry Ash's circuits open,", 13, 10, 0
msgAsh30 db "His so called skull, was already half smashed.", 13, 10, 0
msgAsh31 db "You take the wire and you attach the crocodile clips to his brain.", 13, 10, 0
msgAsh32 db "The electricity shoots out immediately and licks your skin as well.", 13, 10, 0
msgAsh33 db "The pain both you and Ash feel is so intense, you break free.", 13, 10, 0
msgAsh34 db "Trying to electrocute him, you fried yourself as well.", 13, 10, 0
msgAsh35 db "At least his screaming stops right in the moment,", 13, 10, 0
msgAsh36 db "But his eyes give up and spill over the counter.", 13, 10, 0
msgAsh37 db "Had he not tried to kill you, just a few hours before...", 13, 10, 0
msgAsh38 db "You do not want to think what would be in your head then.", 13, 10, 0
msgAsh39 db "The chair will serve as an adequate barrier of protection against him...", 13, 10, 0
msgAsh40 db "That is what you think as you grab the closest laboratory chair.", 13, 10, 0
msgAsh41 db "You prepare for a short second and take a swing at Ash's poor skull.", 13, 10, 0
msgAsh42 db "His head falls on the floor upon impact and shatters into more pieces.", 13, 10, 0
msgAsh43 db "But most importantly, his screaming starts to stop.", 13, 10, 0
msgAsh44 db "His vocal cords begin to glitch out and give out.", 13, 10, 0
msgAsh45 db "White fuel spattered on your uniform and it tastes like oil...", 13, 10, 0
msgAsh46 db "You are glad you do not taste blood right now.", 13, 10, 0
msgAsh47 db "Wait a second...", 13, 10, 0
msgAsh48 db "You know the perfect solution and it is right here with you.", 13, 10, 0
msgAsh49 db "Reaching into your backpack you grab a WATER bottle.", 13, 10, 0
msgAsh50 db "It seems like the screaming is worsening as you make your way over to Ash.", 13, 10, 0
msgAsh51 db "Without any hesitation you pour the water on his half-cracked skull.", 13, 10, 0
msgAsh52 db "Among the sizzling and the glitching, his vocal cords give out.", 13, 10, 0
msgAsh53 db "Some of his white fuel has leaked out on your pants and shoes...", 13, 10, 0
msgAsh54 db "You are thankful it is not his blood.", 13, 10, 0
msgAsh55 db "Without thinking you run towards the corpse on the counter", 13, 10, 0
msgAsh56 db "And you throw a punch you never realised you were capable of.", 13, 10, 0
msgAsh57 db "Somehow Ash's teeth fall out afterwards.", 13, 10, 0
msgAsh58 db "But since the screaming does not stop, you take a swing and", 13, 10, 0
msgAsh59 db "Hit him again.", 13, 10, 0
msgAsh60 db "His white fuel sprinkles all over your uniform, but you are not done yet.", 13, 10, 0
msgAsh61 db "Punch after punch you see his vocal cords giving in and losing their power.", 13, 10, 0
msgAsh62 db "It is done.", 13, 10, 0
msgAsh63 db "You recoil and look at your bruised hand.", 13, 10, 0
msgAsh64 db "Did his hand bruise the same when he was alive?", 13, 10, 0
msgAsh65 db "No matter, this is a silly thought.", 13, 10, 0
msgAsh66 db "While examining your stained clothing,", 13, 10, 0
msgAsh67 db "You notice some supplies on the ground.", 13, 10, 0
msgAsh68 db "Upon closer inspection and wiping off the fuel off of the items,", 13, 10, 0
msgAsh69 db "It turns out you have found 2 CHEMFUELS and 1 WATER hidden away.", 13, 10, 0
msgAsh70 db "Better to leave, Ash's screaming could have called over the ALIEN.", 13, 10, 0
msgAsh71 db "Maybe it will be smarter to simply run away?", 13, 10, 0
msgAsh72 db "Ash's screaming could call the ALIEN over to him and him only.", 13, 10, 0
msgAsh73 db "This is the safest option, you tell yourself and turn around.", 13, 10, 0
msgAsh74 db "You panic and start screaming right back at him.", 13, 10, 0
msgAsh75 db "It seems Ash has lost his core programming,", 13, 10, 0
msgAsh76 db "Because he does not react to you.", 13, 10, 0
msgAsh77 db "And yet, his stare is so frightening, you take a wrench and throw it at his side.", 13, 10, 0
msgAsh78 db "You miss horribly... Instead of Ash, you hit the open ventilation crate above him.", 13, 10, 0
msgAsh79 db "Since the metal was already loosely hanging, it breaks free.", 13, 10, 0
msgAsh80 db "It hits Ash right in the skull, piercing it right through.", 13, 10, 0
msgAsh81 db "You try to reach out to your face to gasp in shock,", 13, 10, 0
msgAsh82 db "But a lose shard pricks your hand pretty badly.", 13, 10, 0
msgAsh83 db "Thankfully, with the equipment available, you quickly patch yourself up.", 13, 10, 0
msgAsh84 db "You are losing your mind, you acted so inanely...", 13, 10, 0
msgAsh85 db "This commotion could have alerted the ALIEN, you should flee as soon as possible.", 13, 10, 0

msgJonesyJumpscare db "As you walk inside, you hear shallow breathing...", 13, 10, 0
msgJonesyJumpscare2 db "The sound is coming from", 13, 10, 0
msgJonesyJumpscare3 db "PLACEHOLDER!!!                : https://www.youtube.com/watch?v=rVKW1vkmnPo&list=RDrVKW1vkmnPo&start_radio=1", 13, 10, 0
msgJonesyJumpscare4 db "You walk closer...", 13, 10, 0
msgJonesyJumpscare5 db "MEOW!!!", 13, 10, 0
msgJonesyJumpscare6 db "It's Jonesy! He flees in fear before you can catch him.", 13, 10, 0
msgJonesyJumpscare7 db "You hope you can see him again.", 13, 10, 0
msgAlienHide db "You hear ALIEN footsteps!", 13, 10, 0
msgAlienHide2 db "Where will you hide?", 13, 10, 0
msgAlienHide3 db "1. ", 0
msgAlienHide4 db "2. ", 0
msgAlienHide5 db "Type in your answer quickly! Choose 1 or 2!", 13, 10, 0
msgAlienHide6 db "Carefully, but swiftly, you slip away to the hiding spot.", 13, 10, 0
msgAlienHide7 db "Hoping that the ALIEN won't see you, you freeze and hold your breath.", 13, 10, 0
msgAlienHide8 db "The ALIEN in all of its glory searches for you.", 13, 10, 0
msgAlienHide9 db "It looks around and for a moment you feel as if you were going to die.", 13, 10, 0
msgAlienHide10 db "But you will not. You will persist.", 13, 10, 0
msgAlienHide11 db "At least for now.", 13, 10, 0
msgAlienHide12 db "The ALIEN hears a distant rustle and marches towards the noise.", 13, 10, 0
msgAlienHide13 db "You wait a short while and leave your hiding spot, still alive.", 13, 10, 0
msgAlienHide14 db "It looks around and for a moment you feel as if you are going to die.", 13, 10, 0
msgAlienHide15 db "You have a hunch that you have been noticed.", 13, 10, 0
msgAlienHide16 db "Before you can think, the ALIEN jumps towards you and slashes you with its tail.", 13, 10, 0
msgAlienHide17 db "As you fall to your knees, your predator is content.", 13, 10, 0
msgAlienHide18 db "The ALIEN dissapears as suddenly as it appeared.", 13, 10, 0
msgAlienHide19 db "You freezed for too long and now the ALIEN has seen you.", 13, 10, 0
msgAlienHide20 db "There is no escape.", 13, 10, 0
msgAlienHide21 db "You must be delirious, at a time like this you cannot decide.", 13, 10, 0
msgAlienHide22 db "Full of horror, you try to hide in the plain sight.", 13, 10, 0
msgAlienHide23 db "The ALIEN sees you almost immediately.", 13, 10, 0
msgAlienHide24 db "You have a feeling that the ALIEN is dissapointed in you.", 13, 10, 0
msgAlienHide25 db "You are such an easy prey and it wants to play.", 13, 10, 0

msgWait db "...", 13, 10, 0
msgGalleyWater db "There must be some water left. You think to yourself.", 13, 10, 0
msgGalleyWater2 db "You check the appropriate storage.", 13, 10, 0
msgGalleyWater3 db "Canned peaches, canned pineapples, even canned tomatoes.", 13, 10, 0
msgGalleyWater4 db "Dallas really liked exotic fruits.", 13, 10, 0
msgGalleyWater5 db "You switch to a neighbouring shelf and here it is.", 13, 10, 0
msgGalleyWater6 db "There lies 3 WATER, all yours now.", 13, 10, 0

msgMotherPanel db "Weirdly enough, this room is colder than the rest, emptier than the rest.", 13, 10, 0
msgMotherPanel2 db "You have never been allowed here, the Mother was a distant entity to you.", 13, 10, 0
msgMotherPanel3 db "Whatever Ash and Dallas talked with Mother about here, does it matter now?", 13, 10, 0
msgMotherPanel4 db "You could check the logs on the panel...", 13, 10, 0
msgMotherPanel5 db "Do you give in the curiosity and temptation one last time?", 13, 10, 0
msgMotherPanel6 db "Do you check out the main Mother panel?", 13, 10, 0

msgMotherPanel7 db "You walk up to the panel and the screen automatically lights up.", 13, 10, 0
msgMotherPanel8 db "Hmm... the machine needs the password to let you in on its secrets.", 13, 10, 0
msgMotherPanel9 db "Do you try to enter?", 13, 10, 0

msgMotherPanel10 db "Hopefully the ALIEN will not find you hunched over an old screen.", 13, 10, 0

msgMotherPanel11 db "PASSWORD [4 DIGITS]: ", 13, 10, 0

msgMotherPanel12 db "Correct.", 13, 10, 0
msgMotherPanel13 db "Incorrect.", 13, 10, 0
msgMotherPanel14 db "You must have forgotten that two years have already gone by...", 13, 10, 0
msgMotherPanel15 db "That makes sense... Ash did wake up every few months or so to check up on Mother.", 13, 10, 0
msgMotherPanel16 db "The passwords were updated regularly.", 13, 10, 0
msgMotherPanel17 db "But that is not important now.", 13, 10, 0
msgMotherPanel18 db "You check the logs and you freeze.", 13, 10, 0
msgMotherPanel19 db ".____________________________________________.", 13, 10, 0
msgMotherPanel20 db "30:0", 0
msgMotherPanel21 db "minutes left to self-destruct.", 13, 10, 0
msgMotherPanel22 db ".____________________________________________.", 13, 10, 0
msgMotherPanel23 db "Oh no no no no.", 13, 10, 0
msgMotherPanel24 db "You scroll up to see what and who set it off.", 13, 10, 0
msgMotherPanel25 db "Special Order	937? What is this directive...?", 13, 10, 0
msgMotherPanel26 db "'[...] even at the expense of the crew, the perfect organism must be returned", 13, 10, 0
msgMotherPanel27 db "to the laboratories on Earth.'", 13, 10, 0
msgMotherPanel28 db "Those Weyland-Yutani bastards.", 13, 10, 0
msgMotherPanel29 db "Of course Ash would rather kill us all. Corporation's ideal puppet.", 13, 10, 0
msgMotherPanel30 db "I should leave now. The time is ticking after all.", 13, 10, 0
msgMotherPanel31 db "You failed to provide the correct password.", 13, 10, 0
msgMotherPanel32 db "TERMINAL LOCKED.", 13, 10, 0
msgMotherPanel33 db "At least I tried. You think to yourself as you back out.", 13, 10, 0
msgMotherPanel34 db "I have spent too much time in here, I should leave soon.", 13, 10, 0
msgMotherPanel35 db "You do not think you recall the password.", 13, 10, 0
msgMotherPanel36 db "Only Ash and Dallas were supposed to after all.", 13, 10, 0
msgMotherPanel37 db "Just 4 digits, wonder what could that have been. You mutter to yourself.", 13, 10, 0
msgMotherPanel38 db "However, there's no time for such thoughts and the chills on your body reminds you of this fact.", 13, 10, 0
msgMotherPanel39 db "You should escape as soon as possible.", 13, 10, 0
msgMotherPanel40 db "You may not know the password, but you know the perfect remedy for disobedient technology.", 13, 10, 0
msgMotherPanel41 db "WHAM! You kick the computer underneath with all your might.", 13, 10, 0
msgMotherPanel42 db "Hoping the ALIEN will not hear your deranged solution, you stare at the screen as it refreshes.", 13, 10, 0
msgMotherPanel43 db "You did not expect this to actually work, but here it is...", 13, 10, 0
msgMotherPanel44 db "No way, you need to leave this ship as soon as possible.", 13, 10, 0
msgMotherPanel45 db "This is not the time to be sitting at the panel.", 13, 10, 0
msgMotherPanel46 db "You will never know the secrets that Ash and Dallas hid behind their backs.", 13, 10, 0
msgMotherPanel47 db "But they are dead and you are not, and let's keep it that way.", 13, 10, 0
msgMotherPanel48 db "You swiftly head to the exit hatch.", 13, 10, 0
msgMotherPanel49 db "You think and think about this idea for far too long.", 13, 10, 0
msgMotherPanel50 db "There is a panel in the middle of the room, but where are the cables?", 13, 10, 0
msgMotherPanel51 db "They must be hidden somewhere...", 13, 10, 0
msgMotherPanel52 db "Maybe if you follow them, you will find some CHEMFUEL at the end?", 13, 10, 0
msgMotherPanel53 db "Since every idea is worth trying out, you  on your knees", 13, 10, 0
msgMotherPanel54 db "And try to pry out the floor tiles.", 13, 10, 0
msgMotherPanel55 db "You end up bruising and straining yourself to no satisfiable result.", 13, 10, 0
msgMotherPanel56 db "You must be really losing your mind.", 13, 10, 0
msgMotherPanel57 db "Best to  out of here.", 13, 10, 0





msgAlienFire db "The sweat forms on your face, you feel the ALIEN coming this way.", 13, 10, 0
msgAlienFire2 db "You have no time to hide now, it could be here any moment.", 13, 10, 0
msgAlienFire3 db "Do you use the fire to scare it away?", 13, 10, 0
msgAlienFire4 db "If yes, prepare to have a steady stance and a fast hand.", 13, 10, 0
msgAlienFire5 db "Scare the ALIEN. Write FLAME quickly!", 13, 10, 0
msgAlienFire6 db "Scare the ALIEN. Write FIRE quickly!", 13, 10, 0
msgAlienFire7 db "As you expected, the ALIEN appears from round the corner.", 13, 10, 0
msgAlienFire8 db "Each moment counts, as you press on the trigger.", 13, 10, 0
msgAlienFire9 db "The fire burts out of the flamethrower!", 13, 10, 0
msgAlienFire10 db "You try to hold your ground.", 13, 10, 0
msgAlienFire11 db "The ALIEN is not scared of you, but it is scared of the flames...", 13, 10, 0
msgAlienFire12 db "You have won this duel, the ALIEN retreats in fear.", 13, 10, 0
msgAlienFire13 db "As expected, the ALIEN appears from round the corner.", 13, 10, 0
msgAlienFire14 db "Each moment counts, as you try to find the trigger.", 13, 10, 0
msgAlienFire15 db "The ALIEN feels your panic and quickly attacks you with its tail.", 13, 10, 0
msgAlienFire16 db "Thankfully, you manage to fire in just the right time,", 13, 10, 0
msgAlienFire17 db "The tail only scratches you and then s engulfed in the flames.", 13, 10, 0
msgAlienFire18 db "You try to hold your ground, but the pain makes you tremble.", 13, 10, 0
msgAlienFire19 db "The ALIEN is wounded too and it fears the fire you control.", 13, 10, 0
msgAlienFire20 db "You have won this duel, but just barely. The ALIEN retreats.", 13, 10, 0
msgAlienFire21 db "This might have been a stupid decision.", 13, 10, 0
msgAlienFire22 db "You think to yourself as you see the ALIEN appear.", 13, 10, 0
msgAlienFire23 db "The boxes to your side catch your eye.", 13, 10, 0
msgAlienFire24 db "Having no time for anything else, you throw the boxes at the ALIEN.", 13, 10, 0
msgAlienFire25 db "They successfully block the way.", 13, 10, 0
msgAlienFire26 db "The ALIEN, now angrier, attacks you with its tail! It pierces your shoulder.", 13, 10, 0
msgAlienFire27 db "Being unable to  to you fully, the ALIEN retreats.", 13, 10, 0
msgAlienFire28 db "It will  to you sooner than later after all.", 13, 10, 0
msgAlienFire29 db "What is happening? You feel dizzy...", 13, 10, 0
msgAlienFire30 db "Suddenly the ALIEN appears in all of its glory.", 13, 10, 0
msgAlienFire31 db "You wake your brain up and grab the firethrower,", 13, 10, 0
msgAlienFire32 db "But the ALIEN has already attacked you with its tail.", 13, 10, 0
msgAlienFire33 db "The pain is a great motivator to survive. You press the trigger.", 13, 10, 0
msgAlienFire34 db "With the blood on your legs, you try to stand your ground.", 13, 10, 0
msgAlienFire35 db "The pain is so terrible you drop on one knee.", 13, 10, 0
msgAlienFire36 db "Something falls out of your pocket, it's 1 WATER.", 13, 10, 0
msgAlienFire37 db "No matter, you stand up and raise the flames higher.", 13, 10, 0
msgAlienFire38 db "The fire licks the ALIEN's tail and as tries to escape.", 13, 10, 0
msgAlienFire39 db "You have barely won this duel, you need to be more concious.", 13, 10, 0



msgFoundChemFuel db "You notice a fresh acid-made hole on the ground.", 13, 10, 0
msgFoundChemFuel2 db "Search it?", 13, 10, 0
msgFoundChemFuel3 db "Nothing can stop you now!", 13, 10, 0
msgFoundChemFuel4 db "With a steady hand you reach out and...", 13, 10, 0
msgFoundChemFuel5 db "Bingo! You have no idea why, but you have got 1 CHEMFUEL.", 13, 10, 0
msgFoundChemFuel6 db "You know better than to risk ting acid on your hands.", 13, 10, 0
msgFoundChemFuel7 db "The hole sizzles evilly.", 13, 10, 0
msgFoundChemFuel8 db "As you stick your hand inside the hole, your weak body trembles.", 13, 10, 0
msgFoundChemFuel9 db "OUCH! A speck of acid nuzzles your sleeve...", 13, 10, 0
msgFoundChemFuel10 db "It has not damaged you greatly, but you feel a new wound forming right under.", 13, 10, 0


msgFoundWater db "There's an open vent, that was closed before...", 13, 10, 0
msgFoundWater2 db "Search it?", 13, 10, 0
msgFoundWater3 db "Nothing can stop you now!", 13, 10, 0
msgFoundWater4 db "You climb up and...", 13, 10, 0
msgFoundWater5 db "Bingo! Hidden, left by nobody knows who, there lies 1 WATER.", 13, 10, 0
msgFoundWater6 db "Really? You really do not want to see inside the vents?", 13, 10, 0
msgFoundWater7 db "The vents that the ALIEN uses almost all the time?", 13, 10, 0
msgFoundWater8 db "You turn your back to the open vent", 13, 10, 0
msgFoundWater9 db "And you feel yourself ting more, and more vulnerable.", 13, 10, 0
msgFoundWater10 db "You try to climb up the vents,", 13, 10, 0
msgFoundWater11 db "But you are too weak and your hands slip away from the ledge...", 13, 10, 0
msgFoundWater12 db "Falling on your latter end did hurt a lot.", 13, 10, 0


msgNothingHappens1 db "Nothing happens.", 13, 10, 0
msgNothingHappens2 db "You lose hp due to boredom.", 13, 10, 0
msgMotherWater db "As you move through the shaft door, you notice something strange.", 13, 10, 0
msgMotherWater2 db "It appears that one of the small shelves is slightly opened.", 13, 10, 0
msgMotherWater3 db "Go towards it?", 13, 10, 0
msgMotherWater4 db "Unsure of your choice, you walk to the shelf.", 13, 10, 0
msgMotherWater5 db "It is from Ash's desk.", 13, 10, 0
msgMotherWater6 db "Once you are near, you see 1 WATER inside.", 13, 10, 0
msgMotherWater7 db "How could this be? Ash did not need to drink any water.", 13, 10, 0
msgMotherWater8 db "He was able to and he was playing his role around us,", 13, 10, 0
msgMotherWater9 db "But only and Dallas were allowed to enter this space.", 13, 10, 0
msgMotherWater10 db "Did he try to fool himself too? No, he was a smart 'man'.", 13, 10, 0
msgMotherWater11 db "But this is not the time to be analysing this situation.", 13, 10, 0
msgMotherWater12 db "Thank you Ash, for this free water.", 13, 10, 0
msgMotherWater13 db "This seems too dangerous... I better not risk my life over this.", 13, 10, 0
msgMotherWater14 db "What was hidden in the drawer, you will never know.", 13, 10, 0
msgMotherWater15 db "You turn your back to the room.", 13, 10, 0
msgMotherWater16 db "You try to move forward, but you slip.", 13, 10, 0
msgMotherWater17 db "WHAM! Your head bangs on the door, you whimper in pain.", 13, 10, 0
msgMotherWater18 db "Holding your head in your palms,", 13, 10, 0
msgMotherWater19 db "You slowly make your way towards the shelf.", 13, 10, 0
msgMotherWater20 db "What is that... You are so confused, you cannot analyse the item properly.", 13, 10, 0
msgMotherWater21 db "It must be some liquid... so it must be 1 WATER.", 13, 10, 0
msgMotherWater22 db "But why is it here? Ash did not need to drink.", 13, 10, 0
msgMotherWater23 db "This is so weird, I should  out of here. My head hurts...", 13, 10, 0

msgPodsFoundChemfuel db "You look around and you decide to inspect one of the broken pods.", 13, 10, 0
msgPodsFoundChemfuel2 db "Hidden under the steering panels is a full canister of unused CHEMFUEL.", 13, 10, 0
msgPodsFoundChemfuel3 db "The God, if They even exist, must be looking out for you...", 13, 10, 0

msgWCHiddenPassage db "You opened up the stall door and you saw a broken crate to the vents.", 13, 10, 0
msgWCHiddenPassage2 db "It is leading up to something you cannot see.", 13, 10, 0
msgWCHiddenPassage3 db "Do you dare to go through?", 13, 10, 0
msgWCHiddenPassage4 db "Goosebumps appear on your skin, it must be shocked by your decision.", 13, 10, 0
msgWCHiddenPassage5 db "You crawl through the vents slowly. Your movements are making a lot of noise.", 13, 10, 0
msgWCHiddenPassage6 db "Hotter than before you emerge on the other side.", 13, 10, 0
msgWCHiddenPassage7 db "You have found yourself in a broken escape pod that was barred from the outside.", 13, 10, 0
msgWCHiddenPassage8 db "There must be some abandoned equipment you think to yourself.", 13, 10, 0
msgWCHiddenPassage9 db "Found hidden all around are 1 CHEMFUEL and 2 WATER.", 13, 10, 0
msgWCHiddenPassage10 db "Quickly, but steadily you go back to the WC stall. ", 13, 10, 0
msgWCHiddenPassage11 db "You feel so hot, this journey has made you sweat.", 13, 10, 0
msgWCHiddenPassage12 db "Do you pour WATER on yourself to cool down? ", 13, 10, 0
msgWCHiddenPassage13 db "You're so lucky you have just found some WATER.", 13, 10, 0
msgWCHiddenPassage14 db "It helps you keep your head and thoughts straight and focused on the goal.", 13, 10, 0
msgWCHiddenPassage15 db "Even though you have just found WATER, you want to keep it for special occasions.", 13, 10, 0
msgWCHiddenPassage16 db "But you feel so sick you collapse on the bathroom floor...", 13, 10, 0
msgWCHiddenPassage17 db "Thankfully it seems like the ALIEN is not nearby.", 13, 10, 0
msgWCHiddenPassage18 db "Maybe IT does not feel the need to pee.", 13, 10, 0
msgWCHiddenPassage19 db "You are safe for now, but you have slightly damaged yourself.", 13, 10, 0
msgWCHiddenPassage20 db "The flashes of hot air have made you lose your mind even more.", 13, 10, 0
msgWCHiddenPassage21 db "As you try to open the bottle of WATER you trip and land on the bathroom floor.", 13, 10, 0
msgWCHiddenPassage22 db "The bottle spills all of its contents around and you're left with nothing. ", 13, 10, 0
msgWCHiddenPassage23 db "Some of it has sprinkled on you, but you still have damaged yourself.", 13, 10, 0
msgWCHiddenPassage24 db "This is dangerous, you think to yourself.", 13, 10, 0
msgWCHiddenPassage25 db "No matter what goods I could potentially find on the side,", 13, 10, 0
msgWCHiddenPassage26 db "It is not worth it.", 13, 10, 0
msgWCHiddenPassage27 db "You turn around.", 13, 10, 0
msgWCHiddenPassage28 db "You try to examine the fallen crate for whatever reason.", 13, 10, 0
msgWCHiddenPassage29 db "You wonder what made it break? You slide your hand against the side.", 13, 10, 0
msgWCHiddenPassage30 db "It just stabs you in the finger. Obviously.", 13, 10, 0
msgWCHiddenPassage31 db "You try to stop the bleeding. It could alert the ALIEN.", 13, 10, 0
msgWCHiddenPassage32 db "Thankfully, since you are in the WC, you find some toilet paper right next to you.", 13, 10, 0
msgWCHiddenPassage33 db "Ripley, Ripley, you are such an idiot, what were you thinking? You mutter to yourself.", 13, 10, 0
msgWCHiddenPassage34 db "You have just wasted time here and needlessly hurt yourself.", 13, 10, 0
msgWCHiddenPassage35 db "Resignated, you turn around.", 13, 10, 0


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

msgTooHot db "As you enter the area, you start feeling increasingly dizzy.", 13, 10, 0
msgTooHot2 db "The fire that broke out one level below increased the temperature all around.", 13, 10, 0
msgTooHot3 db "Will you pour water on yourself to cool down?", 13, 10, 0
msgTooHot4 db "You can see more clearly now.", 13, 10, 0
msgTooHot5 db "It is time to focus.", 13, 10, 0
msgTooHot6 db "You feel yourself slipping away.", 13, 10, 0
msgTooHot7 db "To stay concious you try to punch yourself.", 13, 10, 0
msgTooHot8 db "It will work for now, but you need to find more water.", 13, 10, 0



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
msgStrangePassage4 db "You stare at the wall and the wall stares at you.\nIt takes so much time you  hurt by the hunger.", 13, 10, 0
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
msgMedbayGlass8 db "You somehow managed to  across the room safely.", 13, 10, 0
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

msgOpeningMenu db ".________________________________________________________________.", 13, 10, 0
msgOpeningMenu2 db "|     __ _    __    ____  ____  ____    __    _   _   __        |", 13, 10, 0
msgOpeningMenu3 db "|    (  ( \\ /  \\ / ___)(_  _)(  _ \\ /  \\ ( \\/ ) /  \\      |", 13, 10, 0
msgOpeningMenu4 db "|    /    /(  O )\\___ \\  )(   )   /(  O )/ \\/ \\(  O )       |", 13, 10, 0
msgOpeningMenu5 db "|    \\_)__) \\__/ (____/ (__) (__\\_) \\__/ \\_)(_/ \\__/      |", 13, 10, 0
msgOpeningMenu6 db "|          ____  ____   ___   __   ____  ____                   |", 13, 10, 0
msgOpeningMenu7 db "|         (  __)/ ___) / __) / _\\ (  _ \\(  __)                |", 13, 10, 0
msgOpeningMenu8 db "|          ) _) \\___ \\( (__ /    \\ ) __/ ) _)                |", 13, 10, 0
msgOpeningMenu9 db "|         (____)(____/ \\___)\\_/\\_/(__)  (____)               |", 13, 10, 0
msgOpeningMenu10 db ".______________________________________________________________.", 13, 10, 0
msgOpeningMenu11 db "MENU:", 13, 10, 0
msgOpeningMenu12 db "[start]", 13, 10, 0
msgOpeningMenu13 db "[help]", 13, 10, 0
msgOpeningMenu14 db "[map]", 13, 10, 0
msgOpeningMenu15 db "[exit]", 13, 10, 0

msgKaraoke db "You wasn`t able to type properly, so now help yourself with ukrainian karaoke!", 13, 10, 0
msgKaraoke1 db "Today in our menu:", 13, 10, 0
msgKaraoke2 db "Komaryk!", 13, 10, 0
msgKaraoke3 db "Oj, szczo to za szum uczynywsa,", 13, 10, 0
msgKaraoke4 db "Szczo Komaryk do povstanciw zholosywsa.", 13, 10, 0
msgKaraoke5 db "Zholosywsa Komar do powstanciw,", 13, 10, 0
msgKaraoke6 db "Szczob kusaty moskaliw-holodranciw.", 13, 10, 0
msgKaraoke7 db "Szczob kusaty moskaliw, szcze ji nimotu, ", 13, 10, 0
msgKaraoke8 db "Szczob prohnat z Ukrainy tu holotu. ", 13, 10, 0
msgKaraoke9 db "Prymistywsa Komar na duboczku, ", 13, 10, 0
msgKaraoke10 db "Prykripyw skorostril na lystoczku. ", 13, 10, 0
msgKaraoke11 db "Ta zirwalasa na raz szura-burya, ", 13, 10, 0
msgKaraoke12 db "Wona toho komaryka z duba zdula. ", 13, 10, 0
msgKaraoke13 db "I upaw nasz komar na pomosti, ", 13, 10, 0
msgKaraoke14 db "Polomaw moskaljam rebra ji kosti. ", 13, 10, 0
msgKaraoke15 db "Pohowaly moscalja jak sobaku (with enthuthiazm), ", 13, 10, 0
msgKaraoke16 db "Wydno ruky, wydno nohy wydno spynu. ", 13, 10, 0
msgKaraoke17 db "Pohowaly moscalja jak sobaku (each word seperately), ", 13, 10, 0
msgKaraoke18 db "Wydno ruky...", 13, 10, 0
msgKaraoke19 db "Wydno nohy...", 13, 10, 0
msgKaraoke20 db "Wydno spynu! ", 13, 10, 0


msgWinningScreen db "As soon as you open the useless vault, you pour the CHEMFUEL into the reservoir.", 13, 10, 0
msgWinningScreen2 db "It is ready now. ", 13, 10, 0
msgWinningScreen3 db "By forcing yourself to stop checking your back for just a few seconds, you barge into the pod.", 13, 10, 0
msgWinningScreen4 db "A small ginger creature slithers between your legs.It is Jonesy.", 13, 10, 0
msgWinningScreen5 db "You close the pad and prepare for takeoff.", 13, 10, 0
msgWinningScreen6 db "After a short while, which feels like your last moments, the spaceship starts to move away from you...", 13, 10, 0
msgWinningScreen7 db "You take your recorder and turn it on.", 13, 10, 0
msgWinningScreen8 db "This is Ripley,", 13, 10, 0
msgWinningScreen9 db "W564502460H, executive officer,", 13, 10, 0
msgWinningScreen10 db "last survivor of the commercial", 13, 10, 0
msgWinningScreen11 db "starship Nostromo signing off.", 13, 10, 0
msgWinningScreen12 db "._______________________________________________________________________________.", 13, 10, 0
msgWinningScreen13 db "|     _   _  __    _  _     __   ____  ____     __   __    __  _  _  ____         |", 13, 10, 0
msgWinningScreen14 db "|    ( \\/ )/  \\ / )( \\   / _\\ (  _ \\(  __)   / _\\ (  )  (  )/ )( \\(  __)        |", 13, 10, 0
msgWinningScreen15 db "|     )  /(  O )) \\/ (  /    \\ )   / ) _)   /    \\/ (_/\\ )( \\ \\/ / ) _)  _      |", 13, 10, 0
msgWinningScreen16 db "|    (__/  \\__/ \\____/  \\_/\\_/(__\\_)(____)  \\_/\\_/\\____/(__) \\__/ (____)(_)     |", 13, 10, 0
msgWinningScreen17 db "._______________________________________________________________________________.", 13, 10, 0

msgGameoverScreen db "All your injuries... They slow you down.", 13, 10, 0
msgGameoverScreen2 db "You have endured a lot of damage, but you are human.", 13, 10, 0
msgGameoverScreen3 db "As your blood marks the path you've taken...", 13, 10, 0
msgGameoverScreen4 db "It has lead the ALIEN right to you...", 13, 10, 0
msgGameoverScreen5 db ".______________________________________________________.", 13, 10, 0
msgGameoverScreen6 db "|      ___   __   _  _  ____  __   _  _  ____  ____    |", 13, 10, 0
msgGameoverScreen7 db "|     / __) / _\\ ( \\/ )(  __)/  \\ / )( \\(  __)(  _ \\   |", 13, 10, 0
msgGameoverScreen8 db "|    ( (_ \\/    \\/ \\/ \\ ) _)(  O )\\ \\/ / ) _)  )   /   |", 13, 10, 0
msgGameoverScreen9 db "|     \\___/\\_/\\_/\\_)(_/(____)\\__/  \\__/ (____)(__\\_)   |", 13, 10, 0
msgGameoverScreen10 db ".______________________________________________________.", 13, 10, 0




cmdAlertly db "alertly", 0
cmdClosely db "closely", 0
cmdStart db "start", 0
cmdHelp db "help", 0
cmdMap db "map", 0
cmdExit db "exit", 0
cmd2120 db "2120", 0
cmd2122 db "2122", 0
cmd1234 db "1234", 0
cmdFire db "FIRE", 0
cmdFlame db "FLAME", 0

hp dd 5 
passwordCounter dd 0
terminalSeconds dd 5
water dd 10
chemfuel db 0
roomNumber db 0
isSingleTimeEvent db 1, 1, 1, 1,  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
buffer db 100 dup(0)
userInput db 100 dup(0)
roomHidingLocations DWORD offset location1, offset location2
bufferHidingLocations DWORD offset location1, offset location2 
location1 BYTE "Behind the tall cabinets next to you.", 13, 10, 0
location2 BYTE "Near the main console, under the desk.", 13, 10, 0
format db "%d ",  0

; List of single time events
singleTimeEventsTab DWORD OFFSET foundWater, OFFSET foundChemfuel, OFFSET bridgeConsole, OFFSET WCHiddenPassage, OFFSET medbayAsh, OFFSET motherPanel, OFFSET motherWater, OFFSET galleyWater, OFFSET podsFoundChemfuel

.code

; @brief Checks if event is in the array of single time events: singleTimeEventsTab.
;        If so returns 1 (true) through eax, and 0 (false) otherwise
; @param eventPtr Pointer to procedure.
; @return eax = 1 if the eventPtr value is in the array singleTimeEventsTab.
;         eax = 0 if not.
isSingleTimeEventProc PROC eventPtr : DWORD
    INVOKE checkIfInArray, eventPtr, addr singleTimeEventsTab, LENGTHOF singleTimeEventsTab
    ret
isSingleTimeEventProc ENDP

;Event medbayAsh
medbayAsh proc
    print addr msgAsh
    print addr msgAsh2
    print addr msgAsh3
    print addr msgAsh4


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
    print addr msgAsh5
    print addr msgAsh6
    print addr msgAsh7
    print addr msgAsh8
    print addr msgAsh9
    print addr msgAsh10
    print addr msgAsh11
    print addr msgAsh12


    mov edx, offset buffer
    mov ecx, sizeof buffer
    invoke StdIn, edx, ecx
    
    mov esi, offset buffer
    movzx eax, byte ptr [esi]   
        
    mov buffer, al  
    cmp al, '1'
    je choice21
    cmp al, '2'
    je choice22 
    cmp al, '3'
    je choice23
    jmp choice2None
    ret
    
choice21:
    print addr msgAsh13
    print addr msgAsh14
    print addr msgAsh15
    print addr msgAsh16
    invoke Sleep, 1000
    print addr msgAsh17
    invoke Sleep, 1000
    print addr msgAsh18
    print addr msgAsh19
    print addr msgAsh20
    print addr msgAsh21
    print addr msgAsh22
    print addr msgAsh23
    print addr msgAsh24
    print addr msgAsh25
    print addr msgAsh26
    jmp Continue
    
choice22:
    print addr msgAsh27
    print addr msgAsh28
    print addr msgAsh29
    print addr msgAsh30
    print addr msgAsh31
    print addr msgAsh32
    print addr msgAsh33
    print addr msgAsh34
    print addr msgAsh35
    print addr msgAsh36
    print addr msgAsh37
    print addr msgAsh38

    mov eax, [hp]
    sub eax, 1
    mov [hp], eax  
    jmp Continue

choice23:
    print addr msgAsh39
    print addr msgAsh40
    print addr msgAsh41
    print addr msgAsh42
    print addr msgAsh43
    print addr msgAsh44
    print addr msgAsh45
    print addr msgAsh46
    jmp Continue
    
choice2None:
    mov eax, [water]         
    cmp eax, 0              
    jle waterEmptyAsh 
    jmp waterNotEmptyAsh
    
    
waterNotEmptyAsh:
    print addr msgAsh47
    print addr msgAsh48
    print addr msgAsh49
    print addr msgAsh50
    print addr msgAsh51
    print addr msgAsh52
    print addr msgAsh53
    print addr msgAsh54
    
    mov eax, [water]
    sub eax, 1
    mov [water], eax 

    jmp Continue

waterEmptyAsh:
    print addr msgAsh55
    print addr msgAsh56
    print addr msgAsh57
    print addr msgAsh58
    invoke Sleep, 1000
    print addr msgAsh59
    print addr msgAsh60
    print addr msgAsh61
    print addr msgAsh62
    print addr msgAsh63
    print addr msgAsh64
    print addr msgAsh65
    jmp Continue

Continue:
    print addr msgAsh66
    print addr msgAsh67
    print addr msgAsh68
    print addr msgAsh69
    print addr msgAsh70
    
    mov eax, [water]
    add eax, 1
    mov [water], eax 
    
;    mov eax, [chemfuel]
    add eax, 2
;    mov [chemfuel], eax
    ret
    
choice1N:
    print addr msgAsh71
    print addr msgAsh72
    print addr msgAsh73
    ret
    
    
choice1None:
    print addr msgAsh74
    print addr msgAsh75
    print addr msgAsh76
    print addr msgAsh77
    print addr msgAsh78
    print addr msgAsh79
    print addr msgAsh80
    print addr msgAsh81
    print addr msgAsh82
    print addr msgAsh83
    print addr msgAsh84
    print addr msgAsh85

    mov eax, [hp]
    sub eax, 2
    mov [hp], eax   
    ret


medbayAsh endp

;Event jonesyJumpscare
jonesyJumpscare proc
    print addr msgJonesyJumpscare
    print addr msgJonesyJumpscare2
    invoke StdOut, roomHidingLocations[0]
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
    invoke crt__getch


    invoke GetTickCount          
    xor edx, edx
    mov ecx, 2
    div ecx  
       
    cmp edx, 1
    jne noSwap
    
    mov eax, bufferHidingLocations[0]
    mov ebx, bufferHidingLocations[4]
    mov bufferHidingLocations[0], ebx
    mov bufferHidingLocations[4], eax
    
    mov eax, edx
    shl eax, 2                   
    lea esi, bufferHidingLocations
    add esi, eax
    mov esi, [esi]
    
    print addr msgAlienHide2
    print addr msgAlienHide3
    invoke StdOut, bufferHidingLocations[0]
    print addr msgAlienHide4
    invoke StdOut, bufferHidingLocations[4]
    print addr msgAlienHide5
    
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
    je choice11
    cmp al, '2'     
    je choice12
    jmp choice2

    
noSwap:  
    mov eax, edx
    shl eax, 2                   
    lea esi, bufferHidingLocations
    add esi, eax
    mov esi, [esi]
    
    print addr msgAlienHide2
    print addr msgAlienHide3
    invoke StdOut, bufferHidingLocations[0]
    print addr msgAlienHide4
    invoke StdOut, bufferHidingLocations[4]
    print addr msgAlienHide5
    
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
    je choice11
    cmp al, '2'     
    je choice12
    jmp choice2


choice11:
    print addr msgAlienHide6
    print addr msgAlienHide7
    print addr msgAlienHide8

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

    mov eax, roomHidingLocations[0]
    mov ebx, bufferHidingLocations[0]
    cmp eax, ebx
    je  choceGood
    jmp choceBad
    
choice12:
    print addr msgAlienHide6
    print addr msgAlienHide7
    print addr msgAlienHide8

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

    mov eax, roomHidingLocations[0]
    mov ebx, bufferHidingLocations[4]
    cmp eax, ebx
    je  choceGood
    jmp choceBad

choceGood:
    print addr msgAlienHide9
    print addr msgAlienHide10
    print addr msgAlienHide11
    print addr msgAlienHide12
    print addr msgAlienHide13
    ret
    
choceBad:
    print addr msgAlienHide14
    print addr msgAlienHide15
    print addr msgAlienHide16
    print addr msgAlienHide17
    print addr msgAlienHide18

    mov eax, [hp]
    sub eax, 2
    mov [hp], eax  
    ret


choice2:
    print addr msgAlienHide21
    print addr msgAlienHide22
    print addr msgAlienHide23
    print addr msgAlienHide24
    print addr msgAlienHide25
    print addr msgAlienHide16
    print addr msgAlienHide17
    print addr msgAlienHide18 

    mov eax, [hp]
    sub eax, 2
    mov [hp], eax  
    ret
choice3:
    print addr msgAlienHide19
    print addr msgAlienHide20
    print addr msgAlienHide16
    print addr msgAlienHide17
    print addr msgAlienHide18 

    mov eax, [hp]
    sub eax, 2
    mov [hp], eax  
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
    
    mov eax, [water]
    add eax, 3
    mov [water], eax 
    ret
galleyWater endp

;Event motherPanel
motherPanel proc
    print addr msgMotherPanel
    print addr msgMotherPanel2
    print addr msgMotherPanel3
    print addr msgMotherPanel4
    print addr msgMotherPanel5
    print addr msgMotherPanel6

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
    
    ret

choice1Y:
    print addr msgMotherPanel7
    print addr msgMotherPanel8
    print addr msgMotherPanel9


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


choice2Y:
    print addr msgMotherPanel10
    jmp terminalLoop

terminalLoop:

    print addr msgMotherPanel11
    
    mov edi, offset buffer
    mov ecx, 100
    xor al, al
    rep stosb
    
    mov edx, offset buffer
    mov ecx, sizeof buffer
    invoke StdIn, edx, ecx
    
    invoke StripLF, addr buffer
    
    invoke szCmp, addr buffer, addr cmd2120
    cmp eax, 0  
    jne Route2120

    invoke szCmp, addr buffer, addr cmd2122
    cmp eax, 0  
    jne Route2122

    invoke szCmp, addr buffer, addr cmd1234
    cmp eax, 0  
    jne Route1234

    mov eax, passwordCounter          
    cmp eax, 2              
    jae terminalBlocked 
    

    jmp incorrect
    
Route2120:
    print addr msgMotherPanel13
    print addr msgMotherPanel14
    
    mov eax, passwordCounter
    add eax, 1
    mov passwordCounter, eax 

    jmp terminalLoop

incorrect:
    print addr msgMotherPanel13
    mov eax, passwordCounter
    add eax, 1
    mov passwordCounter, eax 

    jmp terminalLoop
    
Route1234:
    call karaokeProc
    ret


terminalBlocked:
    print addr msgMotherPanel31
    print addr msgMotherPanel32
    print addr msgMotherPanel33
    print addr msgMotherPanel34
    ret



Route2122:
    print addr msgMotherPanel12
    invoke crt__getch
    print addr msgMotherPanel15
    print addr msgMotherPanel16
    print addr msgMotherPanel17
    print addr msgMotherPanel18
    
    print addr msgMotherPanel19
    
    print addr msgMotherPanel20
    invoke crt_printf, addr format, terminalSeconds
    print addr msgMotherPanel21
    
    mov eax, terminalSeconds
    sub eax, 1
    mov terminalSeconds, eax  
    invoke Sleep, 1000

    print addr msgMotherPanel20
    invoke crt_printf, addr format, terminalSeconds
    print addr msgMotherPanel21
    
    mov eax, terminalSeconds
    sub eax, 1
    mov terminalSeconds, eax  
    invoke Sleep, 1000

    print addr msgMotherPanel20
    invoke crt_printf, addr format, terminalSeconds
    print addr msgMotherPanel21
    
    mov eax, terminalSeconds
    sub eax, 1
    mov terminalSeconds, eax  
    invoke Sleep, 1000

    print addr msgMotherPanel20
    invoke crt_printf, addr format, terminalSeconds
    print addr msgMotherPanel21
    
    mov eax, terminalSeconds
    sub eax, 1
    mov terminalSeconds, eax  
    invoke Sleep, 1000

    print addr msgMotherPanel20
    invoke crt_printf, addr format, terminalSeconds
    print addr msgMotherPanel21
    
    mov eax, terminalSeconds
    sub eax, 1
    mov terminalSeconds, eax  
    invoke Sleep, 1000

    print addr msgMotherPanel22


    print addr msgMotherPanel23
    print addr msgMotherPanel24
    print addr msgMotherPanel25
    print addr msgMotherPanel26
    print addr msgMotherPanel27
    print addr msgMotherPanel28
    print addr msgMotherPanel29
    print addr msgMotherPanel30
    
    ret
choice2N:
    print addr msgMotherPanel35
    print addr msgMotherPanel36
    print addr msgMotherPanel37
    print addr msgMotherPanel38
    print addr msgMotherPanel39
    ret

choice2None:
    print addr msgMotherPanel40
    print addr msgMotherPanel41
    print addr msgMotherPanel42
    print addr msgMotherPanel43

    print addr msgMotherPanel18
    
    print addr msgMotherPanel19
    
    print addr msgMotherPanel20
    invoke crt_printf, addr format, terminalSeconds
    print addr msgMotherPanel21
    
    mov eax, terminalSeconds
    sub eax, 1
    mov terminalSeconds, eax  
    invoke Sleep, 1000

    print addr msgMotherPanel20
    invoke crt_printf, addr format, terminalSeconds
    print addr msgMotherPanel21
    
    mov eax, terminalSeconds
    sub eax, 1
    mov terminalSeconds, eax  
    invoke Sleep, 1000

    print addr msgMotherPanel20
    invoke crt_printf, addr format, terminalSeconds
    print addr msgMotherPanel21
    
    mov eax, terminalSeconds
    sub eax, 1
    mov terminalSeconds, eax  
    invoke Sleep, 1000

    print addr msgMotherPanel20
    invoke crt_printf, addr format, terminalSeconds
    print addr msgMotherPanel21
    
    mov eax, terminalSeconds
    sub eax, 1
    mov terminalSeconds, eax  
    invoke Sleep, 1000

    print addr msgMotherPanel20
    invoke crt_printf, addr format, terminalSeconds
    print addr msgMotherPanel21
    
    mov eax, terminalSeconds
    sub eax, 1
    mov terminalSeconds, eax  
    invoke Sleep, 1000

    print addr msgMotherPanel22


    print addr msgMotherPanel23
    print addr msgMotherPanel24
    print addr msgMotherPanel25
    print addr msgMotherPanel26
    print addr msgMotherPanel27
    print addr msgMotherPanel28
    print addr msgMotherPanel29
    print addr msgMotherPanel30
    ret
    
choice1N:
    print addr msgMotherPanel44
    print addr msgMotherPanel45
    print addr msgMotherPanel46
    print addr msgMotherPanel47
    print addr msgMotherPanel48
    ret
    
choice1None:
    print addr msgMotherPanel49
    print addr msgMotherPanel50
    print addr msgMotherPanel51
    print addr msgMotherPanel52
    print addr msgMotherPanel53
    print addr msgMotherPanel54
    print addr msgMotherPanel55
    print addr msgMotherPanel56
    print addr msgMotherPanel57
    ret
motherPanel endp

;Event alienFire
alienFire proc
    print addr msgAlienFire
    print addr msgAlienFire2
    print addr msgAlienFire3
    print addr msgAlienFire4


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
    invoke GetTickCount
    invoke nseed, eax
    invoke nrandom, 2
    cmp eax, 0
    je showMsg1
    jmp showMsg2


showMsg1:
    print addr msgAlienFire5
    mov edi, offset buffer
    mov ecx, 100
    xor al, al
    rep stosb
    
    invoke GetTickCount
    mov ebx, eax        
    add ebx, 10000 
    
    mov edx, offset buffer
    mov ecx, sizeof buffer
    invoke StdIn, edx, ecx
    
    
    invoke GetTickCount
    cmp eax, ebx
    jge doFailure         
    invoke StripLF, addr buffer
    invoke szCmp, addr buffer, addr cmdFlame
    cmp eax, 0  
    je doFailure
    jmp doSuccess
    
showMsg2:
    print addr msgAlienFire6
    mov edi, offset buffer
    mov ecx, 100
    xor al, al
    rep stosb
    
    invoke GetTickCount
    mov ebx, eax        
    add ebx, 10000 
    
    mov edx, offset buffer
    mov ecx, sizeof buffer
    invoke StdIn, edx, ecx
    
    
    invoke GetTickCount
    cmp eax, ebx
    jge doFailure         
    invoke StripLF, addr buffer
    invoke szCmp, addr buffer, addr cmdFire
    cmp eax, 0  
    je doFailure
    jmp doSuccess
    

doSuccess:
    print addr msgAlienFire7
    print addr msgAlienFire8
    print addr msgAlienFire9
    print addr msgAlienFire10
    print addr msgAlienFire11
    print addr msgAlienFire12  
    ret

doFailure:
    print addr msgAlienFire13
    print addr msgAlienFire14
    print addr msgAlienFire15
    print addr msgAlienFire16
    print addr msgAlienFire17
    print addr msgAlienFire18  
    print addr msgAlienFire19
    print addr msgAlienFire20

    mov eax, [hp]
    sub eax, 1
    mov [hp], eax  
    ret  

choice1N:
    print addr msgAlienFire21
    print addr msgAlienFire22
    print addr msgAlienFire23
    print addr msgAlienFire24
    print addr msgAlienFire25
    print addr msgAlienFire26  
    print addr msgAlienFire27

    mov eax, [hp]
    sub eax, 2
    mov [hp], eax   
    ret 

choice1None:
    print addr msgAlienFire28
    print addr msgAlienFire29
    print addr msgAlienFire30
    print addr msgAlienFire31
    print addr msgAlienFire32
    print addr msgAlienFire33  
    print addr msgAlienFire34


    mov eax, [hp]
    sub eax, 2
    mov [hp], eax  

    mov eax, [water]          
    cmp eax, 0              
    jle waterEmptyAsh 
    jmp waterNotEmptyAsh

waterNotEmptyAsh:
    print addr msgAlienFire35  
    print addr msgAlienFire36
    print addr msgAlienFire37  

    mov eax, [water]
    sub eax, 1
    mov [water], eax 
    
    jmp waterEmptyAsh


waterEmptyAsh:   
    print addr msgAlienFire38  
    print addr msgAlienFire39

    mov eax, [hp]
    sub eax, 2
    mov [hp], eax  
    ret

alienFire endp

;Event nothingHappens
nothingHappens proc
    print addr msgNothingHappens1
    print addr msgNothingHappens2
    
    mov eax, [hp]
    sub eax, 1
    mov [hp], eax  
    
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
    ;mov byte ptr [esi+5], 0  
    print addr msgMotherWater
    print addr msgMotherWater2
    print addr msgMotherWater3


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
    
    ret

choice1Y:
    print addr msgMotherWater4
    print addr msgMotherWater5
    print addr msgMotherWater6
    print addr msgMotherWater7
    print addr msgMotherWater8
    print addr msgMotherWater9
    print addr msgMotherWater10
    print addr msgMotherWater11
    print addr msgMotherWater12

    mov eax, [water]
    add eax, 1
    mov [water], eax 
    ret

choice1N:
    print addr msgMotherWater13
    print addr msgMotherWater14
    print addr msgMotherWater15
    ret

choice1None:
    print addr msgMotherWater16
    print addr msgMotherWater17
    print addr msgMotherWater18
    print addr msgMotherWater19
    print addr msgMotherWater20
    print addr msgMotherWater21
    print addr msgMotherWater22
    print addr msgMotherWater23
    
    mov eax, [water]
    add eax, 1
    mov [water], eax 

    mov eax, [hp]
    sub eax, 1
    mov [hp], eax  
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
    ;mov byte ptr [esi+5], 0  
    print addr msgPodsFoundChemfuel
    print addr msgPodsFoundChemfuel2
    print addr msgPodsFoundChemfuel3
    
;    mov eax, [chemfuel]
    add eax, 1
;    mov [chemfuel], eax

    ret

podsFoundChemfuel endp


;Event tooHot
tooHot proc
    print addr msgTooHot
    print addr msgTooHot2
    print addr msgTooHot3

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
    je choice1None
    cmp al, 'N'
    je choice1None
    jmp choice1None
    


choice1Y:
    print addr msgTooHot4
    print addr msgTooHot5

    mov eax, [water]
    sub eax, 2
    mov [water], eax  
    ret
    
choice1None:
    print addr msgTooHot6
    print addr msgTooHot7
    print addr msgTooHot8

    mov eax, [hp]
    sub eax, 1
    mov [hp], eax  
    ret
tooHot endp

;Event foundChemfuel
foundChemfuel proc
    print addr msgFoundChemFuel
    print addr msgFoundChemFuel2

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
    print addr msgFoundChemFuel3
    print addr msgFoundChemFuel4
    print addr msgFoundChemFuel5
    
;    mov eax, [chemfuel]
    add eax, 1
;    mov [chemfuel], eax
    
    ret

choice1N:
    print addr msgFoundChemFuel6
    print addr msgFoundChemFuel7
    
    
    ret
    
choice1None:
    print addr msgFoundChemFuel8
    print addr msgFoundChemFuel9
    print addr msgFoundChemFuel10

    mov eax, [hp]
    sub eax, 1
    mov [hp], eax  
    ret
foundChemfuel endp


;Event foundWater
foundWater proc
    print addr msgFoundWater
    print addr msgFoundWater2

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
    print addr msgFoundWater3
    print addr msgFoundWater4
    print addr msgFoundWater5
    
    mov eax, [water]
    add eax, 1
    mov [water], eax 
    
    ret

choice1N:
    print addr msgFoundWater6
    print addr msgFoundWater7
    print addr msgFoundWater8
    print addr msgFoundWater9
    
    ret
    
choice1None:
    print addr msgFoundWater10
    print addr msgFoundWater11
    print addr msgFoundWater12

    mov eax, [hp]
    sub eax, 1
    mov [hp], eax  
    ret
foundWater endp



;Event WCHiddenPassage
WCHiddenPassage proc
mov esi, offset isSingleTimeEvent
mov al, [esi+8]
cmp al, 1
je isAllowed
ret

isAllowed:
    ;mov byte ptr [esi+5], 0  
    print addr msgWCHiddenPassage
    print addr msgWCHiddenPassage2
    print addr msgWCHiddenPassage3


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
    
    ret
choice1Y:
    print addr msgWCHiddenPassage4
    print addr msgWCHiddenPassage5
    print addr msgWCHiddenPassage6
    print addr msgWCHiddenPassage7
    print addr msgWCHiddenPassage8
    print addr msgWCHiddenPassage9
    invoke crt__getch

;    mov eax, [chemfuel]
    add eax, 1
;    mov [chemfuel], eax

    mov eax, [water]
    add eax, 1
    mov [water], eax
    
    print addr msgWCHiddenPassage10
    print addr msgWCHiddenPassage11
    print addr msgWCHiddenPassage12


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
    
choice2Y:
    print addr msgWCHiddenPassage13
    print addr msgWCHiddenPassage14
    
    mov eax, [water]
    sub eax, 1
    mov [water], eax  
    ret
choice2N:
    print addr msgWCHiddenPassage15
    print addr msgWCHiddenPassage16
    print addr msgWCHiddenPassage17
    print addr msgWCHiddenPassage18
    print addr msgWCHiddenPassage19
    
    mov eax, [hp]
    sub eax, 1
    mov [hp], eax 
    ret   
choice2None:
    print addr msgWCHiddenPassage20
    print addr msgWCHiddenPassage21
    print addr msgWCHiddenPassage22
    print addr msgWCHiddenPassage23
    
    mov eax, [water]
    sub eax, 1
    mov [water], eax  
    
    mov eax, [hp]
    sub eax, 1
    mov [hp], eax 
    
    ret 
    
choice1N:
    print addr msgWCHiddenPassage24
    print addr msgWCHiddenPassage25
    print addr msgWCHiddenPassage26
    print addr msgWCHiddenPassage27
    ret
    
choice1None:
    print addr msgWCHiddenPassage28
    print addr msgWCHiddenPassage29
    print addr msgWCHiddenPassage30
    print addr msgWCHiddenPassage31    
    print addr msgWCHiddenPassage32
    print addr msgWCHiddenPassage33
    print addr msgWCHiddenPassage34
    print addr msgWCHiddenPassage35
    mov eax, [hp]
    sub eax, 1
    mov [hp], eax 
    
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
    ;mov byte ptr [esi+10], 0  
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
    
;    mov eax, [chemfuel]
    add eax, 2
;    mov [chemfuel], eax
    
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
     
;    mov eax, [chemfuel]
    add eax, 2
;    mov [chemfuel], eax
    
    mov eax, [hp]
    sub eax, 1
    mov [hp], eax  
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
    mov eax, [hp]
    sub eax, 2
    mov [hp], eax  
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
    mov eax, [water]
    sub eax, 1
    mov [water], eax 
    ret
    
choice1None:
    print addr msgThirst4
    mov eax, [hp]
    sub eax, 1
    mov [hp], eax  
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
    mov eax, [hp]
    sub eax, 1
    mov [hp], eax  
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
    
;    mov eax, [chemfuel]
    add eax, 2
;    mov [chemfuel], eax
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
;    mov eax, [chemfuel]
    add eax, 2
;    mov [chemfuel], eax
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
    jmp showMsg2  ;                   jmp         cmp eax, 1
   
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
    
;    mov eax, [chemfuel]
    add eax, 2
;    mov [chemfuel], eax
    
    mov eax, [water]
    add eax, 1
    mov [water], eax 
    

    mov esi, offset isSingleTimeEvent
    mov byte ptr [esi], 0 
    ret
    
doFailure:  
    print addr msgMedbayGlass11
    print addr msgMedbayGlass12
    print addr msgMedbayGlass13
    print addr msgMedbayGlass14
    
    mov eax, [hp]
    sub eax, 1
    mov [hp], eax  
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
    invoke crt__getch
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
    invoke crt__getch
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
    invoke crt__getch
    ret
openingScene endp


;Event karaoke to play on your nerves
karaokeProc proc
    print addr msgKaraoke 
    print addr msgKaraoke1 
    invoke Sleep, 2000
    print addr msgKaraoke2
    invoke Sleep, 2000
    
    print addr msgKaraoke3
    invoke Sleep, 4000
    print addr msgKaraoke4
    invoke Sleep, 3000
    print addr msgKaraoke4
    invoke Sleep, 3000  
      
    print addr msgKaraoke5
    invoke Sleep, 4000
    print addr msgKaraoke6
    invoke Sleep, 3000
    print addr msgKaraoke6
    invoke Sleep, 3000  

    print addr msgKaraoke7
    invoke Sleep, 4000
    print addr msgKaraoke8
    invoke Sleep, 3000
    print addr msgKaraoke8
    invoke Sleep, 3000  
    
    print addr msgKaraoke9
    invoke Sleep, 4000
    print addr msgKaraoke10
    invoke Sleep, 3000
    print addr msgKaraoke10
    invoke Sleep, 3000 

    print addr msgKaraoke11
    invoke Sleep, 4000
    print addr msgKaraoke12
    invoke Sleep, 3000
    print addr msgKaraoke12
    invoke Sleep, 3000 
    
    print addr msgKaraoke13
    invoke Sleep, 4000
    print addr msgKaraoke14
    invoke Sleep, 3000
    print addr msgKaraoke14
    invoke Sleep, 3000 

    print addr msgKaraoke15
    invoke Sleep, 4000
    print addr msgKaraoke16
    invoke Sleep, 3000
    print addr msgKaraoke16
    invoke Sleep, 3000 
    
    print addr msgKaraoke17
    invoke Sleep, 5000
    print addr msgKaraoke18
    invoke Sleep, 4000
    print addr msgKaraoke19
    invoke Sleep, 4000 
    print addr msgKaraoke20
    invoke Sleep, 4000  
karaokeProc endp

;Event openingMenu
openingMenu proc
    print addr msgOpeningMenu
    print addr msgOpeningMenu2
    print addr msgOpeningMenu3
    print addr msgOpeningMenu4
    print addr msgOpeningMenu5
    print addr msgOpeningMenu6
    print addr msgOpeningMenu7
    print addr msgOpeningMenu8
    print addr msgOpeningMenu9
    print addr msgOpeningMenu10
    print addr msgOpeningMenu11
    print addr msgOpeningMenu12
    print addr msgOpeningMenu13
    print addr msgOpeningMenu14
    print addr msgOpeningMenu15

    
    mov edi, offset buffer
    mov ecx, 100
    xor al, al
    rep stosb
    
    mov edx, offset buffer
    mov ecx, sizeof buffer
    invoke StdIn, edx, ecx
    
    invoke StripLF, addr buffer
    

    invoke szCmp, addr buffer, addr cmdStart
    cmp eax, 0  
    jne startRoute
    
    ;                   help
    invoke szCmp, addr buffer, addr cmdHelp
    cmp eax, 0  
    jne helpRoute
    

    invoke szCmp, addr buffer, addr cmdMap
    cmp eax, 0  
    jne mapRoute
    

    invoke szCmp, addr buffer, addr cmdExit
    cmp eax, 0  
    jne exitRoute
    

    jmp karaoke
startRoute:
    call openingScene
    ret

helpRoute:
    ;Help! At least anybody Help! At least Somebody Help! HeLp...
    call help
    ret

mapRoute:
    call map
    ret

exitRoute:

    invoke ExitProcess, 0
    ret

karaoke:
    call karaokeProc   
    ret

openingMenu endp

;Event winningScreen
winningScreen proc
    print addr msgWinningScreen
    print addr msgWinningScreen2
    print addr msgWinningScreen3
    print addr msgWinningScreen4
    print addr msgWinningScreen5
    print addr msgWinningScreen6
    print addr msgWinningScreen7
    invoke crt__getch
    print addr msgWinningScreen8
    invoke crt__getch
    print addr msgWinningScreen9
    invoke crt__getch
    print addr msgWinningScreen10
    invoke crt__getch
    print addr msgWinningScreen11
    invoke crt__getch
    print addr msgWinningScreen12
    print addr msgWinningScreen13
    print addr msgWinningScreen14
    print addr msgWinningScreen15
    print addr msgWinningScreen16
    print addr msgWinningScreen17
    ret

    
winningScreen endp

;Event gameoverScreen
gameoverScreen proc
    invoke Sleep, 2500
    print addr msgGameoverScreen
    invoke Sleep, 2500
    print addr msgGameoverScreen2
    invoke Sleep, 2500
    print addr msgGameoverScreen3
    invoke Sleep, 2500
    print addr msgGameoverScreen4
    invoke Sleep, 2500
    print addr msgGameoverScreen5
    print addr msgGameoverScreen6
    print addr msgGameoverScreen7
    print addr msgGameoverScreen8
    print addr msgGameoverScreen9
    print addr msgGameoverScreen10
    ret

    
gameoverScreen endp

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
    ;call map
    ;call openingScene
    ;call openingMenu
    ;call karaokeProc

    ;call tooHot

    ;call foundChemfuel
    ;call foundWater
    ;call winningScreen
    ;call gameoverScreen
    exit
end start









;$&&&&&&&&&&&XX$$Xx+;+xxX$$$$&$&$$$$$$$&$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$X$$$$$$$$XXX+;+x+;:+$$$$$$$$xx$&&&&&&&&&&
;&&$$&&&&&&$$X$$&$x;;+X$&$$$X$$&$$$$$$$$$$$$$$$&$$$$$$$$$$$$$$$$$$$$$$$$$$$$XX$XX$$$$$$x+++;;+;:;X$$$$$$$&$+X&&&&&&&&&&
;&&&&&$&&&&&&$$&$Xx;+X$$$$$&&&$&&&$$$$$&$&$$$&$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$XX$+XXXX$$Xx;;;;;+$$$$$$X$&$X+X&&&&&&&&&
;&&&&&&&&$&&&&&$&X+x$$&$&&&&&&$&$$$&&$$$$$$$$&$&$$$$$$$$$$$&$$$$$$$$$$$$$$$$$$$$$X$XXxX$$$x++;;;XX$$&$$&$&$$X+X&&&&&&&&
;&&&&&$&&&$$$&&&&X+$$$&&&&&&&&&$$$&$$$$$$$$&$$$&&&$$$&$$$$$$$&$$$&$$$$$$$$$$$$$$$$$XX$$$$$$Xx;:;x$$$&&$$$&&&&$++$&&&&&&
;&&&&&&&&&&&&&&&$XX&&&&$&&&&&&&&&&&&$$&$$&&$$$$$$$$&$$$$$$$$$$$$$$$&$$$$$$$$$$$$$$$$X$&$$$XXx;;;:x$$$$$$&$$$$&$X;X&&&&&
;&&&&&&&&&&&&&&&X;X$X$$$&$&$&$&&$$&&$$&&$$$$$XX$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$X$+++;;:;X$$$$$$$$&$$$&$&++&&&$;
;&&&&&&&&&&&&&$$+x$&$$&$&$$&&$&&&&&&&&$&&XX$Xx$$$$$XX+;;;;:;;;;;+XX$$$$$$$$$$$$$$$$$$$$X+++++::+$$$&$&&&$&$&&$$&X+x&&X;
;&&&&&&&&&&&&&&x+X$&&&&&&&&&&$&&&$&&&$&$$X$$x$$$$X+;::;;;:;;x$&&$x;;xX$$$$$$$$$$$$$$$$$$$Xx+;;xX&$$$$X$$$$$$$$$$$X++$$;
;XXX$$$&&&&&&&&+$&&&&&&&&&&$&&&&&&&$&$&$$xXX+$$X+;;::;:;;;X$X$&&$$x;;;+$$$$$$$$$$$X$$XX$XXXx;;xX$$$$$$$XX$$$&$&&&$$X+x&
;&&$$$XXXXXXXXXX$$&&&&&&&&&&&&&&&&&&&$&&$+X+XX+;::;:;:;+X$$$&&&&$x;;;;:;+X$$$$$$$&$$$X$$$XX+;;+X&$$XX$$$&$$$$$$$$&$$$++
;&&&&&&&&&&&&$$$&$$$$$&&&&&&&&&$&$$&&$&$$x;;;;:;:::::;;+X&&&&&&&&&X;:::;;;+$$$$$$$$$$$XXXXx+;+XXxX$XXX$$$$$$$$X$$$$$$$+
;&&&&&&&&&&&&XX&&&&&&&$$&&&&$&&$&&&$&&&&&X+;:;:;::;;xX+;+X&&$X$$&$X+;;;:::;+X$$$$$$$$XX+$$$+;+;++X$Xxx$$&$XXXX&$$&$$$$+
;&&&&&&&&&&&$X$&&&&&&&&&&&&&$&&$$&$$&$&&$+;;:::;:;;;X&&$$$&&$x+;+x+;;:::::;:+X$$$$$X$$$X$&X;;++X$$$XxxX$$$$$$XX$&$&$x+;
;$&&&$$&$$$$+X$&$&&&&&&&&&&&&&&$&&$&&$&X+;;:::::;::;+X&&&&&&$X;;::;::;;;;::;;x$$$$$$$$$$$X;;;+X$$$X+X$$$&$$$XXX$$$$++;;
;x+$$X+$&$$xx$&&&&&&&&&&&&&&&&$&&&&&&&$x++::;;:;XX+;;X&&&&&$$$+;;::::::::;;:;+$$$&$$$$$$$x;:;;++++;;;;;;;;;;;;+++x++;;:
;X+X$X++xXX+X&&&$&&&&&$&&&&&&&&&&&&&&$$x$x;;:::;+$&$X++XXX$$X+;::;;:::;:::::;;X$$&$&$$$$$+:;;xx++XXXXXX$XXX$$$$$$X++;:;
;xXXXX+++Xxx$&&&$&&&&&$&$$$$$&&&&&&&&&$X&$+:;:::;x$&&&$x;;;;+x;::::::;:;:;::;;X$$$$&$$$$X+;xx+xXxXXxXXX$$$$$&&$$&X++;::
;x;+XXx++;;X&&&&$&&&&&$&$&$&&&&&&&&&&&$$&$X;:;::::;X&$XXx+::;;;:::;::::::::;;+X&&$$$$$$$+:;XXXX$$$X$$$$$&$&$&&&$$X+;;;:
;x+++++++;+$$&&&&&$&$&$&&$$&$&$$$&&&&&$$&$$+;::::::;X&&X+;;;:;:;;::::::::;:;+x$$$$$$$$$$+;+$$X$&$$$$&$$&&&&$&&$$$+;;;;;
;++Xx+++:;$$&&&&&&&&&&$&$&$&$&$&$&$&$&$&&$$X;:::;::;X&&&$Xx+;;;:;;:::::::::;;+X$$$$$$$$X;;X$$$$&$$X$$&$$&$$$$$X+;+xxXXX
;++Xx+++:+$&&&&$&&&$$&&$$$X$$&$&$$$&$$$&&&&$X;;;::::;+X&&&&&X;::::;:::::;;;+X$$xxX$$$$$X;;x$$$$$X&$$$$$$$$$$X++$$$$$$XX
;x;++++;;x$&&&&$&&&&&$$$x+X$XX$&$$$&$&$&&&&&$X;;::;;::;X$&&&&X;;::;::;::;x$$X&&&&$$XxXX+;+XXX$$$$$XX$$$$$$$$X+++xXXxXX$
;+;++;;;+$$&&&&$&&&$&$X+++X$&$XX$$$&$&$&$&&$$&x;;:::::;;;;+X$+;::::::;;;x$&&$$&&&&&&&$$+;X$$$$$$$$$$$$$&$$$$X++;;;;;+;;
;X++;;;+$$$$$$$$&$&&&X+xX+;+X$X+;x$$$$$$$$$$$$$X+;::;;;;:;X$&$;;::::::;+$&&&XX$&&&&&&$$&$xX$$$$&$$$$$$$$$&$$$$$XXX+;:;;
;+;;;;;X&$$$$$&$&$$$$++Xx$X+;;+++++X$$$$$$$&$$$$X+;;;+:;;xX$$$;:::;;;;;X&&&&$X$&&&&&$$&&&&xX$$$$$&$&$&$&$&$$$$$$X++;;:;
;;++;;+$$$$$&$&$&&$&$X;xXxX+++xXXXXXXX$$$$$&$$$&$X+;;Xx;X$$X+;;;;::;;;+XX$&X+xX$&&&$$&&&&&Xx$$$$$$$$$$&$$$$$$$x+;;;;;;;
;X$X;+X$$X$$&$$$$$$$$$X;xXx+;:+xx+x$&$XX$$$$$&$$$+;;+xx;;+xX+;;;:;;;;+xx+X$&$X&&&&$$&&$&&&$+X$$$$&$$$$&&$&$$X+;;;+;;;;+
;$$+;x$$&$$$&$$$&$&$$$$X;+Xxx;;:;;;;x$&$++++xX$XxXXx+x+++X$&X;;;;;;;;x&&$xxxX+X$&$$&&$XXX$$$XX$$&$$$&&$$$&$$+;;;;;;;;;;
;$+;;X$&$$&$$$&&&$$$$$&$X++XxX+;:::;++;+$$&&$X+x$&&&$$X;+X&$+;;;;;;;;X&&&Xx+xX$X+x$$XX$$&XX$X+$$$$$$$$$&$&$X;;;;;;;;;;;
;+;;X$X$$$$$$$$$$$&$$&&$&X;+X+$+;;;$$X$&&&&&X+XXX$XxxxXx;X&X;;;;;;;;+$&&&$XX$$$XXx+XX$&&&&&&&$xX&$$X$$&&$$$X;;:;;;;;;;;
;+;+$$$$&$&$$$$$&$&&&$&$&$X++$+X++$$X$&&&$xX&&&&&XXxx;+++X$x;;;;;;;;x&&&&$X$$x+X&$+x$$x+X&&&&&Xx&$$$&&$&&$$X;;:;;;;;;;;
;;;X$$$&$$$$$$$$&$$$$$$$$$$X;;X++X$X&&Xx+$$$x+X$&&&X++X++xXX;;:::;;:X&&&$$$XxXxxxX$$xx$&&X$X$Xx+$$$$$$&$$$$X;;;:;;::::;
;;x$$$&&$&$$$$$$&$&$&&&$&$&$X+;;xXX$&&&&X+++++x+X&&&&$x;+$xX;:;;::;;X&$X++X$&$xx$&$$XX&&&&XXXX$xX$$$$$$$$$$X;;:;:;;;;::
;+X$$&$&$&$&&&$&&$$&$$$$&$&$$$;;;+$&&$$$xx++++X&&$$&&&&$xXX++::;;;;;+$X++X&&$Xx$$$&$X+X$$$$XXX$X;x$$$X+++X$X;;;;;;;;;;;
;x$$$&$&$&$$$$$&&$$$$$&$&$$$&$$+;:;+X$xx$&$XxXXX+++X$&&&&$X+;;;;::;;;Xx;++XxxXx+xX$$$;;+XXX$$$$X;;xx+;+x++Xx+++XX+++xXX
;XX$$$&&$&$&$&&&$$$&&$&$&$&$$$$$X+;;;;+xX$&&&Xx++X$&$XX$&&&$x;;;;;:;;;+Xx;+$&$++$X+xx+++$&&XxXXx;;;++XXXXXXXXX$&$$X$&$$
;XX$$$&&$&$&$&$&$&$$$$&$$$$$$$&$$$X+;;;+$$$$&&$XXXX+XxxxX$&&&$X;;;;::;++++XXx;+xxX$&&&&&$$$&$$&$x+;;+++;+++++xXXxx+Xxx+
;$X$&&$&$&$&$&$&$&$&$&&&&&&&$&&&&$$$X+;;;x$X+$&&$XX+++XX$$$$&&&$X;:;::;++;+$$&&&&&&&&&&&&&&$$$$$;$x;+xXxXXXXXX$&$$X$$X$
;$X$&$$&$&&&$&$&&&&&$$$$$$$&$&$$&&&&&$X+;;;+X&$$&$X$$X$Xxxxx$&&&&&X;;:;::;;x&&&&&&&&&&&&&&&&X+;+X$x++++++++++;+x+;;;;;+
;xX$$&&&$&$&$&$&$$$&&&&&&$&&&&&&&&&&$&&$X+;;;+$&$X$&$&$++X$&XxX$&&&$+;:;;;;;;X&&&&&&&&&&$Xx+xX$&$$$$$X+;+X$x;;;;;:;::;;
;XXX$$$$$$$&&&$&&&&&&&&&&&&$$&&$$$$&&&$$&$X+;;;+$&$X$&&&$X+++++xX$XX;;;:;:;;;;+++XXXX+;;;+X$$$&$&&&&$$$$$$$X;:;:;::;::;
;X+x$$$$&$$&&&&&&$$&$&&&&&$&$&&&$&$$$&$&&&$$$+;;;+$&&X$&&&$+x++X$X+X;:;:;;;:;x$&&&$X+;+;;+$&$$$&&$&$$&$$$$&X+;:;:;;:;:;
;X$&$$$X$&&$&&&&&&$$$&&&$&$$$&&&&&$$$&$&&&&&&&X+;;;x$&$X$&&&$xX$x+x+;:;;;:;:;x$&$+;;;;;++x$&$$$$$$$&$XXXXxx+;;;;;;;;;++
;&&&&$$$&&$&$&&&$&&&$&&&&&$&$&$&&&$&$&$&&&&&&$&$x;;:;+++X&$X++++++XX++;;;;:+++X$+;;;;+Xx+$$$$$$$$&$x;++x+X$XX+X+X$&&$X$
;$$$$$&$$$$$$&&&$&&&&&&&&&&&&&&&&&$$$&$$$$$$$$$$$Xx;:;;+xx$&&&XXXXx+++xXx++xX&$X+;;x$X+x$$$$$$$&$$$+;;;+;+++xxx;;;++;++
;$&&&&&&&&&&&&&&&&&&$&&&$&$$$&$&$$$Xx+++XxXxxx+++++;;;:;;;+X&&&$XXXx;;;++X$++&&&$+;+;;;+$$$&$$$X;+xxx;;;;+x+++;+;;X$&&&
;&&&&&&&&&&&$&&&&&&&&&&$&&&&$&$&$x++X$x$$$$$$$$$$$$$$X+;;;;+x$&&&$XXXx++X$X+xX$&&$x;;;;+X$&$+;;;X&&&Xx+x+X&&&&&XXx+++X$
;$$&&&&&&&&&&&&&&&&&&&&$$&&&&&$$++X$&XX$$$$$$$$$$X$$$&$X+;:;;+x$&&&$XXXX++xxx$$$XX$&$+;;X$x+++++;$$$X++++$&&&X++;+++++x
;$&&&&&&&&&&&&&$&&&$&&&&&&&&&&$x+X$$$xX&$$$$$$$$$$$$X$$XX+;;;;;+$&&&X+$$X;+$$$X$&&&&&x;+x++XXxxXX$X$$$$XXxxXXXx;++X$x++
;&&&&&&$&&&&&&&$&&&&&$&&$&&&&&$+xXXXx$$&$$$$$$$$X$XXXXXxx+++;;;:;+xx+$&&$Xx+++xX$&&&$X+x$&&&&&&&&&&&&&&&&&$Xx++++x&&$X+
;$&&&&&$&$&&&&&$&&$$&$$$&&$&&$$x;;;x$$&$$X++xXXXXXXXXx+x++;;;:::;:;+$&&&X++xXXX++X&X$XX&&&&&&&&&&&&&&&&&&&&&&Xxx$&&&&$X
;&&$&&&&&$&$&&&$&&&&$$&$&&&$&$$X;;;X$$&$$x+XXXXx;;;;++;+;;;;;;;;;;;;;x$X++$$$$XXx+x$Xx$&&&&&&&&&&&&&&&&&&&&&&&$xX$$XXXx
;$$$&&&$&$&&&$&$&&&&$$&&&&$&$$$$+;X$$X$$$X+$$X++;;+;;;;;;;:;:;;;;;:;:;;;++$$X$Xx+x$XX$$&&&&&&&&&&&&&&&&&&&&&&&$$++++x+;
;$&&&$&$&$&&&$&$&$$$&$$$&&$$$$$$X;x$$$$$$$X;;;++;;;;;;;;;::;;;::;;:;:;;;;;+++;++x$++X$$&&&&&&&&&&&$&&&&&&$$$&$$$+;++xX;
;$$$&$&$&$&$$$$$&&&&&$&$&$$&&$$&$x+XX$XX$XX+;;;;;;;;::;::;;;::;;;;;;;;;;:;;+$$XX++x+$$$$&&&&&&&&$&&&&$$X$&&$XXxX+++x++x
;X$&$$&$&$&$&&&&&&&$&$&$&$&$&&&$$X+xXX$XXxx+;:;;;;;;;;;;;;;::;;++;;++++++;;+;;;;+x+XX$$&$&$&&&&&&$&&$$&$$$$$$XXX+++XXXX
;&$$$&&&&$&$&&&&&&&$&$&$&$&$&$&&$X;+XXX++x+;;;;:;;;;:;;;::;;;+;++++X++Xxx+;x+;xXXXxXXXXX$&$$$$&&$$&&&&&$XX&$X+++;++X$Xx
;$$$$$$&$&&$$$$&$$&&$&$$&$&$$&$x++X++++x;;;;;::;::;:;;:;;;+++xXx++X$$$XX$XXXxX+XXXxXXx$X$$$$$$XX$$$$XXxxxXX;;;++;;;+++X
;$$XxXX$$X&$&$$$$$$$$&&$&$&&$x++++xx;+;;;;;;;;;;;+xXX+;;;+xXXXX$$$$$&$$XXXXX$x++xx++xxXXxxXxXx+++xx++++;;+;;;;;:;;+++++
;&$$$&XX$$X$$$&$$$$&&&&$&&$$x+X$X+XX+;;;;;;;;;;;+XXx;xXXXX$$x$&&&$$&&&&&&$$XX$XX+++++++X++++++++++;;;;;:;;;;;;;:;;++++x
;$$$&$$$$$&$&$$&&$&&&&&$&$$x+X$Xx+xX+;;;;;;;;;:;;x+++XXXX$$&&$&&&$&&&&&&$$XXX$Xxx+xXx++++;;;;;;;;;;;;::;;;;;::::;;;;;;+
;&$$$$$&$$$$&&$&&&&&&&&&&$X+x$Xx+Xx++;;;;:;;;;;;;;;;+xXXX$$$&$&&&&&&&&&&&&&&XXXx++;++;;;;;;::;::;;;:;;;;:::;;;;:;;++++X
;&$&$&&&$&$&&&&&$&&&&&&&$$+;;;++XXx+;+x;;;;;;:;::;;;+++XX$&&&&&&&&&&&&&&&&&&$$xx++++;;;:;:;;;::;:;:;;;;;;;:;::;;;;+x+X+
;&$&&$$&&&$&&&&$$&$$$&$$$X+;;;+Xxx+;x$$x;;;;;;;;;;;+++X$&&&&&&&&&&&&&&&&&&&&$$XXx++:;;:;;;;;;::;::;;::;;;:;;;;;;+;+xx+X
;$$&&&&&$&&&$&$$$&$$$&&$$++XXXXxx+;+$$&$+;;;;;;:;;;++X$$$&&&&&&&&&&&&&&&&&&$$Xxx+;;;;:;;;;;:;;;;:++;;;;;+;;;;;;;;+x+xx;
;&&&&&$&$&$&$$&&$&$&$$$&X+XXXXXx+;;+$&$$X;;;;;;;;;;;+x$&&&&&&&&&&&&&&&&&&$$$XX+;;:::;;;:;++xX++++;;++++;+;;;;;;+++++;;;
;&&$&$$&$$$&&$$&&&&&&&$$+X$XXXx+;;;X$$&$$+;;;:;;;;:;;+$&&&&&&&&&&&&&&&&&&&$Xx;;:;;;;;+xX$$$&$$$X++;;;;+;+;+;;;;;;+XXXx+
;$$$$$$&&&&$&&$&$&$&&&$++XXXX++++;;X$&$$$X;;;:;;::;;+$$&&&&&&&&&&&&&&&&&&&X+;;;;:;+X$$$$$&&&&&$$&$$XX+++;;;++xX$$$$$$$$
;$&&&&&&$&$&$$&&$&$$$$++XXX+++;+;;;X$$&&$X;;;;;;;:;;;X&&&&&&&&&&&&&&&&&&$x+;;;;+X$$&$$$$$&&&$$$$&$&$$$$&$$$$$$$$$$$$&$$
;&&&&&$$&&&&&&&$&&$$$X;XXXx+++;;;;x$&&$&$x;;:;::;;::;+&&&&&&&&&&&&&&&&&X+;;;;+X$$$$$$$$$$$$&&&$&$$$$$$$$$$$$$$$$&&&$$$&
;$&$&&&&&$$$&&&$$&$$$x+XXxx+;;;;;+X$$&$$X+;;;:;;:;;::;+$&&&&&&&&&&&&&&$X+;;+X$&$$$$$$$$$$$$&$&$$&&$$$&$&$$$$$$$$$$&$$$$
;$&$&&&$&$&$$$$$$&&$X+xxx+++;;;;+$$$&$$$X;;;;;:;;::;;;;x&&&&&&&&&&&&$XX+;;+X$$$$$$$$$$$$$$$&$&$&$$$$$$$$$$$$$$$&$$&$$$$
;$$$$$&$&$&&&$&$$&&X++xx++;;;;;x$$$$$$$$++++;;:;:;;:;;;+&&&&&&&&&&&&$$X+;+$$$&&$$$$$$$$$$$$&$$$$$$$$$$$&$$$$$$$&$$$$$$$
;$$X$&&$&$$$&&$X$&$x+xx++;;;;x$$$$$$$&$X;;++;;;:;::;;;;+$&&&&&&&&&&$$++;x$$$$$$$$$$$X$$X$$$$$$$$X$$$X$XXXXXXXXXXXXXX+++
;$$$$$$XXX$$$$&$&$X++x++;;;;X$$$$$$$$$$X;;;;+;;;::;::;;+$&&&&&&&&&&$$+;+X$$$$$$$$$$$$$$$XXX$XXXX+xxx+++;;++++;++;+xXXXX
;$$$$$$xX$$$&&&$$Xx+++;;;;;x$$$$$$$$$$X;;;++x+:;;;::;:;x$&&&&&&&&&$$++;x$X$X$$$$$$$$$$&$$$$$$$$$&$$$$$x:+X$$$$XXX$$&$$$
;$$$$XX+X$XX$$$$$X+++;;;;;+X$$&$$$$$$$X;;;;++;;;::;:;;X&&&&&&&&&&&&X;;+X&$$$$$&$$$&$$$$$$$$$$$$$&$$$$$+;+$$$$$$&&$$$$$$
;&$XXXXx$$&$$$$$x;:;;;;:;;;X$$&&$$&$$$x;+++xx;:;;;;:;+&&&&&&&&&&&&$x+;x$$X$$&$&&&$$$$$&$&&&$$$$$$$$$&$+;+X$X$$$$$$$$$$$
;$XX$$XX$$$&$$x;:;;;;:;;:;+X$$&$$$$$$$+;;++++;;;;;;;;+&&&&&&&&&&$Xx++;X$$$$$$$&&&$&$&&&$&$$$$&&$&$$&$X;;+x$$$XXX$$$$$$$
;$$$X$$$$&&$$$+:;;;;;:;:;x$$$$$$$$$$$$+;;+Xx+;;:;;;;;X&&&&&&&&&&$Xx;+;X$&$$$$&&&&&&$$$&$&&$$&$&$&$&$$x;+x$$$$$$$$$$$$$X
;$$$X$&$$&$$$x;:;;;;;:::+X$$$$$$$$$$$$++++xx;;;:;;;+X&&&&&&&&&&&&&$x++$$$$$&$&&&&&&$$$$&$&XX$$$$&$$$$+;+Xx$$$$$X+++XXXx
;$&&$$$$$$$$X;;;;:;;;;;;XX$$$$&$$$$$$$++x+xXx;;;++$&&&&&&&&&&&$$&X+++x$$$$&$X$$$$&&$$&$&&&$$x+x$$XXXx;;xXXXXXXXxxx++xxx
;&$$$&$$$$$$X;;;;;;;;;;+$X$$$$$$&$&$$$+;+XXXXx$$$$$&&&&&&&&&&&&$$Xx+++$$$&$$$$$$$$$$$$&$&$XXX$&&&&&$$$&$&&$&&&&&&$&&$$&
;$$$$$$$$$$X;;:::;;;;;;x$$$$$$$$$$$$&X+++++xX$&&&&&&&&&&&&&&&&&&$X++++X$$$$$+$XX$&&$&&$$$x$$$$$$$X$$$$$$$X$$$$$X$X$X$$X
;$$$$$$$$$x;;;;;;;;;;;X$$$$$$&$$$$$$$$+;;+xXXX$$&&&&&&&&&&&&&&X$XXx+x+$$$XXxXXX$$&$$&&$$$x$XX$$$$$$$$$$$&$$$$$$X$X$XXX$
;$$$$$XX$$+;;;;::;;;;+X$X$$$$$$$&$$$$X+;+XXXX$&X$$$&&&&&&&&&&&$$Xx+++;X$XXXXXxX$$&$$&$$$$X$$$$$$$$$$$XXX&$&$$$$X$$$$$X$
;Big Generator - Moving through the night!