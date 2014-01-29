KurtsHouse_MapScriptHeader: ; 0x18e14f
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 2, UnknownScript_0x18e154
; 0x18e154

UnknownScript_0x18e154: ; 0x18e154
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iffalse UnknownScript_0x18e177
	checkevent $00c0
	iftrue UnknownScript_0x18e177
	checkflag $0050
	iftrue UnknownScript_0x18e16f
	disappear $5
	appear $2
	disappear $6
	appear $3
	return
; 0x18e16f

UnknownScript_0x18e16f: ; 0x18e16f
	disappear $2
	appear $5
	disappear $3
	appear $6
UnknownScript_0x18e177: ; 0x18e177
	return
; 0x18e178

KurtScript_0x18e178: ; 0x18e178
	faceplayer
	loadfont
	checkevent $0035
	iftrue UnknownScript_0x18e1cc
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iftrue UnknownScript_0x18e1bf
	2writetext UnknownText_0x18e473
	closetext
	loadmovesprites
	special $006a
	setevent $06fa
	checkcode $9
	if_equal $1, UnknownScript_0x18e1ab
	spriteface $0, $0
	playsound $0018
	applymovement $2, MovementData_0x18e466
	playsound $0023
	disappear $2
	waitbutton
	special $003d
	end
; 0x18e1ab

UnknownScript_0x18e1ab: ; 0x18e1ab
	spriteface $0, $0
	playsound $0018
	applymovement $2, MovementData_0x18e46c
	playsound $0023
	disappear $2
	waitbutton
	special $003d
	end
; 0x18e1bf

UnknownScript_0x18e1bf: ; 0x18e1bf
	2writetext UnknownText_0x18e615
	keeptextopen
	verbosegiveitem LURE_BALL, 1
	iffalse UnknownScript_0x18e2b2
	setevent $0035
UnknownScript_0x18e1cc: ; 0x18e1cc
	checkevent $0000
	iftrue UnknownScript_0x18e29f
	checkevent $0258
	iftrue UnknownScript_0x18e2b4
	checkevent $0259
	iftrue UnknownScript_0x18e2ca
	checkevent $025a
	iftrue UnknownScript_0x18e2e0
	checkevent $025b
	iftrue UnknownScript_0x18e2f6
	checkevent $025c
	iftrue UnknownScript_0x18e30c
	checkevent $025d
	iftrue UnknownScript_0x18e322
	checkevent $025e
	iftrue UnknownScript_0x18e338
	checkevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	iftrue UnknownScript_0x18e34e
UnknownScript_0x18e202: ; 0x18e202
	checkevent $0001
	iftrue UnknownScript_0x18e212
	checkevent $0002
	iftrue UnknownScript_0x18e212
	2writetext UnknownText_0x18e6c9
	closetext
UnknownScript_0x18e212: ; 0x18e212
	checkitem RED_APRICORN
	iftrue UnknownScript_0x18e249
	checkitem BLU_APRICORN
	iftrue UnknownScript_0x18e249
	checkitem YLW_APRICORN
	iftrue UnknownScript_0x18e249
	checkitem GRN_APRICORN
	iftrue UnknownScript_0x18e249
	checkitem WHT_APRICORN
	iftrue UnknownScript_0x18e249
	checkitem BLK_APRICORN
	iftrue UnknownScript_0x18e249
	checkitem PNK_APRICORN
	iftrue UnknownScript_0x18e249
	checkevent $0001
	iftrue UnknownScript_0x18e2ae
	checkevent $0002
	iftrue UnknownScript_0x18e243
	loadmovesprites
	end
; 0x18e243

UnknownScript_0x18e243: ; 0x18e243
	2writetext UnknownText_0x18e6c9
	closetext
	loadmovesprites
	end
; 0x18e249

UnknownScript_0x18e249: ; 0x18e249
	2writetext UnknownText_0x18e736
	keeptextopen
	setevent $0002
	special $0056
	if_equal $0, UnknownScript_0x18e2a5
	if_equal $59, UnknownScript_0x18e275
	if_equal $5c, UnknownScript_0x18e27b
	if_equal $5d, UnknownScript_0x18e281
	if_equal $61, UnknownScript_0x18e287
	if_equal $63, UnknownScript_0x18e28d
	if_equal $65, UnknownScript_0x18e293
	setevent $0258
	2jump UnknownScript_0x18e299
; 0x18e275

UnknownScript_0x18e275: ; 0x18e275
	setevent $0259
	2jump UnknownScript_0x18e299
; 0x18e27b

