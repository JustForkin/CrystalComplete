BurnedTowerB1F_MapScriptHeader: ; 0x186151
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x18615e, $0000
	dw UnknownScript_0x18615f, $0000

	; callback count
	db 1

	; callbacks

	dbw 1, UnknownScript_0x186160
; 0x18615e

UnknownScript_0x18615e: ; 0x18615e
	end
; 0x18615f

UnknownScript_0x18615f: ; 0x18615f
	end
; 0x186160

UnknownScript_0x186160: ; 0x186160
	checkevent EVENT_RELEASED_THE_BEASTS
	iftrue UnknownScript_0x18616a
	changeblock $6, $e, $2
UnknownScript_0x18616a: ; 0x18616a
	return
; 0x18616b

UnknownScript_0x18616b: ; 0x18616b
	playmusic $0000
	pause 30
	appear $3
	spriteface $0, $1
	pause 5
	disappear $6
	pause 15
	cry RAIKOU
	appear $4
	spriteface $0, $1
	pause 5
	disappear $7
	pause 15
	cry ENTEI
	appear $5
	spriteface $0, $1
	pause 5
	disappear $8
	pause 15
	cry SUICUNE
	pause 15
	playsound $0014
	spriteface $0, $2
	applymovement $3, MovementData_0x186236
	disappear $3
	waitbutton
	playsound $0014
	spriteface $0, $3
	applymovement $4, MovementData_0x18623b
	disappear $4
	waitbutton
	pause 15
	playsound $0014
	spriteface $0, $1
	applymovement $5, MovementData_0x186241
	playsound $0014
	spriteface $0, $0
	applymovement $5, MovementData_0x186248
	spriteface $0, $1
	pause 20
	cry SUICUNE
	pause 30
	playsound $0014
	applymovement $5, MovementData_0x186253
	spriteface $0, $0
	disappear $5
	waitbutton
	special $003d
	dotrigger $1
	setevent EVENT_RELEASED_THE_BEASTS
	special $0069
	domaptrigger GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM, $1
	domaptrigger GROUP_CIANWOOD_CITY, MAP_CIANWOOD_CITY, $1
	clearevent EVENT_SAW_SUICUNE_AT_CIANWOOD_CITY
	setevent $07a8
	clearevent $07a9
	setevent $0764
	setevent $0765
	appear $a
	refreshscreen $0
	changeblock $6, $e, $1b
	reloadmappart
	loadmovesprites
	dotrigger $1
	end
; 0x186212

SuperNerdScript_0x186212: ; 0x186212
	faceplayer
	loadfont
	2writetext UnknownText_0x18626a
	closetext
	loadmovesprites
	checkcode $9
	if_equal $1, UnknownScript_0x186226
	applymovement $a, MovementData_0x186263
	2jump UnknownScript_0x18622a
; 0x186226

UnknownScript_0x186226: ; 0x186226
	applymovement $a, MovementData_0x18625c
UnknownScript_0x18622a: ; 0x18622a
	disappear $a
	playsound $0023
	waitbutton
	end
; 0x186231

ItemFragment_0x186231: ; 0x186231
	db TM_20, 1
; 0x186233

BoulderScript_0x186233: ; 0x186233
	jumpstd $000e
; 0x186236

MovementData_0x186236: ; 0x186236
	db $39 ; movement
	fast_jump_step_down
	fast_jump_step_left
	db $38 ; movement
	step_end
; 0x18623b

MovementData_0x18623b: ; 0x18623b
	db $39 ; movement
	fast_jump_step_right
	fast_jump_step_down
	fast_jump_step_right
	db $38 ; movement
	step_end
; 0x186241

MovementData_0x186241: ; 0x186241
	db $39 ; movement
	fast_jump_step_right
	fast_jump_step_down
	fast_jump_step_down
	fast_jump_step_left
	db $38 ; movement
	step_end
; 0x186248

MovementData_0x186248: ; 0x186248
	db $39 ; movement
	fast_jump_step_left
	fast_jump_step_up
	big_step_up
	fast_jump_step_right
	db $38 ; movement
	step_end
