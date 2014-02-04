GoldenrodGameCorner_MapScriptHeader: ; 0x56bf4
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 2, UnknownScript_0x56bf9
; 0x56bf9

UnknownScript_0x56bf9: ; 0x56bf9
	checkevent $0044
	iffalse UnknownScript_0x56c19
	checkitem COIN_CASE
	iffalse UnknownScript_0x56c0e
	checkcode $b
	if_equal WEDNESDAY, UnknownScript_0x56c11
	if_equal SATURDAY, UnknownScript_0x56c11
UnknownScript_0x56c0e: ; 0x56c0e
	appear $d
	return
; 0x56c11

UnknownScript_0x56c11: ; 0x56c11
	checkflag $005e
	iftrue UnknownScript_0x56c19
	disappear $d
UnknownScript_0x56c19: ;0x56c19
	return
; 0x56c1a

PokefanMScript_0x56c1a: ; 0x56c1a
	faceplayer
	loadfont
	2writetext UnknownText_0x5718a
	closetext
	loadmovesprites
	spriteface $d, $3
	end
; 0x56c25

ClerkScript_0x56c25: ; 0x56c25
	jumpstd $0032
; 0x56c28

ReceptionistScript_0x56c28: ; 0x56c28
	faceplayer
	loadfont
	2writetext UnknownText_0x56e50
	closetext
	checkitem COIN_CASE
	iffalse UnknownScript_0x56cc3
	2writetext UnknownText_0x56e8b
UnknownScript_0x56c36: ; 056c36
	special $004f
	loadmenudata MenuDataHeader_0x56cc9
	interpretmenu2
	writebackup
	if_equal $1, UnknownScript_0x56c4d
	if_equal $2, UnknownScript_0x56c69
	if_equal $3, UnknownScript_0x56c85
	2jump UnknownScript_0x56cbd
; 0x56c4d

UnknownScript_0x56c4d: ; 0x56c4d
	checkcoins 5500
	if_equal $2, UnknownScript_0x56cb1
	itemtotext TM_25, $0
	2call UnknownScript_0x56ca1
	iffalse UnknownScript_0x56cbd
	giveitem TM_25, $1
	iffalse UnknownScript_0x56cb7
	takecoins 5500
	2jump UnknownScript_0x56ca6
; 0x56c69

UnknownScript_0x56c69: ; 0x56c69
	checkcoins 5500
	if_equal $2, UnknownScript_0x56cb1
	itemtotext TM_14, $0
	2call UnknownScript_0x56ca1
	iffalse UnknownScript_0x56cbd
	giveitem TM_14, $1
	iffalse UnknownScript_0x56cb7
	takecoins 5500
	2jump UnknownScript_0x56ca6
; 0x56c85

UnknownScript_0x56c85: ; 0x56c85
	checkcoins 5500
	if_equal $2, UnknownScript_0x56cb1
	itemtotext TM_38, $0
	2call UnknownScript_0x56ca1
	iffalse UnknownScript_0x56cbd
	giveitem TM_38, $1
	iffalse UnknownScript_0x56cb7
	takecoins 5500
	2jump UnknownScript_0x56ca6
; 0x56ca1

UnknownScript_0x56ca1: ; 0x56ca1
	2writetext UnknownText_0x56ea8
	yesorno
	end
; 0x56ca6

UnknownScript_0x56ca6: ; 0x56ca6
	waitbutton
	playsound $0022
	2writetext UnknownText_0x56ebd
	closetext
	2jump UnknownScript_0x56c36
; 0x56cb1

UnknownScript_0x56cb1: ; 0x56cb1
	2writetext UnknownText_0x56ecb
	closetext
	loadmovesprites
	end
; 0x56cb7

UnknownScript_0x56cb7: ; 0x56cb7
	2writetext UnknownText_0x56ee8
	closetext
	loadmovesprites
	end
; 0x56cbd

UnknownScript_0x56cbd: ; 0x56cbd
	2writetext UnknownText_0x56f09
	closetext
	loadmovesprites
	end
; 0x56cc3

UnknownScript_0x56cc3: ; 0x56cc3
	2writetext UnknownText_0x56f35
	closetext
	loadmovesprites
	end
; 0x56cc9


MenuDataHeader_0x56cc9: ; 0x56cc9
	db $40 ; flags
	db 02, 00 ; start coords
	db 11, 15 ; end coords
	dw MenuData2_0x56cd1
	db 1 ; default option
; 0x56cd1

MenuData2_0x56cd1: ; 0x56cd1
	db $80 ; flags
	db 4 ; items
	db "TM25    5500@"
	db "TM14    5500@"
	db "TM38    5500@"
	db "CANCEL@"
; 0x56d01


