Route32RuinsofAlphGate_MapScriptHeader: ; 0x69a2b
	; trigger count
	db 0

	; callback count
	db 0
; 0x69a2d

OfficerScript_0x69a2d: ; 0x69a2d
	jumptextfaceplayer UnknownText_0x69a36
; 0x69a30

PokefanMScript_0x69a30: ; 0x69a30
	jumptextfaceplayer UnknownText_0x69a81
; 0x69a33

YoungsterScript_0x69a33: ; 0x69a33
	jumptextfaceplayer UnknownText_0x69abd
; 0x69a36

UnknownText_0x69a36: ; 0x69a36
	db $0, "RUINS OF ALPH", $51
	db "A Look-and-Touch", $4f
	db "Tourist Site", $51
	db "Try the sliding", $4f
	db "stone panels!", $57
; 0x69a81

UnknownText_0x69a81: ; 0x69a81
	db $0, "You're studying", $4f
	db "the RUINS?", $51
	db "I see a scientist", $4f
	db "in the making.", $57
; 0x69abd

UnknownText_0x69abd: ; 0x69abd
	db $0, "There are drawings", $4f
	db "on stone panels.", $51
	db "I tried moving", $4f
	db "them. I wonder", $55
	db "what they are.", $57
; 0x69b0f

Route32RuinsofAlphGate_MapEventHeader: ; 0x69b0f
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $4, $0, 10, GROUP_RUINS_OF_ALPH_OUTSIDE, MAP_RUINS_OF_ALPH_OUTSIDE
	warp_def $5, $0, 11, GROUP_RUINS_OF_ALPH_OUTSIDE, MAP_RUINS_OF_ALPH_OUTSIDE
	warp_def $4, $9, 2, GROUP_ROUTE_32, MAP_ROUTE_32
	warp_def $5, $9, 3, GROUP_ROUTE_32, MAP_ROUTE_32

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_OFFICER, 6, 9, $6, $0, 255, 255, $80, 0, OfficerScript_0x69a2d, $ffff
	person_event SPRITE_POKEFAN_M, 6, 12, $4, $10, 255, 255, $b0, 0, PokefanMScript_0x69a30, $ffff
	person_event SPRITE_YOUNGSTER, 10, 5, $7, $0, 255, 255, $a0, 0, YoungsterScript_0x69a33, $ffff
; 0x69b50

