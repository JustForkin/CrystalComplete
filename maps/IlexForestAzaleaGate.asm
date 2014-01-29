IlexForestAzaleaGate_MapScriptHeader: ; 0x62c78
	; trigger count
	db 0

	; callback count
	db 0
; 0x62c7a

OfficerScript_0x62c7a: ; 0x62c7a
	jumptextfaceplayer UnknownText_0x62c80
; 0x62c7d

GrannyScript_0x62c7d: ; 0x62c7d
	jumptextfaceplayer UnknownText_0x62cb0
; 0x62c80

UnknownText_0x62c80: ; 0x62c80
	db $0, "ILEX FOREST is", $4f
	db "big. Be careful!", $55
	db "Don't get lost.", $57
; 0x62cb0

UnknownText_0x62cb0: ; 0x62cb0
	db $0, "The FOREST is", $4f
	db "watched over by", $55
	db "its protector.", $51
	db "Stay out of", $4f
	db "mischief!", $57
; 0x62cf4

IlexForestAzaleaGate_MapEventHeader: ; 0x62cf4
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $4, $0, 2, GROUP_ILEX_FOREST, MAP_ILEX_FOREST
	warp_def $5, $0, 3, GROUP_ILEX_FOREST, MAP_ILEX_FOREST
	warp_def $4, $9, 7, GROUP_AZALEA_TOWN, MAP_AZALEA_TOWN
	warp_def $5, $9, 8, GROUP_AZALEA_TOWN, MAP_AZALEA_TOWN

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 2
	person_event SPRITE_OFFICER, 6, 9, $6, $0, 255, 255, $80, 0, OfficerScript_0x62c7a, $ffff
	person_event SPRITE_GRANNY, 7, 5, $6, $0, 255, 255, $b0, 0, GrannyScript_0x62c7d, $ffff
; 0x62d28