ReceptionistScript_0x56d01: ; 0x56d01
	faceplayer
	loadfont
	2writetext UnknownText_0x56e50
	closetext
	checkitem COIN_CASE
	iffalse UnknownScript_0x56cc3
UnknownScript_0x56d0c: ; 0x56d0c
	2writetext UnknownText_0x56e8b
	special $004f
	loadmenudata MenuDataHeader_0x56db0
	interpretmenu2
	writebackup
	if_equal $1, UnknownScript_0x56d26
	if_equal $2, UnknownScript_0x56d54
	if_equal $3, UnknownScript_0x56d82
	2jump UnknownScript_0x56cbd
; 0x56d26

UnknownScript_0x56d26: ; 0x56d26
	checkcoins 100
	if_equal $2, UnknownScript_0x56cb1
	checkcode $1
	if_equal $6, UnknownScript_0x56cb7
	pokenamemem ABRA, $0
	2call UnknownScript_0x56ca1
	iffalse UnknownScript_0x56cbd
	waitbutton
	playsound $0022
	2writetext UnknownText_0x56ebd
	closetext
	writebyte ABRA
	special $0039
	givepoke ABRA, 5, 0, 0
	takecoins 100
	2jump UnknownScript_0x56d0c
; 0x56d54

UnknownScript_0x56d54: ; 0x56d54
	checkcoins 800
	if_equal $2, UnknownScript_0x56cb1
	checkcode $1
	if_equal $6, UnknownScript_0x56cb7
	pokenamemem CUBONE, $0
	2call UnknownScript_0x56ca1
	iffalse UnknownScript_0x56cbd
	waitbutton
	playsound $0022
	2writetext UnknownText_0x56ebd
	closetext
	writebyte CUBONE
	special $0039
	givepoke CUBONE, 15, 0, 0
	takecoins 800
	2jump UnknownScript_0x56d0c
; 0x56d82

UnknownScript_0x56d82: ; 0x56d82
	checkcoins 1500
	if_equal $2, UnknownScript_0x56cb1
	checkcode $1
	if_equal $6, UnknownScript_0x56cb7
	pokenamemem WOBBUFFET, $0
	2call UnknownScript_0x56ca1
	iffalse UnknownScript_0x56cbd
	waitbutton
	playsound $0022
	2writetext UnknownText_0x56ebd
	closetext
	writebyte WOBBUFFET
	special $0039
	givepoke WOBBUFFET, 15, 0, 0
	takecoins 1500
	2jump UnknownScript_0x56d0c
; 0x56db0


MenuDataHeader_0x56db0: ; 0x56db0
	db $40 ; flags
	db 02, 00 ; start coords
	db 11, 17 ; end coords
	dw MenuData2_0x56db8
	db 1 ; default option
; 0x56db8

MenuData2_0x56db8: ; 0x56db8
	db $80 ; flags
	db 4 ; items
	db "ABRA        100@"
	db "CUBONE      800@"
	db "WOBBUFFET  1500@"
	db "CANCEL@"
; 0x56df1


PharmacistScript_0x56df1: ; 0x56df1
	faceplayer
	loadfont
	2writetext UnknownText_0x56f55
	closetext
	loadmovesprites
	spriteface $fe, $2
	end
; 0x56dfc

PokefanMScript_0x56dfc: ; 0x56dfc
	faceplayer
	loadfont
	2writetext UnknownText_0x56f9e
	closetext
	loadmovesprites
	spriteface $7, $3
	end
; 0x56e07

CooltrainerMScript_0x56e07: ; 0x56e07
	faceplayer
	loadfont
	2writetext UnknownText_0x56ff4
	closetext
	loadmovesprites
	spriteface $8, $2
	end
; 0x56e12

PokefanFScript_0x56e12: ; 0x56e12
	faceplayer
	loadfont
	2writetext UnknownText_0x5702b
	closetext
	loadmovesprites
	spriteface $9, $3
	end
; 0x56e1d

CooltrainerFScript_0x56e1d: ; 0x56e1d
	jumptextfaceplayer UnknownText_0x57097
; 0x56e20

GentlemanScript_VF: ; 0x56e1d
	jumptextfaceplayer UnknownText_VF
; 0x56e20

GentlemanScript_0x56e20: ; 0x56e20
	faceplayer
	loadfont
	2writetext UnknownText_0x570b1
	closetext
	loadmovesprites
	spriteface $b, $3
	end
; 0x56e2b

PokefanMScript_0x56e2b: ; 0x56e2b
	jumptextfaceplayer UnknownText_0x5710d
; 0x56e2e

MapGoldenrodGameCornerSignpost30Script: ; 0x56e2e
	jumptext UnknownText_0x571af
; 0x56e31