UnknownScript_0x18e27b: ; 0x18e27b
	setevent $025a
	2jump UnknownScript_0x18e299
; 0x18e281

UnknownScript_0x18e281: ; 0x18e281
	setevent $025b
	2jump UnknownScript_0x18e299
; 0x18e287

UnknownScript_0x18e287: ; 0x18e287
	setevent $025c
	2jump UnknownScript_0x18e299
; 0x18e28d

UnknownScript_0x18e28d: ; 0x18e28d
	setevent $025d
	2jump UnknownScript_0x18e299
; 0x18e293

UnknownScript_0x18e293: ; 0x18e293
	setevent $025e
	2jump UnknownScript_0x18e299
; 0x18e299

UnknownScript_0x18e299: ; 0x18e299
	setevent $0000
	setflag $0050
UnknownScript_0x18e29f: ; 0x18e29f
	2writetext UnknownText_0x18e779
	closetext
	loadmovesprites
	end
; 0x18e2a5

UnknownScript_0x18e2a5: ; 0x18e2a5
	2writetext UnknownText_0x18e7bc
	closetext
	loadmovesprites
	end
; 0x18e2ab

UnknownScript_0x18e2ab: ; 0x18e2ab
	setevent $0001
UnknownScript_0x18e2ae: ; 0x18e2ae
	2writetext UnknownText_0x18e82a
	closetext
UnknownScript_0x18e2b2: ; 0x18e2b2
	loadmovesprites
	end
; 0x18e2b4

UnknownScript_0x18e2b4: ; 0x18e2b4
	checkflag $0050
	iftrue UnknownScript_0x18e3c5
	2writetext UnknownText_0x18e7fb
	keeptextopen
	verbosegiveitem2 LEVEL_BALL, $16
	iffalse UnknownScript_0x18e2b2
UnknownScript_0x18e2c4: ; 0x18e2c4
	clearevent $0258
	2jump UnknownScript_0x18e2ab
; 0x18e2ca

UnknownScript_0x18e2ca: ; 0x18e2ca
	checkflag $0050
	iftrue UnknownScript_0x18e3c5
	2writetext UnknownText_0x18e7fb
	keeptextopen
	verbosegiveitem2 LURE_BALL, $16
	iffalse UnknownScript_0x18e2b2
UnknownScript_0x18e2da: ; 0x18e2da
	clearevent $0259
	2jump UnknownScript_0x18e2ab
; 0x18e2e0

UnknownScript_0x18e2e0: ; 0x18e2e0
	checkflag $0050
	iftrue UnknownScript_0x18e3c5
	2writetext UnknownText_0x18e7fb
	keeptextopen
	verbosegiveitem2 MOON_BALL, $16
	iffalse UnknownScript_0x18e2b2
UnknownScript_0x18e2f0: ; 0x18e2f0
	clearevent $025a
	2jump UnknownScript_0x18e2ab
; 0x18e2f6

UnknownScript_0x18e2f6: ; 0x18e2f6
	checkflag $0050
	iftrue UnknownScript_0x18e3c5
	2writetext UnknownText_0x18e7fb
	keeptextopen
	verbosegiveitem2 FRIEND_BALL, $16
	iffalse UnknownScript_0x18e2b2
UnknownScript_0x18e306: ; 0x18e306
	clearevent $025b
	2jump UnknownScript_0x18e2ab
; 0x18e30c

UnknownScript_0x18e30c: ; 0x18e30c
	checkflag $0050
	iftrue UnknownScript_0x18e3c5
	2writetext UnknownText_0x18e7fb
	keeptextopen
	verbosegiveitem2 FAST_BALL, $16
	iffalse UnknownScript_0x18e2b2
UnknownScript_0x18e31c: ; 0x18e31c
	clearevent $025c
	2jump UnknownScript_0x18e2ab
; 0x18e322

UnknownScript_0x18e322: ; 0x18e322
	checkflag $0050
	iftrue UnknownScript_0x18e3c5
	2writetext UnknownText_0x18e7fb
	keeptextopen
	verbosegiveitem2 HEAVY_BALL, $16
	iffalse UnknownScript_0x18e2b2
UnknownScript_0x18e332: ; 0x18e332
	clearevent $025d
	2jump UnknownScript_0x18e2ab
; 0x18e338

UnknownScript_0x18e338: ; 0x18e338
	checkflag $0050
	iftrue UnknownScript_0x18e3c5
	2writetext UnknownText_0x18e7fb
	keeptextopen
	verbosegiveitem2 LOVE_BALL, $16
	iffalse UnknownScript_0x18e2b2