; 0x18624f

MovementData_0x18624f: ; 0x18624f
	db $39 ; movement
	big_step_down
	db $38 ; movement
	step_end
; 0x186253

MovementData_0x186253: ; 0x186253
	db $39 ; movement
	big_step_up
	fast_jump_step_right
	fast_jump_step_down
	fast_jump_step_down
	fast_jump_step_down
	fast_jump_step_down
	db $38 ; movement
	step_end
; 0x18625c

MovementData_0x18625c: ; 0x18625c
	step_left
	step_left
	step_down
	step_down
	step_left
	step_down
	step_end
; 0x186263

MovementData_0x186263: ; 0x186263
	step_down
	step_left
	step_left
	step_left
	step_down
	step_down
	step_end
; 0x18626a

UnknownText_0x18626a: ; 0x18626a
	db $0, "EUSINE: I dug a", $4f
	db "hole here, too…", $51
	db "I was shocked!", $51
	db "SUICUNE raced by", $4f
	db "like a blur, right", $51
	db "in front of my", $4f
	db "eyes!", $51
	db "For ten years I", $4f
	db "chased SUICUNE,", $51
	db "and I finally got", $4f
	db "to see it.", $51
	db "I'm all choked up!", $51
	db $52, ", I owe", $4f
	db "this all to you!", $51
	db "Thank you!", $51
	db "I heard that the", $4f
	db "legendary #MON", $51
	db "of ECRUTEAK test", $4f
	db "chosen humans by", $51
	db "allowing them to", $4f
	db "get close.", $51
	db "I'm going to track", $4f
	db "SUICUNE.", $51
	db $52, ", let's", $4f
	db "meet again!", $51
	db "Farewell!", $57
; 0x1863de

BurnedTowerB1F_MapEventHeader: ; 0x1863de
	; filler
	db 0, 0

	; warps
	db 6
	warp_def $9, $a, 3, GROUP_BURNED_TOWER_1F, MAP_BURNED_TOWER_1F
	warp_def $7, $11, 7, GROUP_BURNED_TOWER_1F, MAP_BURNED_TOWER_1F
	warp_def $8, $a, 9, GROUP_BURNED_TOWER_1F, MAP_BURNED_TOWER_1F
	warp_def $d, $3, 10, GROUP_BURNED_TOWER_1F, MAP_BURNED_TOWER_1F
	warp_def $e, $11, 12, GROUP_BURNED_TOWER_1F, MAP_BURNED_TOWER_1F
	warp_def $f, $7, 14, GROUP_BURNED_TOWER_1F, MAP_BURNED_TOWER_1F

	; xy triggers
	db 1
	xy_trigger 0, $6, $a, $0, UnknownScript_0x18616b, $0, $0

	; signposts
	db 0

	; people-events
	db 9
	person_event SPRITE_BOULDER, 12, 21, $19, $0, 255, 255, $0, 0, BoulderScript_0x186233, $ffff
	person_event SPRITE_RAIKOU, 7, 11, $16, $0, 255, 255, $b0, 0, ObjectEvent, $074a
	person_event SPRITE_ENTEI, 7, 16, $16, $0, 255, 255, $80, 0, ObjectEvent, $074a
	person_event SPRITE_SUICUNE, 8, 14, $16, $0, 255, 255, $90, 0, ObjectEvent, $074a
	person_event SPRITE_RAIKOU, 7, 11, $6, $0, 255, 255, $d0, 0, ObjectEvent, $074b
	person_event SPRITE_ENTEI, 7, 16, $6, $0, 255, 255, $d0, 0, ObjectEvent, $074b
	person_event SPRITE_SUICUNE, 8, 14, $6, $0, 255, 255, $d0, 0, ObjectEvent, $074b
	person_event SPRITE_POKE_BALL, 8, 20, $1, $0, 255, 255, $1, 0, ItemFragment_0x186231, $0657
	person_event SPRITE_SUPER_NERD, 16, 14, $7, $0, 255, 255, $90, 0, SuperNerdScript_0x186212, $07aa
; 0x18647f



