OlivineLighthouse4F_MapScriptHeader: ; 0x5b4e8
	; trigger count
	db 0

	; callback count
	db 0
; 0x5b4ea

TrainerLassConnie1: ; 0x5b4ea
	; bit/flag number
	dw $519

	; trainer group && trainer id
	db LASS, CONNIE1

	; text when seen
	dw LassConnie1SeenText

	; text when trainer beaten
	dw LassConnie1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw LassConnie1Script
; 0x5b4f6

LassConnie1Script: ; 0x5b4f6
	talkaftercancel
	loadfont
	2writetext UnknownText_0x5b63c
	closetext
	loadmovesprites
	end
; 0x5b4fe

TrainerSailorKent: ; 0x5b4fe
	; bit/flag number
	dw $578

	; trainer group && trainer id
	db SAILOR, KENT

	; text when seen
	dw SailorKentSeenText

	; text when trainer beaten
	dw SailorKentBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SailorKentScript
; 0x5b50a

SailorKentScript: ; 0x5b50a
	talkaftercancel
	loadfont
	2writetext UnknownText_0x5b584
	closetext
	loadmovesprites
	end
; 0x5b512

SailorKentSeenText: ; 0x5b512
	db $0, "JASMINE must be", $4f
	db "worried sick about", $55
	db "the #MON here.", $51
	db "She won't even", $4f
	db "smile these days.", $57
; 0x5b565

SailorKentBeatenText: ; 0x5b565
	db $0, "I can't manage a", $4f
	db "smile either…", $57
; 0x5b584

UnknownText_0x5b584: ; 0x5b584
	db $0, "Speaking of sick,", $4f
	db "I've heard there's", $51
	db "a good PHARMACY in", $4f
	db "CIANWOOD.", $57
; 0x5b5c5

LassConnie1SeenText: ; 0x5b5c5
	db $0, "JASMINE is this", $4f
	db "city's GYM LEADER.", $51
	db "I mean to bring", $4f
	db "her back with me.", $51
	db "Nobody had better", $4f
	db "get in my way!", $57
; 0x5b62b

LassConnie1BeatenText: ; 0x5b62b
	db $0, "Aaack! My #MON!", $57
; 0x5b63c

UnknownText_0x5b63c: ; 0x5b63c
	db $0, "Right. Anybody", $4f
	db "would be worried", $55
	db "if his or her own", $55
	db "#MON were hurt.", $51
	db "I'll pray for the", $4f
	db "#MON here, so", $51
	db "JASMINE can come", $4f
	db "back to the GYM.", $57
; 0x5b6c0

OlivineLighthouse4F_MapEventHeader: ; 0x5b6c0
	; filler
	db 0, 0

	; warps
	db 10
	warp_def $3, $d, 1, GROUP_OLIVINE_LIGHTHOUSE_3F, MAP_OLIVINE_LIGHTHOUSE_3F
	warp_def $5, $3, 2, GROUP_OLIVINE_LIGHTHOUSE_5F, MAP_OLIVINE_LIGHTHOUSE_5F
	warp_def $7, $9, 3, GROUP_OLIVINE_LIGHTHOUSE_5F, MAP_OLIVINE_LIGHTHOUSE_5F
	warp_def $5, $9, 3, GROUP_OLIVINE_LIGHTHOUSE_3F, MAP_OLIVINE_LIGHTHOUSE_3F
	warp_def $9, $10, 6, GROUP_OLIVINE_LIGHTHOUSE_3F, MAP_OLIVINE_LIGHTHOUSE_3F
	warp_def $9, $11, 7, GROUP_OLIVINE_LIGHTHOUSE_3F, MAP_OLIVINE_LIGHTHOUSE_3F
	warp_def $3, $8, 8, GROUP_OLIVINE_LIGHTHOUSE_3F, MAP_OLIVINE_LIGHTHOUSE_3F
	warp_def $3, $9, 9, GROUP_OLIVINE_LIGHTHOUSE_3F, MAP_OLIVINE_LIGHTHOUSE_3F
	warp_def $7, $10, 4, GROUP_OLIVINE_LIGHTHOUSE_5F, MAP_OLIVINE_LIGHTHOUSE_5F
	warp_def $7, $11, 5, GROUP_OLIVINE_LIGHTHOUSE_5F, MAP_OLIVINE_LIGHTHOUSE_5F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 2
	person_event SPRITE_SAILOR, 18, 11, $8, $0, 255, 255, $92, 3, TrainerSailorKent, $ffff
	person_event SPRITE_LASS, 6, 15, $6, $0, 255, 255, $92, 1, TrainerLassConnie1, $ffff
; 0x5b712



