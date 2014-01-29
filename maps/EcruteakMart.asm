EcruteakMart_MapScriptHeader: ; 0x99c39
	; trigger count
	db 0

	; callback count
	db 0
; 0x99c3b

ClerkScript_0x99c3b: ; 0x99c3b
	loadfont
	pokemart $0, $000e
	loadmovesprites
	end
; 0x99c42

SuperNerdScript_0x99c42: ; 0x99c42
	jumptextfaceplayer UnknownText_0x99c48
; 0x99c45

GrannyScript_0x99c45: ; 0x99c45
	jumptextfaceplayer UnknownText_0x99cd5
; 0x99c48

UnknownText_0x99c48: ; 0x99c48
	db $0, "My EEVEE evolved", $4f
	db "into an ESPEON.", $51
	db "But my friend's", $4f
	db "EEVEE turned into", $55
	db "an UMBREON.", $51
	db "I wonder why? We", $4f
	db "both were raising", $51
	db "our EEVEE in the", $4f
	db "same way…", $57
; 0x99cd5

UnknownText_0x99cd5: ; 0x99cd5
	db $0, "If you use REVIVE,", $4f
	db "a #MON that's", $51
	db "fainted will wake", $4f
	db "right up.", $57
; 0x99d12

EcruteakMart_MapEventHeader: ; 0x99d12
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 9, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY
	warp_def $7, $3, 9, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_CLERK, 7, 5, $9, $0, 255, 255, $0, 0, ClerkScript_0x99c3b, $ffff
	person_event SPRITE_SUPER_NERD, 6, 9, $5, $1, 255, 255, $a0, 0, SuperNerdScript_0x99c42, $ffff
	person_event SPRITE_GRANNY, 10, 10, $7, $0, 255, 255, $0, 0, GrannyScript_0x99c45, $ffff
; 0x99d49

