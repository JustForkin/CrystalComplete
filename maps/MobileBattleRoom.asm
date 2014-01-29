MobileBattleRoom_MapScriptHeader: ; 0x1935c4
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x1935ce, $0000
	dw UnknownScript_0x1935d2, $0000

	; callback count
	db 0
; 0x1935ce

UnknownScript_0x1935ce: ; 0x1935ce
	priorityjump UnknownScript_0x1935d3
	end
; 0x1935d2

UnknownScript_0x1935d2: ; 0x1935d2
	end
; 0x1935d3

UnknownScript_0x1935d3: ; 0x1935d3
	dotrigger $1
	domaptrigger GROUP_POKECENTER_2F, MAP_POKECENTER_2F, $5
	end
; 0x1935da

MapMobileBattleRoomSignpost0Script: ; 0x1935da
	refreshscreen $0
	special $009f
	if_equal $1, UnknownScript_0x193619
	special $009b
	iffalse UnknownScript_0x193624
	if_equal $1, UnknownScript_0x1935f4
	if_equal $2, UnknownScript_0x19360d
	2jump UnknownScript_0x193624
; 0x1935f4

UnknownScript_0x1935f4: ; 0x1935f4
	2writetext UnknownText_0x193644
	pause 20
	loadmovesprites
	special $002e
	playmusic $000d
	special $00a4
	pause 60
	special $0031
	special $003d
	refreshscreen $0
UnknownScript_0x19360d: ; 0x19360d
	special $009d
	special $001b
	special $009c
	iftrue UnknownScript_0x193624
UnknownScript_0x193619: ; 0x193619
	special $00a2
	2writetext UnknownText_0x193626
	closetext
	reloadmappart
	special $0081
UnknownScript_0x193624: ; 0x193624
	loadmovesprites
	end
; 0x193626

UnknownText_0x193626: ; 0x193626
	db $0, "Establishing", $4f
	db "communications…", $57
; 0x193644

UnknownText_0x193644: ; 0x193644
	db $0, "Your #MON will", $4f
	db "be fully healed", $55
	db "before battle.", $57
; 0x193673

MobileBattleRoom_MapEventHeader: ; 0x193673
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $4, 6, GROUP_POKECENTER_2F, MAP_POKECENTER_2F
	warp_def $7, $5, 6, GROUP_POKECENTER_2F, MAP_POKECENTER_2F

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 2, 4, $1, MapMobileBattleRoomSignpost0Script

	; people-events
	db 0
; 0x193688



