VermilionCity_MapScriptHeader: ; 0x1aa97a
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 5, UnknownScript_0x1aa97f
; 0x1aa97f

UnknownScript_0x1aa97f: ; 0x1aa97f
	setflag $003a
	return
; 0x1aa983

TeacherScript_0x1aa983: ; 0x1aa983
	jumptextfaceplayer UnknownText_0x1aaa15
; 0x1aa986

GrampsScript_0x1aa986: ; 0x1aa986
	jumptextfaceplayer UnknownText_0x1aaa6f
; 0x1aa989

MachopScript_0x1aa989: ; 0x1aa989
	loadfont
	2writetext UnknownText_0x1aaaca
	cry MACHOP
	closetext
	loadmovesprites
	earthquake 30
	loadfont
	2writetext UnknownText_0x1aaae2
	closetext
	loadmovesprites
	end
; 0x1aa99b

SuperNerdScript_0x1aa99b: ; 0x1aa99b
	jumptextfaceplayer UnknownText_0x1aab1a
; 0x1aa99e

BigSnorlaxScript_0x1aa99e: ; 0x1aa99e
	loadfont
	special $0060
	iftrue UnknownScript_0x1aa9ab
	2writetext UnknownText_0x1aab64
	closetext
	loadmovesprites
	end
; 0x1aa9ab

UnknownScript_0x1aa9ab: ; 0x1aa9ab
	2writetext UnknownText_0x1aab84
	pause 15
	cry SNORLAX
	loadmovesprites
	writecode $3, $a
	loadpokedata SNORLAX, 50
	startbattle
	disappear $6
	setevent EVENT_FOUGHT_SNORLAX
	returnafterbattle
	end
; 0x1aa9c2

PokefanMScript_0x1aa9c2: ; 0x1aa9c2
	faceplayer
	loadfont
	checkevent $00e2
	iftrue UnknownScript_0x1aa9f7
	checkcode $7
	if_equal $10, UnknownScript_0x1aa9ea
	if_greater_than $d, UnknownScript_0x1aa9e4
	if_greater_than $9, UnknownScript_0x1aa9de
	2writetext UnknownText_0x1aabc8
	closetext
	loadmovesprites
	end
; 0x1aa9de

UnknownScript_0x1aa9de: ; 0x1aa9de
	2writetext UnknownText_0x1aac2b
	closetext
	loadmovesprites
	end
; 0x1aa9e4

UnknownScript_0x1aa9e4: ; 0x1aa9e4
	2writetext UnknownText_0x1aac88
	closetext
	loadmovesprites
	end
; 0x1aa9ea

UnknownScript_0x1aa9ea: ; 0x1aa9ea
	2writetext UnknownText_0x1aacf3
	keeptextopen
	verbosegiveitem HP_UP, 1
	iffalse UnknownScript_0x1aa9fb
	setevent $00e2
UnknownScript_0x1aa9f7: ; 0x1aa9f7
	2writetext UnknownText_0x1aad4a
	closetext
UnknownScript_0x1aa9fb: ; 0x1aa9fb
	loadmovesprites
	end
; 0x1aa9fd

MapVermilionCitySignpost0Script: ; 0x1aa9fd
	jumptext UnknownText_0x1aadb9
; 0x1aaa00

MapVermilionCitySignpost1Script: ; 0x1aaa00
	jumptext UnknownText_0x1aade7
; 0x1aaa03

MapVermilionCitySignpost2Script: ; 0x1aaa03
	jumptext UnknownText_0x1aae28
; 0x1aaa06

MapVermilionCitySignpost3Script: ; 0x1aaa06
	jumptext UnknownText_0x1aae4e
; 0x1aaa09

MapVermilionCitySignpost4Script: ; 0x1aaa09
	jumptext UnknownText_0x1aae5e
; 0x1aaa0c

MapVermilionCitySignpost5Script: ; 0x1aaa0c
	jumpstd $0010