UnknownScript_0x18e348: ; 0x18e348
	clearevent $025e
	2jump UnknownScript_0x18e2ab
; 0x18e34e

UnknownScript_0x18e34e: ; 0x18e34e
	checkevent $00bf
	iftrue UnknownScript_0x18e368
	checkitem GS_BALL
	iffalse UnknownScript_0x18e202
	2writetext UnknownText_0x18e8ab
	closetext
	loadmovesprites
	setevent $00bf
	takeitem GS_BALL, 1
	setflag $0050
	end
; 0x18e368

UnknownScript_0x18e368: ; 0x18e368
	checkflag $0050
	iffalse UnknownScript_0x18e378
	2writetext UnknownText_0x18e934
	closetext
	2writetext UnknownText_0x18e949
	closetext
	loadmovesprites
	end
; 0x18e378

UnknownScript_0x18e378: ; 0x18e378
	2writetext UnknownText_0x18e95c
	closetext
	loadmovesprites
	setevent $00c0
	clearevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	clearevent $00bf
	special $006a
	pause 20
	showemote $0, $2, 30
	checkcode $9
	if_equal $1, UnknownScript_0x18e3a2
	spriteface $0, $0
	playsound $0018
	applymovement $2, MovementData_0x18e466
	2jump UnknownScript_0x18e3ac
; 0x18e3a2

UnknownScript_0x18e3a2: ; 0x18e3a2
	spriteface $0, $0
	playsound $0018
	applymovement $2, MovementData_0x18e46c
UnknownScript_0x18e3ac: ; 0x18e3ac
	playsound $0023
	disappear $2
	clearevent $07a4
	waitbutton
	special $003d
	domaptrigger GROUP_AZALEA_TOWN, MAP_AZALEA_TOWN, $2
	end
; 0x18e3bd

KurtScript_0x18e3bd: ; 0x18e3bd
	faceplayer
	loadfont
	checkevent $00bf
	iftrue UnknownScript_0x18e3e0
UnknownScript_0x18e3c5: ; 0x18e3c5
	checkevent $00bb
	iffalse UnknownScript_0x18e3d4
	2writetext UnknownText_0x18e7d8
	closetext
	loadmovesprites
	spriteface $5, $1
	end
; 0x18e3d4

UnknownScript_0x18e3d4: ; 0x18e3d4
	2writetext UnknownText_0x18e863
	closetext
	loadmovesprites
	spriteface $5, $1
	setevent $00bb
	end
; 0x18e3e0

UnknownScript_0x18e3e0: ; 0x18e3e0
	2writetext UnknownText_0x18e934
	closetext
	spriteface $5, $1
	2writetext UnknownText_0x18e949
	closetext
	loadmovesprites
	end
; 0x18e3ed

TwinScript_0x18e3ed: ; 0x18e3ed
	faceplayer
	checkevent $0000
	iftrue UnknownScript_0x18e42f
	checkevent $0001
	iftrue UnknownScript_0x18e448
	checkevent $00c0
	iftrue UnknownScript_0x18e420
	checkevent $0030
	iftrue UnknownScript_0x18e427
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iftrue UnknownScript_0x18e419
	checkevent $06fa
	iftrue UnknownScript_0x18e420
	loadfont
	2writetext UnknownText_0x18e9b5
	closetext
	loadmovesprites
	end
; 0x18e419

UnknownScript_0x18e419: ; 0x18e419
	loadfont
	2writetext UnknownText_0x18ea0f
	closetext
	loadmovesprites
	end
; 0x18e420

UnknownScript_0x18e420: ; 0x18e420
	loadfont
	2writetext UnknownText_0x18e9f1
	closetext
	loadmovesprites
	end
; 0x18e427

UnknownScript_0x18e427: ; 0x18e427
	loadfont
	2writetext UnknownText_0x18ea55
	closetext
	loadmovesprites
	end
; 0x18e42e

TwinScript_0x18e42e: ; 0x18e42e
	faceplayer
UnknownScript_0x18e42f: ; 0x18e42f
	loadfont
	checkevent $00bf
	iftrue UnknownScript_0x18e43f
	2writetext UnknownText_0x18eab2
	closetext
	loadmovesprites
	spriteface $6, $3
	end
; 0x18e43f

UnknownScript_0x18e43f: ; 0x18e43f
	2writetext UnknownText_0x18eb14
	closetext
	loadmovesprites
	spriteface $6, $3
	end
; 0x18e448

