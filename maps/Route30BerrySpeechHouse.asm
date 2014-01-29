Route30BerrySpeechHouse_MapScriptHeader: ; 0x196d62
	; trigger count
	db 0

	; callback count
	db 0
; 0x196d64

PokefanMScript_0x196d64: ; 0x196d64
	faceplayer
	loadfont
	checkevent EVENT_GOT_BERRY_FROM_ROUTE_30_HOUSE
	iftrue UnknownScript_0x196d79
	2writetext UnknownText_0x196d82
	keeptextopen
	verbosegiveitem BERRY, 1
	iffalse UnknownScript_0x196d7d
	setevent EVENT_GOT_BERRY_FROM_ROUTE_30_HOUSE
UnknownScript_0x196d79: ; 0x196d79
	2writetext UnknownText_0x196dec
	closetext
UnknownScript_0x196d7d: ; 0x196d7d
	loadmovesprites
	end
; 0x196d7f

MapRoute30BerrySpeechHouseSignpost1Script: ; 0x196d7f
	jumpstd $0003
; 0x196d82

UnknownText_0x196d82: ; 0x196d82
	db $0, "You know, #MON", $4f
	db "eat BERRIES.", $51
	db "Well, my #MON", $4f
	db "got healthier by", $55
	db "eating a BERRY.", $51
	db "Here. I'll share", $4f
	db "one with you!", $57
; 0x196dec

UnknownText_0x196dec: ; 0x196dec
	db $0, "Check trees for", $4f
	db "BERRIES. They just", $55
	db "drop right off.", $57
; 0x196e20

Route30BerrySpeechHouse_MapEventHeader: ; 0x196e20
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 1, GROUP_ROUTE_30, MAP_ROUTE_30
	warp_def $7, $3, 1, GROUP_ROUTE_30, MAP_ROUTE_30

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, $0, MapRoute30BerrySpeechHouseSignpost1Script
	signpost 1, 1, $0, MapRoute30BerrySpeechHouseSignpost1Script

	; people-events
	db 1
	person_event SPRITE_POKEFAN_M, 7, 6, $6, $0, 255, 255, $b0, 0, PokefanMScript_0x196d64, $ffff
; 0x196e47