MapGoldenrodGameCornerSignpost17Script: ; 0x56e31
	random $6
	if_equal $0, MapGoldenrodGameCornerSignpost7Script
	refreshscreen $0
	writebyte $0
	special $002a
	loadmovesprites
	end
; 0x56e40

MapGoldenrodGameCornerSignpost7Script: ; 0x56e40
	refreshscreen $0
	writebyte $1
	special $002a
	loadmovesprites
	end
; 0x56e49

MapGoldenrodGameCornerSignpost29Script: ; 0x56e49
	refreshscreen $0
	special $002b
	loadmovesprites
	end
; 0x56e50

MapGoldenrodGameCornerSignpostVFScript: ; 0x56e49
	refreshscreen $0
	special $002c
	loadmovesprites
	end
; 0x56e50

UnknownText_0x56e50: ; 0x56e50
	db $0, "Welcome!", $51
	db "We exchange your", $4f
	db "game coins for", $55
	db "fabulous prizes!", $57
; 0x56e8b

UnknownText_0x56e8b: ; 0x56e8b
	db $0, "Which prize would", $4f
	db "you like?", $57
; 0x56ea8

UnknownText_0x56ea8: ; 0x56ea8
	text_from_ram $d099
	db $0, ".", $4f
	db "Is that right?", $57
; 0x56ebd

UnknownText_0x56ebd: ; 0x56ebd
	db $0, "Here you go!", $57
; 0x56ecb

UnknownText_0x56ecb: ; 0x56ecb
	db $0, "Sorry! You need", $4f
	db "more coins.", $57
; 0x56ee8

UnknownText_0x56ee8: ; 0x56ee8
	db $0, "Sorry. You can't", $4f
	db "carry any more.", $57
; 0x56f09

UnknownText_0x56f09: ; 0x56f09
	db $0, "OK. Please save", $4f
	db "your coins and", $55
	db "come again!", $57
; 0x56f35

UnknownText_0x56f35: ; 0x56f35
	db $0, "Oh? You don't have", $4f
	db "a COIN CASE.", $57
; 0x56f55

UnknownText_0x56f55: ; 0x56f55
	db $0, "I always play this", $4f
	db "slot machine. It", $51
	db "pays out more than", $4f
	db "others, I think.", $57
; 0x56f9e

UnknownText_0x56f9e: ; 0x56f9e
	db $0, "I just love this", $4f
	db "new slot machine.", $51
	db "It's more of a", $4f
	db "challenge than the", $55
	db "ones in CELADON.", $57
; 0x56ff4

UnknownText_0x56ff4: ; 0x56ff4
	db $0, "Life is a gamble.", $4f
	db "I'm going to flip", $55
	db "cards till I drop!", $57
; 0x5702b

UnknownText_0x5702b: ; 0x5702b
	db $0, "Card flip…", $51
	db "I prefer it over", $4f
	db "the slots because", $51
	db "it's easier to", $4f
	db "figure the odds.", $51
	db "But the payout is", $4f
	db "much lower.", $57
; 0x57097

UnknownText_0x57097: ; 0x57097
	db $0, "I won't quit until", $4f
	db "I win!", $57
; 0x570b1

UnknownText_0x570b1: ; 0x570b1
	db $0, "I taught BLIZZARD", $4f
	db "to my #MON.", $51
	db "It was hard to get", $4f
	db "enough coins for", $51
	db "it, but it was", $4f
	db "worth it.", $57
; 0x5710d

UnknownText_0x5710d: ; 0x5710d
	db $0, "I couldn't win at", $4f
	db "the slots, and I", $51
	db "blew it on card", $4f
	db "flipping…", $51
	db "I got so furious,", $4f
	db "I tossed out my", $51
	db "COIN CASE in the", $4f
	db "UNDERGROUND.", $57
; 0x5718a

UnknownText_0x5718a: ; 0x5718a
	db $0, "Wahahah! The coins", $4f
	db "keep rolling in!", $57
; 0x571af

UnknownText_0x571af: ; 0x571af
	db $0, "Someone left their", $4f
	db "drink.", $51
	db "It smells sweet.", $57
; 0x571db

UnknownText_VF: ; 0x56f9e
	db $0, "Voltorb Flip makes", $4f
	db "my heart pound", $51
	db "with excitement!", $51
	db "You can mark cards", $4f
	db "by holding B and", $51
	db "press a diagonal!", $51
	db "To keep your coins", $4f
	db "press SELECT", $51
	db "to quit, press", $4f
	db "START.", $57
; 0x56ff4