UnknownScript_0x18e448: ; 0x18e448
	loadfont
	2writetext UnknownText_0x18eafc
	closetext
	loadmovesprites
	end
; 0x18e44f

SlowpokeScript_0x18e44f: ; 0x18e44f
	faceplayer
	loadfont
	2writetext UnknownText_0x18eb56
	cry SLOWPOKE
	closetext
	loadmovesprites
	end
; 0x18e45a

MapKurtsHouseSignpost2Script: ; 0x18e45a
	jumptext UnknownText_0x18eb69
; 0x18e45d

MapKurtsHouseSignpost6Script: ; 0x18e45d
	jumptext UnknownText_0x18eb7e
; 0x18e460

MapKurtsHouseSignpost5Script: ; 0x18e460
	jumpstd $0001
; 0x18e463

MapKurtsHouseSignpost0Script: ; 0x18e463
	jumpstd $000c
; 0x18e466

MovementData_0x18e466: ; 0x18e466
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	step_end
; 0x18e46c

MovementData_0x18e46c: ; 0x18e46c
	big_step_right
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	step_end
; 0x18e473

UnknownText_0x18e473: ; 0x18e473
	db $0, "Hm? Who are you?", $51
	db $52, ", eh? You", $4f
	db "want me to make", $55
	db "some BALLS?", $51
	db "Sorry, but that'll", $4f
	db "have to wait.", $51
	db "Do you know TEAM", $4f
	db "ROCKET? Ah, don't", $51
	db "worry. I'll tell", $4f
	db "you anyhow.", $51
	db "TEAM ROCKET's an", $4f
	db "evil gang that", $51
	db "uses #MON for", $4f
	db "their dirty work.", $51
	db "They're supposed", $4f
	db "to have disbanded", $55
	db "three years ago.", $51
	db "Anyway, they're at", $4f
	db "the WELL, cutting", $51
	db "off SLOWPOKETAILS", $4f
	db "for sale!", $51
	db "So I'm going to", $4f
	db "go give them a", $55
	db "lesson in pain!", $51
	db "Hang on, SLOWPOKE!", $4f
	db "Old KURT is on his", $55
	db "way!", $57
; 0x18e615

UnknownText_0x18e615: ; 0x18e615
	db $0, "KURT: Hi, ", $52, "!", $51
	db "You handled your-", $4f
	db "self like a real", $55
	db "hero at the WELL.", $51
	db "I like your style!", $51
	db "I would be honored", $4f
	db "to make BALLS for", $51
	db "a trainer like", $4f
	db "you.", $51
	db "This is all I have", $4f
	db "now, but take it.", $57
; 0x18e6c9

UnknownText_0x18e6c9: ; 0x18e6c9
	db $0, "KURT: I make BALLS", $4f
	db "from APRICORNS.", $51
	db "Collect them from", $4f
	db "trees and bring", $55
	db "'em to me.", $51
	db "I'll make BALLS", $4f
	db "out of them.", $57
; 0x18e736

UnknownText_0x18e736: ; 0x18e736
	db $0, "KURT: You have an", $4f
	db "APRICORN for me?", $51
	db "Fine! I'll turn it", $4f
	db "into a BALL.", $57
; 0x18e779

UnknownText_0x18e779: ; 0x18e779
	db $0, "KURT: It'll take a", $4f
	db "day to make you a", $51
	db "BALL. Come back", $4f
	db "for it later.", $57
; 0x18e7bc

UnknownText_0x18e7bc: ; 0x18e7bc
	db $0, "KURT: Oh…", $4f
	db "That's a letdown.", $57
; 0x18e7d8

UnknownText_0x18e7d8: ; 0x18e7d8
	db $0, "KURT: I'm working!", $4f
	db "Don't bother me!", $57
; 0x18e7fb

UnknownText_0x18e7fb: ; 0x18e7fb
	db $0, "KURT: Ah, ", $52, "!", $4f
	db "I just finished", $55
	db "your BALL. Here!", $57
; 0x18e82a

UnknownText_0x18e82a: ; 0x18e82a
	db $0, "KURT: That turned", $4f
	db "out great.", $51
	db "Try catching", $4f
	db "#MON with it.", $57
; 0x18e863

UnknownText_0x18e863: ; 0x18e863
	db $0, "KURT: Now that my", $4f
	db "granddaughter is", $51
	db "helping me, I can", $4f
	db "work much faster.", $57
; 0x18e8ab

