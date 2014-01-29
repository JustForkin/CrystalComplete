HallOfFame_MapScriptHeader: ; 0x181445
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x18144f, $0000
	dw UnknownScript_0x181453, $0000

	; callback count
	db 0
; 0x18144f

UnknownScript_0x18144f: ; 0x18144f
	priorityjump UnknownScript_0x181454
	end
; 0x181453

UnknownScript_0x181453: ; 0x181453
	end
; 0x181454

UnknownScript_0x181454: ; 0x181454
	follow $2, $0
	applymovement $2, MovementData_0x181499
	stopfollow
	spriteface $0, $3
	loadfont
	2writetext UnknownText_0x1814a6
	closetext
	loadmovesprites
	spriteface $2, $1
	applymovement $0, MovementData_0x1814a4
	dotrigger $1
	pause 15
	writebyte $2
	special $003e
	setevent $0044
	setevent $077c
	setevent $06c4
	clearevent $0762
	setevent $0737
	clearevent $0738
	domaptrigger GROUP_SPROUT_TOWER_3F, MAP_SPROUT_TOWER_3F, $1
	special $001b
	checkevent EVENT_GOT_SS_TICKET_FROM_ELM
	iftrue UnknownScript_0x181497
	specialphonecall $5
UnknownScript_0x181497: ; 0x181497
	halloffame
	end
; 0x181499

MovementData_0x181499: ; 0x181499
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_right
	turn_head_left
	step_end
; 0x1814a4

MovementData_0x1814a4: ; 0x1814a4
	slow_step_up
	step_end
; 0x1814a6

UnknownText_0x1814a6: ; 0x1814a6
	db $0, "LANCE: It's been a", $4f
	db "long time since I", $55
	db "last came here.", $51
	db "This is where we", $4f
	db "honor the LEAGUE", $51
	db "CHAMPIONS for all", $4f
	db "eternity.", $51
	db "Their courageous", $4f
	db "#MON are also", $55
	db "inducted.", $51
	db "Here today, we", $4f
	db "witnessed the rise", $51
	db "of a new LEAGUE", $4f
	db "CHAMPION--a", $51
	db "trainer who feels", $4f
	db "compassion for,", $51
	db "and trust toward,", $4f
	db "all #MON.", $51
	db "A trainer who", $4f
	db "succeeded through", $51
	db "perseverance and", $4f
	db "determination.", $51
	db "The new LEAGUE", $4f
	db "CHAMPION who has", $51
	db "all the makings", $4f
	db "of greatness!", $51
	db $14, ", allow me", $4f
	db "to register you", $51
	db "and your partners", $4f
	db "as CHAMPIONS!", $57
; 0x181678

HallOfFame_MapEventHeader: ; 0x181678
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $d, $4, 3, GROUP_LANCES_ROOM, MAP_LANCES_ROOM
	warp_def $d, $5, 4, GROUP_LANCES_ROOM, MAP_LANCES_ROOM

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_LANCE, 16, 8, $7, $0, 255, 255, $0, 0, ObjectEvent, $ffff
; 0x181695





