MountMortar1FInside_MapScriptHeader: ; 0x7de4f
	; trigger count
	db 0

	; callback count
	db 0
; 0x7de51

TrainerPokemaniacMiller: ; 0x7de51
	; bit/flag number
	dw $5c4

	; trainer group && trainer id
	db POKEMANIAC, MILLER

	; text when seen
	dw PokemaniacMillerSeenText

	; text when trainer beaten
	dw PokemaniacMillerBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PokemaniacMillerScript
; 0x7de5d

PokemaniacMillerScript: ; 0x7de5d
	talkaftercancel
	loadfont
	2writetext UnknownText_0x7debd
	closetext
	loadmovesprites
	end
; 0x7de65

TrainerSupernerdMarkus: ; 0x7de65
	; bit/flag number
	dw $5c6

	; trainer group && trainer id
	db SUPER_NERD, MARKUS

	; text when seen
	dw SupernerdMarkusSeenText

	; text when trainer beaten
	dw SupernerdMarkusBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SupernerdMarkusScript
; 0x7de71

SupernerdMarkusScript: ; 0x7de71
	talkaftercancel
	loadfont
	2writetext UnknownText_0x7df97
	closetext
	loadmovesprites
	end
; 0x7de79

BoulderScript_0x7de79: ; 0x7de79
	jumpstd $000e
; 0x7de7c

ItemFragment_0x7de7c: ; 0x7de7c
	db ESCAPE_ROPE, 1
; 0x7de7e

ItemFragment_0x7de7e: ; 0x7de7e
	db MAX_REVIVE, 1
; 0x7de80

ItemFragment_0x7de80: ; 0x7de80
	db HYPER_POTION, 1
; 0x7de82

ItemFragment_0x7de82: ; 0x7de82
	db MAX_POTION, 1
; 0x7de84

ItemFragment_0x7de84: ; 0x7de84
	db NUGGET, 1
; 0x7de86

ItemFragment_0x7de86: ; 0x7de86
	db IRON, 1
; 0x7de88

ItemFragment_0x7de88: ; 0x7de88
	db ULTRA_BALL, 1
; 0x7de8a

MapMountMortar1FInsideSignpostItem0: ; 0x7de8a
	dw $0091
	db MAX_REPEL
	
; 0x7de8d

PokemaniacMillerSeenText: ; 0x7de8d
	db $0, "I'm not losing", $4f
	db "this time!", $57
; 0x7dea7

PokemaniacMillerBeatenText: ; 0x7dea7
	db $0, "I lost to some", $4f
	db "kid…?", $57
; 0x7debd

UnknownText_0x7debd: ; 0x7debd
	db $0, "A while back, this", $4f
	db "karate dude wanted", $51
	db "to battle. He was", $4f
	db "ridiculously good.", $51
	db "He just thrashed", $4f
	db "us silly.", $51
	db "He went in deeper", $4f
	db "saying it was for", $51
	db "his training. I", $4f
	db "wonder how he is?", $57
; 0x7df6a

SupernerdMarkusSeenText: ; 0x7df6a
	db $0, "Hey! HUGH!", $57
; 0x7df76

SupernerdMarkusBeatenText: ; 0x7df76
	db $0, "I mistook you for", $4f
	db "someone else…", $57
; 0x7df97

UnknownText_0x7df97: ; 0x7df97
	db $0, "I came to explore", $4f
	db "MT.MORTAR, but I", $51
	db "got separated from", $4f
	db "my partner…", $51
	db "Did you run into a", $4f
	db "trainer who uses a", $51
	db "SEADRA that knows", $4f
	db "WATERFALL?", $57
; 0x7e01d

MountMortar1FInside_MapEventHeader: ; 0x7e01d
	; filler
	db 0, 0

	; warps
	db 6
	warp_def $2f, $b, 5, GROUP_MOUNT_MORTAR_1F_OUTSIDE, MAP_MOUNT_MORTAR_1F_OUTSIDE
	warp_def $2f, $1d, 6, GROUP_MOUNT_MORTAR_1F_OUTSIDE, MAP_MOUNT_MORTAR_1F_OUTSIDE
	warp_def $27, $5, 8, GROUP_MOUNT_MORTAR_1F_OUTSIDE, MAP_MOUNT_MORTAR_1F_OUTSIDE
	warp_def $29, $21, 9, GROUP_MOUNT_MORTAR_1F_OUTSIDE, MAP_MOUNT_MORTAR_1F_OUTSIDE
	warp_def $13, $3, 1, GROUP_MOUNT_MORTAR_B1F, MAP_MOUNT_MORTAR_B1F
	warp_def $9, $9, 2, GROUP_MOUNT_MORTAR_2F_INSIDE, MAP_MOUNT_MORTAR_2F_INSIDE

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 11, 30, $7, MapMountMortar1FInsideSignpostItem0

	; people-events
	db 10
	person_event SPRITE_BOULDER, 47, 25, $19, $0, 255, 255, $0, 0, BoulderScript_0x7de79, $ffff
	person_event SPRITE_POKE_BALL, 42, 39, $1, $0, 255, 255, $1, 0, ItemFragment_0x7de7c, $067d
	person_event SPRITE_POKE_BALL, 14, 20, $1, $0, 255, 255, $1, 0, ItemFragment_0x7de7e, $067e
	person_event SPRITE_POKE_BALL, 31, 14, $1, $0, 255, 255, $1, 0, ItemFragment_0x7de80, $067f
	person_event SPRITE_POKE_BALL, 24, 26, $1, $0, 255, 255, $1, 0, ItemFragment_0x7de82, $07a6
	person_event SPRITE_POKE_BALL, 23, 39, $1, $0, 255, 255, $1, 0, ItemFragment_0x7de84, $07a7
	person_event SPRITE_SUPER_NERD, 47, 37, $8, $0, 255, 255, $92, 3, TrainerPokemaniacMiller, $ffff
	person_event SPRITE_SUPER_NERD, 32, 28, $a, $0, 255, 255, $b2, 3, TrainerSupernerdMarkus, $ffff
	person_event SPRITE_POKE_BALL, 20, 12, $1, $0, 255, 255, $1, 0, ItemFragment_0x7de86, $07c8
	person_event SPRITE_POKE_BALL, 21, 21, $1, $0, 255, 255, $1, 0, ItemFragment_0x7de88, $07c9
; 0x7e0c8