; 0x1aaa0f

MapVermilionCitySignpost6Script: ; 0x1aaa0f
	jumpstd $0011
; 0x1aaa12

MapVermilionCitySignpostItem7: ; 0x1aaa12
	dw $00fc
	db FULL_HEAL
	
; 0x1aaa15

UnknownText_0x1aaa15: ; 0x1aaa15
	db $0, "VERMILION PORT is", $4f
	db "KANTO's seaside", $55
	db "gateway.", $51
	db "Luxury liners from", $4f
	db "around the world", $55
	db "dock here.", $57
; 0x1aaa6f

UnknownText_0x1aaa6f: ; 0x1aaa6f
	db $0, "My #MON is", $4f
	db "preparing the land", $55
	db "for construction.", $51
	db "But I have no", $4f
	db "money to start the", $55
	db "project…", $57
; 0x1aaaca

UnknownText_0x1aaaca: ; 0x1aaaca
	db $0, "MACHOP: Guooh", $4f
	db "gogogoh!", $57
; 0x1aaae2

UnknownText_0x1aaae2: ; 0x1aaae2
	db $0, "A MACHOP is growl-", $4f
	db "ing while stomping", $55
	db "the ground flat.", $57
; 0x1aab1a

UnknownText_0x1aab1a: ; 0x1aab1a
	db $0, "There are eight", $4f
	db "GYMS in KANTO.", $51
	db "That big building", $4f
	db "is VERMILION's", $55
	db "#MON GYM.", $57
; 0x1aab64

UnknownText_0x1aab64: ; 0x1aab64
	db $0, "SNORLAX is snoring", $4f
	db "peacefully…", $57
; 0x1aab84

UnknownText_0x1aab84: ; 0x1aab84
	db $0, "The #GEAR was", $4f
	db "placed near the", $55
	db "sleeping SNORLAX…", $51
	db "…", $51
	db "SNORLAX woke up!", $57
; 0x1aabc8

UnknownText_0x1aabc8: ; 0x1aabc8
	db $0, "Skilled trainers", $4f
	db "gather in KANTO.", $51
	db "GYM LEADERS are", $4f
	db "especially strong.", $51
	db "They won't be easy", $4f
	db "to defeat.", $57
; 0x1aac2b

UnknownText_0x1aac2b: ; 0x1aac2b
	db $0, "You've started to", $4f
	db "collect KANTO GYM", $55
	db "BADGES?", $51
	db "Don't you agree", $4f
	db "that the trainers", $55
	db "here are tough?", $57
; 0x1aac88

UnknownText_0x1aac88: ; 0x1aac88
	db $0, "I guess you'll be", $4f
	db "finished with your", $51
	db "conquest of KANTO", $4f
	db "GYMS soon.", $51
	db "Let me know if", $4f
	db "you get all eight", $55
	db "BADGES.", $57
; 0x1aacf3

UnknownText_0x1aacf3: ; 0x1aacf3
	db $0, "Congratulations!", $51
	db "You got all the", $4f
	db "KANTO GYM BADGES.", $51
	db "I've got a reward", $4f
	db "for your efforts.", $57
; 0x1aad4a

UnknownText_0x1aad4a: ; 0x1aad4a
	db $0, "Having a variety", $4f
	db "of #MON types", $51
	db "should give you an", $4f
	db "edge in battle.", $51
	db "I'm sure the KANTO", $4f
	db "GYM BADGES will", $55
	db "help you.", $57
; 0x1aadb9

UnknownText_0x1aadb9: ; 0x1aadb9
	db $0, "VERMILION CITY", $51
	db "The Port of", $4f
	db "Exquisite Sunsets", $57
; 0x1aade7

UnknownText_0x1aade7: ; 0x1aade7
	db $0, "VERMILION CITY", $4f
	db "#MON GYM", $55
	db "LEADER: LT.SURGE", $51
	db "The Lightning", $4f
	db "American", $57