GoldenrodGameCorner_MapEventHeader: ; 0x571db
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $d, $2, 10, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY
	warp_def $d, $3, 10, GROUP_GOLDENROD_CITY, MAP_GOLDENROD_CITY

	; xy triggers
	db 0

	; signposts
	db 31
	signpost 6, 6, $0, MapGoldenrodGameCornerSignpost17Script
	signpost 7, 6, $0, MapGoldenrodGameCornerSignpost17Script
	signpost 8, 6, $0, MapGoldenrodGameCornerSignpost17Script
	signpost 9, 6, $0, MapGoldenrodGameCornerSignpost17Script
	signpost 10, 6, $0, MapGoldenrodGameCornerSignpost17Script
	signpost 11, 6, $3, MapGoldenrodGameCornerSignpost17Script
	signpost 6, 7, $0, MapGoldenrodGameCornerSignpost17Script
	signpost 7, 7, $0, MapGoldenrodGameCornerSignpost7Script
	signpost 8, 7, $0, MapGoldenrodGameCornerSignpost17Script
	signpost 9, 7, $0, MapGoldenrodGameCornerSignpost17Script
	signpost 10, 7, $0, MapGoldenrodGameCornerSignpost17Script
	signpost 11, 7, $4, MapGoldenrodGameCornerSignpost17Script
	signpost 6, 12, $0, MapGoldenrodGameCornerSignpost17Script
	signpost 7, 12, $0, MapGoldenrodGameCornerSignpost17Script
	signpost 8, 12, $0, MapGoldenrodGameCornerSignpost17Script
	signpost 9, 12, $0, MapGoldenrodGameCornerSignpost17Script
	signpost 10, 12, $0, MapGoldenrodGameCornerSignpost17Script
	signpost 11, 12, $3, MapGoldenrodGameCornerSignpost17Script
	signpost 6, 13, $0, MapGoldenrodGameCornerSignpost29Script
	signpost 7, 13, $0, MapGoldenrodGameCornerSignpost29Script
	signpost 8, 13, $0, MapGoldenrodGameCornerSignpost29Script
	signpost 9, 13, $0, MapGoldenrodGameCornerSignpost29Script
	signpost 10, 13, $0, MapGoldenrodGameCornerSignpost29Script
	signpost 11, 13, $4, MapGoldenrodGameCornerSignpost29Script
	signpost 6, 18, $0, MapGoldenrodGameCornerSignpostVFScript
	signpost 7, 18, $0, MapGoldenrodGameCornerSignpostVFScript
	signpost 8, 18, $0, MapGoldenrodGameCornerSignpostVFScript
	signpost 9, 18, $0, MapGoldenrodGameCornerSignpostVFScript
	signpost 10, 18, $0, MapGoldenrodGameCornerSignpostVFScript
	signpost 11, 18, $3, MapGoldenrodGameCornerSignpostVFScript
	signpost 1, 12, $4, MapGoldenrodGameCornerSignpost30Script

	; people-events
	db 12
	person_event SPRITE_CLERK, 6, 7, $6, $0, 255, 255, $80, 0, ClerkScript_0x56c25, $ffff
	person_event SPRITE_RECEPTIONIST, 6, 20, $6, $0, 255, 255, $80, 0, ReceptionistScript_0x56c28, $ffff
	person_event SPRITE_RECEPTIONIST, 6, 22, $6, $0, 255, 255, $80, 0, ReceptionistScript_0x56d01, $ffff
	person_event SPRITE_PHARMACIST, 11, 12, $8, $0, 255, 255, $90, 0, PharmacistScript_0x56df1, $ffff
	person_event SPRITE_GENTLEMAN, 15, 21, $9, $0, 255, 255, $b0, 0, GentlemanScript_VF, $ffff
	person_event SPRITE_POKEFAN_M, 14, 15, $9, $0, 255, 255, $b0, 0, PokefanMScript_0x56dfc, $ffff
	person_event SPRITE_COOLTRAINER_M, 12, 18, $8, $0, 255, 255, $90, 0, CooltrainerMScript_0x56e07, $ffff
	person_event SPRITE_POKEFAN_F, 10, 21, $9, $0, 255, 255, $80, 0, PokefanFScript_0x56e12, $ffff
	person_event SPRITE_COOLTRAINER_F, 7, 14, $2, $12, 255, 255, $a0, 0, CooltrainerFScript_0x56e1d, $ffff
	person_event SPRITE_GENTLEMAN, 14, 9, $9, $0, 255, 255, $90, 0, GentlemanScript_0x56e20, $ffff
	person_event SPRITE_POKEFAN_M, 13, 6, $2, $11, 255, 255, $b0, 0, PokefanMScript_0x56e2b, $ffff
	person_event SPRITE_POKEFAN_M, 13, 21, $9, $0, 255, 255, $80, 0, PokefanMScript_0x56c1a, $076b
; 0x57322



