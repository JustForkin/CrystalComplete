SaffronMart_MapScriptHeader: ; 0x18a3bd
	; trigger count
	db 0

	; callback count
	db 0
; 0x18a3bf

ClerkScript_0x18a3bf: ; 0x18a3bf
	loadfont
	pokemart $0, $001e
	loadmovesprites
	end
; 0x18a3c6

CooltrainerMScript_0x18a3c6: ; 0x18a3c6
	jumptextfaceplayer UnknownText_0x18a3cc
; 0x18a3c9

CooltrainerFScript_0x18a3c9: ; 0x18a3c9
	jumptextfaceplayer UnknownText_0x18a3f3
; 0x18a3cc

UnknownText_0x18a3cc: ; 0x18a3cc
	db $0, "There's a big", $4f
	db "RADIO TOWER in", $55
	db "LAVENDER.", $57
; 0x18a3f3

UnknownText_0x18a3f3: ; 0x18a3f3
	db $0, "I want to become", $4f
	db "stronger, but I'm", $55
	db "not good yet…", $51
	db "Could you show me", $4f
	db "how sometime?", $57
; 0x18a444

SaffronMart_MapEventHeader: ; 0x18a444
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 3, GROUP_SAFFRON_CITY, MAP_SAFFRON_CITY
	warp_def $7, $3, 3, GROUP_SAFFRON_CITY, MAP_SAFFRON_CITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_CLERK, 7, 5, $9, $0, 255, 255, $0, 0, ClerkScript_0x18a3bf, $ffff
	person_event SPRITE_COOLTRAINER_M, 6, 11, $3, $0, 255, 255, $b0, 0, CooltrainerMScript_0x18a3c6, $ffff
	person_event SPRITE_COOLTRAINER_F, 10, 11, $5, $1, 255, 255, $a0, 0, CooltrainerFScript_0x18a3c9, $ffff
; 0x18a47b