; 0x1aae28

UnknownText_0x1aae28: ; 0x1aae28
	db $0, "#MON FAN CLUB", $51
	db "All #MON Fans", $4f
	db "Welcome!", $57
; 0x1aae4e

UnknownText_0x1aae4e: ; 0x1aae4e
	db $0, "DIGLETT'S CAVE", $57
; 0x1aae5e

UnknownText_0x1aae5e: ; 0x1aae5e
	db $0, "VERMILION PORT", $4f
	db "ENTRANCE", $57
; 0x1aae77

VermilionCity_MapEventHeader: ; 0x1aae77
	; filler
	db 0, 0

	; warps
	db 10
	warp_def $5, $5, 1, GROUP_VERMILION_HOUSE_FISHING_SPEECH_HOUSE, MAP_VERMILION_HOUSE_FISHING_SPEECH_HOUSE
	warp_def $5, $9, 1, GROUP_VERMILION_POKECENTER_1F, MAP_VERMILION_POKECENTER_1F
	warp_def $d, $7, 1, GROUP_POKEMON_FAN_CLUB, MAP_POKEMON_FAN_CLUB
	warp_def $d, $d, 1, GROUP_VERMILION_MAGNET_TRAIN_SPEECH_HOUSE, MAP_VERMILION_MAGNET_TRAIN_SPEECH_HOUSE
	warp_def $d, $15, 2, GROUP_VERMILION_MART, MAP_VERMILION_MART
	warp_def $11, $15, 1, GROUP_VERMILION_HOUSE_DIGLETTS_CAVE_SPEECH_HOUSE, MAP_VERMILION_HOUSE_DIGLETTS_CAVE_SPEECH_HOUSE
	warp_def $13, $a, 1, GROUP_VERMILION_GYM, MAP_VERMILION_GYM
	warp_def $1f, $13, 1, GROUP_VERMILION_PORT_PASSAGE, MAP_VERMILION_PORT_PASSAGE
	warp_def $1f, $14, 2, GROUP_VERMILION_PORT_PASSAGE, MAP_VERMILION_PORT_PASSAGE
	warp_def $7, $22, 1, GROUP_DIGLETTS_CAVE, MAP_DIGLETTS_CAVE

	; xy triggers
	db 0

	; signposts
	db 8
	signpost 3, 25, $0, MapVermilionCitySignpost0Script
	signpost 19, 5, $0, MapVermilionCitySignpost1Script
	signpost 13, 5, $0, MapVermilionCitySignpost2Script
	signpost 9, 33, $0, MapVermilionCitySignpost3Script
	signpost 15, 27, $0, MapVermilionCitySignpost4Script
	signpost 5, 10, $0, MapVermilionCitySignpost5Script
	signpost 13, 22, $0, MapVermilionCitySignpost6Script
	signpost 19, 12, $7, MapVermilionCitySignpostItem7

	; people-events
	db 6
	person_event SPRITE_TEACHER, 13, 22, $2, $11, 255, 255, $0, 0, TeacherScript_0x1aa983, $ffff
	person_event SPRITE_GRAMPS, 10, 27, $9, $0, 255, 255, $0, 0, GrampsScript_0x1aa986, $ffff
	person_event SPRITE_MACHOP, 11, 30, $16, $0, 255, 255, $90, 0, MachopScript_0x1aa989, $ffff
	person_event SPRITE_SUPER_NERD, 20, 18, $2, $11, 255, 255, $a0, 0, SuperNerdScript_0x1aa99b, $ffff
	person_event SPRITE_BIG_SNORLAX, 12, 38, $15, $0, 255, 255, $0, 0, BigSnorlaxScript_0x1aa99e, $0770
	person_event SPRITE_POKEFAN_M, 16, 35, $6, $0, 255, 255, $80, 0, PokefanMScript_0x1aa9c2, $ffff
; 0x1aaf25

