Route38EcruteakGate_MapScriptHeader: ; 0x9cbd5
	; trigger count
	db 0

	; callback count
	db 0
; 0x9cbd7

OfficerScript_0x9cbd7: ; 0x9cbd7
	jumptextfaceplayer UnknownText_0x9cbda
; 0x9cbda

UnknownText_0x9cbda: ; 0x9cbda
	db $0, "Where did you say", $4f
	db "you're from?", $51
	db "NEW BARK TOWN?", $51
	db "PROF.ELM lives", $4f
	db "over there, right?", $51
	db "You've come a long", $4f
	db "way to get here.", $57
; 0x9cc4d

Route38EcruteakGate_MapEventHeader: ; 0x9cc4d
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $4, $0, 1, GROUP_ROUTE_38, MAP_ROUTE_38
	warp_def $5, $0, 2, GROUP_ROUTE_38, MAP_ROUTE_38
	warp_def $4, $9, 14, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY
	warp_def $5, $9, 15, GROUP_ECRUTEAK_CITY, MAP_ECRUTEAK_CITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_OFFICER, 6, 9, $6, $0, 255, 255, $80, 0, OfficerScript_0x9cbd7, $ffff
; 0x9cc74

