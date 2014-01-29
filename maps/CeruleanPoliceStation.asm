CeruleanPoliceStation_MapScriptHeader: ; 0x188048
	; trigger count
	db 0

	; callback count
	db 0
; 0x18804a

FishingGuruScript_0x18804a: ; 0x18804a
	jumptextfaceplayer UnknownText_0x18805a
; 0x18804d

PokefanFScript_0x18804d: ; 0x18804d
	jumptextfaceplayer UnknownText_0x1880c3
; 0x188050

DiglettScript_0x188050: ; 0x188050
	loadfont
	2writetext UnknownText_0x1880e7
	cry DIGLETT
	closetext
	loadmovesprites
	end
; 0x18805a

UnknownText_0x18805a: ; 0x18805a
	db $0, "I heard that some", $4f
	db "shady character is", $55
	db "skulking about.", $51
	db "I won't stand for", $4f
	db "it if he turns out", $55
	db "to be a thief.", $57
; 0x1880c3

UnknownText_0x1880c3: ; 0x1880c3
	db $0, "We were held up by", $4f
	db "robbers before.", $57
; 0x1880e7

UnknownText_0x1880e7: ; 0x1880e7
	db $0, "DIGLETT: Dug dug.", $57
; 0x1880fa

CeruleanPoliceStation_MapEventHeader: ; 0x1880fa
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 2, GROUP_CERULEAN_CITY, MAP_CERULEAN_CITY
	warp_def $7, $3, 2, GROUP_CERULEAN_CITY, MAP_CERULEAN_CITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_FISHING_GURU, 5, 9, $7, $0, 255, 255, $a0, 0, FishingGuruScript_0x18804a, $ffff
	person_event SPRITE_POKEFAN_F, 8, 9, $8, $0, 255, 255, $90, 0, PokefanFScript_0x18804d, $ffff
	person_event SPRITE_DIGLETT, 9, 7, $16, $0, 255, 255, $b0, 0, DiglettScript_0x188050, $ffff
; 0x188131

