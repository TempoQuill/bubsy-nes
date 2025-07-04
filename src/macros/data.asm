MACRO audio_ptr mode, bank, address
; byte 0, configuration (reading mode, bank window)
; byte 1, ROM bank
; byte 2-3, CPU ROM address
	db (mode << 7) | (address & $2000) >> 13
	db bank
	dw address
ENDM

MACRO channels_tempo _1, _2, _3, _4, _5, tempo
	db _1 | _2 | _3 | _4 | _5
	db tempo
ENDM