UnknownText_0x18e8ab: ; 0x18e8ab
	db $0, "Wh-what is that?", $51
	db "I've never seen", $4f
	db "one before.", $51
	db "It looks a lot", $4f
	db "like a # BALL,", $51
	db "but it appears to", $4f
	db "be something else.", $51
	db "Let me check it", $4f
	db "for you.", $57
; 0x18e934

UnknownText_0x18e934: ; 0x18e934
	db $0, "I'm checking it", $4f
	db "now.", $57
; 0x18e949

UnknownText_0x18e949: ; 0x18e949
	db $0, "Ah-ha! I see!", $4f
	db "So…", $57
; 0x18e95c

UnknownText_0x18e95c: ; 0x18e95c
	db $0, $52, "!", $51
	db "This BALL started", $4f
	db "to shake while I", $55
	db "was checking it.", $51
	db "There must be", $4f
	db "something to this!", $57
; 0x18e9b5

UnknownText_0x18e9b5: ; 0x18e9b5
	db $0, "The SLOWPOKE are", $4f
	db "gone… Were they", $51
	db "taken away by bad", $4f
	db "people?", $57
; 0x18e9f1

UnknownText_0x18e9f1: ; 0x18e9f1
	db $0, "Grandpa's gone…", $4f
	db "I'm so lonely…", $57
; 0x18ea0f

UnknownText_0x18ea0f: ; 0x18ea0f
	db $0, "The SLOWPOKE my", $4f
	db "dad gave me came", $51
	db "back! Its TAIL is", $4f
	db "growing back too!", $57
; 0x18ea55

UnknownText_0x18ea55: ; 0x18ea55
	db $0, "Dad works at SILPH", $4f
	db "where he studies", $55
	db "# BALLS.", $51
	db "I have to stay", $4f
	db "home with Grandpa", $55
	db "and SLOWPOKE.", $57
; 0x18eab2

UnknownText_0x18eab2: ; 0x18eab2
	db $0, "I get to help", $4f
	db "Grandpa now!", $51
	db "We'll make good", $4f
	db "BALLS for you, so", $55
	db "please wait!", $57
; 0x18eafc

UnknownText_0x18eafc: ; 0x18eafc
	db $0, "It's fun to make", $4f
	db "BALLS!", $57
; 0x18eb14

UnknownText_0x18eb14: ; 0x18eb14
	db $0, "Grandpa's checking", $4f
	db "a BALL right now.", $51
	db "So I'm waiting", $4f
	db "till he's done.", $57
; 0x18eb56

UnknownText_0x18eb56: ; 0x18eb56
	db $0, "SLOWPOKE: …", $4f
	db "Yawn?", $57
; 0x18eb69

UnknownText_0x18eb69: ; 0x18eb69
	db $0, "…A young PROF.", $4f
	db "OAK?", $57
; 0x18eb7e

UnknownText_0x18eb7e: ; 0x18eb7e
	db $0, "It's a statue of", $4f
	db "the forest's pro-", $55
	db "tector.", $57
; 0x18eba8

KurtsHouse_MapEventHeader: ; 0x18eba8
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $3, 4, GROUP_AZALEA_TOWN, MAP_AZALEA_TOWN
	warp_def $7, $4, 4, GROUP_AZALEA_TOWN, MAP_AZALEA_TOWN

	; xy triggers
	db 0

	; signposts
	db 7
	signpost 1, 6, $0, MapKurtsHouseSignpost0Script
	signpost 0, 8, $0, MapKurtsHouseSignpost2Script
	signpost 0, 9, $0, MapKurtsHouseSignpost2Script
	signpost 1, 5, $0, MapKurtsHouseSignpost5Script
	signpost 1, 2, $0, MapKurtsHouseSignpost5Script
	signpost 1, 3, $0, MapKurtsHouseSignpost5Script
	signpost 1, 4, $0, MapKurtsHouseSignpost6Script

	; people-events
	db 5
	person_event SPRITE_KURT, 6, 7, $6, $0, 255, 255, $0, 0, KurtScript_0x18e178, $073e
	person_event SPRITE_TWIN, 7, 9, $3, $0, 255, 255, $0, 0, TwinScript_0x18e3ed, $078c
	person_event SPRITE_SLOWPOKE, 7, 10, $1, $0, 255, 255, $0, 0, SlowpokeScript_0x18e44f, $06fd
	person_event SPRITE_KURT, 7, 18, $7, $0, 255, 255, $0, 0, KurtScript_0x18e3bd, $073f
	person_event SPRITE_TWIN, 8, 15, $9, $0, 255, 255, $0, 0, TwinScript_0x18e42e, $078d
; 0x18ec1c

