GetPhysicalSpecial:
	ld hl, .PhysicalSpecialTable
	push de
	ld d,0
	ld e, a
	add hl,de
	pop de
	ld	a, [hl]
	and a
	ret
.PhysicalSpecialTable; 0 is physical, 1 is special, 2 is status
	db 0 ; attack index 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 1
	db 2
	db 0
	db 1
	db 0
	db 2
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 2
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 2
	db 0
	db 0
	db 0
	db 2
	db 0
	db 2
	db 2
	db 2
	db 2
	db 1
	db 2
	db 1
	db 1
	db 1
	db 2
	db 1
	db 1
	db 1
	db 1
	db 1
	db 1
	db 1
	db 1
	db 1
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 1
	db 1
	db 2
	db 2
	db 0
	db 1
	db 2
	db 2
	db 2
	db 1
	db 2
	db 1
	db 1
	db 1
	db 1
	db 2
	db 1
	db 0
	db 0
	db 0
	db 0
	db 2
	db 1
	db 1
	db 2
	db 2
	db 2
	db 0
	db 0
	db 2
	db 1
	db 2
	db 2
	db 2
	db 2
	db 2
	db 2
	db 2
	db 2
	db 2
	db 2
	db 2
	db 2
	db 2
	db 2
	db 2
	db 0
	db 2
	db 2
	db 0
	db 0
	db 0
	db 1
	db 1
	db 0
	db 1
	db 0
	db 0
	db 1
	db 0
	db 0
	db 0
	db 2
	db 2
	db 2
	db 0
	db 2
	db 1
	db 2
	db 0
	db 0
	db 2
	db 0
	db 2
	db 1
	db 0
	db 2
	db 2
	db 1
	db 2
	db 2
	db 0
	db 0
	db 0
	db 0
	db 2
	db 0
	db 0
	db 2
	db 2
	db 1
	db 0
	db 0
	db 2
	db 0
	db 2
	db 0
	db 0
	db 2
	db 2
	db 2
	db 0
	db 1
	db 2
	db 0
	db 2
	db 1
	db 2
	db 0
	db 2
	db 1
	db 2
	db 0
	db 2
	db 0
	db 2
	db 2
	db 1
	db 1
	db 1
	db 2
	db 1
	db 2
	db 2
	db 2
	db 1
	db 2
	db 0
	db 2
	db 0
	db 2
	db 1
	db 2
	db 2
	db 0
	db 0
	db 2
	db 2
	db 0
	db 0
	db 0
	db 2
	db 2
	db 2
	db 2
	db 0
	db 0
	db 0
	db 2
	db 2
	db 0
	db 0
	db 0
	db 0
	db 1
	db 2
	db 2
	db 0
	db 0
	db 2
	db 0
	db 0
	db 0
	db 2
	db 2
	db 2
	db 1
	db 0
	db 1
	db 2
	db 2
	db 0
	db 1
	db 2
	db 0
	db 1
	db 1
	db 1
	db 0
	db 1
	db 0
