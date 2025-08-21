IntroPointers:
	dw iPPUBuffer
	dw PortedByTempoQuill ; AccoladePresents
	dw iStringBuffer ; used to animate the Accolade logo
	dw TitleScreenInit ; fills nametables with tile $ff
	dw TitleScreenBubsyData
	dw TitleScreenLogo1
	dw TitleScreenLogo2
	dw TitleScreenLogo3
	dw TitleScreenLogo4
	dw TitleScreenLogo5
	dw TitleScreenLogo6
	dw TitleScreenLogo7
	dw TitleScreenLogo8
	dw TitleScreenLogo9
	dw TitleScreenLogo10
	dw TitleScreenLogo11
	dw TitleScreenLogo12
	dw TitleScreenLogo13
	dw TitleScreenCopyright1
	dw TitleScreenCopyright2
	dw LogosPalette0
	dw LogosPalette1
	dw LogosPalette2
	dw LogosPalette3
	dw LogosPalette4
	dw TitlePalette0
	dw TitlePalette1
	dw TitlePalette2
	dw TitlePalette3

IntroIndexCHR:
	db $80
	db CHR_Accolade
	db CHR_Accolade
	db CHR_TitleScreenBG1
	db CHR_TitleScreenBubsy
	db CHR_TitleScreenBG1
	db CHR_TitleScreenBG1
	db CHR_TitleScreenBG1
	db CHR_TitleScreenBG1
	db CHR_TitleScreenBG1
	db CHR_TitleScreenBG1
	db CHR_TitleScreenBG1
	db CHR_TitleScreenBG1
	db CHR_TitleScreenBG1
	db CHR_TitleScreenBG1
	db CHR_TitleScreenBG1
	db CHR_TitleScreenBG1
	db CHR_TitleScreenBG1
	db CHR_TitleScreenBG1
	db CHR_TitleScreenBG1
	db CHR_Accolade
	db CHR_Accolade
	db CHR_Accolade
	db CHR_Accolade
	db CHR_Accolade
	db CHR_TitleScreenBubsy
	db CHR_TitleScreenBubsy
	db CHR_TitleScreenBubsy
	db CHR_TitleScreenBubsy

; below is mostly data that is dedicated to the intro
; data sequence for really any scene is as follows
; byte 0: $20-$2f, $3f - nametable/palette word MSB
;	$00 - end of data sequence
; byte 1: nametable/palette word LSB
; byte 2: data size ($00-$7f) / run length ($80-$ff)
; byte 3: nametable/palette data

LogosPalette0:
TitlePalette0:
	db $3f,$00,$a0,	$0f
	db $00

LogosPalette1:
	db $3f,$01,$0b
	db	$0f,$0f,$02,	$0f
	db	$0f,$0f,$01,	$0f
	db	$0f,$0f,$06
	db $3f,$11,$03
	db	$0f,$0f,$06
	db $00

LogosPalette2:
	db $3f,$01,$0b
	db	$0f,$0f,$12,	$0f
	db	$0f,$01,$11,	$0f
	db	$0f,$06,$16
	db $3f,$11,$03
	db	$0f,$06,$16
	db $00

LogosPalette3:
	db $3f,$01,$0b
	db	$0f,$02,$22,	$0f
	db	$01,$11,$21,	$0f
	db	$06,$16,$26
	db $3f,$11,$03
	db	$06,$16,$26
	db $00

LogosPalette4:
	db $3f,$01,$0b
	db	$02,$12,$32,	$0f
	db	$11,$21,$31,	$0f
	db	$16,$26,$36
	db $3f,$11,$03
	db	$16,$26,$36
	db $00

TitlePalette1:
	db $3f,$00,$10
	db $01,$07,$0f,$0f
	db $01,$0f,$00,$07
	db $01,$0f,$00,$07
	db $01,$0f,$07,$0f
	db $00

TitlePalette2:
	db $3f,$00,$10
	db $11,$17,$0f,$06
	db $11,$0f,$10,$17
	db $11,$06,$10,$17
	db $11,$0f,$17,$06
	db $00

TitlePalette3:
	db $3f,$00,$10
	db $21,$27,$0f,$16
	db $21,$07,$30,$27
	db $21,$16,$30,$27
	db $21,$06,$27,$16
	db $00

PortedByTempoQuill:
; contiguous between logos to make updates a little bit easier
	db $21, $a5, +b - +a
+a
	db $b0, $b7, $b0, $b3, $b2, $b1, $00, $b0, $b9, $00, $b3
	db $b2, $b5, $b6, $b0, $b7, $00, $b7, $ba, $b3, $b4, $b4
+b
	db $21, $c5, +d - +c
+c
	db $c1, $c0, $c2, $be, $bc, $bb, $00, $bb, $be, $00, $be
	db $bc, $be, $bf, $c1, $c0, $00, $b8, $c0, $bd, $bc, $bc
+d

AccoladePresents:
	db $29, $43, +b - +a
+a
	db $06, $0a, $0e, $12, $16, $1a, $1d, $21, $25, $29, $2e, $1a, $35, $39
	db $3c, $00, $00, $45, $49, $4d, $51, $55, $58, $5a, $5e, $61, $65, $69
+b
	db $29, $63, +d - +c
+c
	db $07,$0b,$0f,$13,$17,$00,$1e,$22,$26,$2a,$2f,$00,$36,$3a,$3d
	db $00,$00,$00,$4a,$4e,$52,$56,$09,$5b,$5f,$63,$66,$6a,$00,$00
	db $02,$04,$08,$0c,$10,$14,$18,$00,$1e,$23,$26,$2b,$30,$00
	db $c3,$3a,$3d,$00,$41,$46,$4b,$4f,$53,$56,$09,$5c,$5f,$62
+d
	db $29, $a1, +e - +f
+e
	db $03,$05,$09,$0d,$11,$15,$19,$1b,$1f,$24,$27,$2c,$31,$33,$37
	db $3b,$3e,$3f,$42,$47,$00,$50,$54,$57,$59,$5d,$60,$64,$67,$6b
+f
	db $2a, $08, +g - +h
+g
	db $1c,$20,$1c,$28,$2d,$32,$34,$38,$2d,$32,$40,$44,$48,$4c,$34,$38
+h
	db $2b, $d0, +i - +j
+i
	db $40, $50, $50, $50, $50, $50, $50, $50, $05, $05, $05
	db $05, $05, $05, $05, $05, $00, $00, $0a, $0a, $0a, $0a
+j
	db $00

AccoladeLogoPatch:
; used during the logo animation for Accolade
	db $90, $91, $92, $93, $94, $00, $95, $96, $97, $98, $99, $00, $9a, $9b
	db $9c, $00, $00, $00, $9d, $9e, $9f, $a0, $09, $a1, $a2, $a3, $00, $00
AccoladeLogoPatchEnd:

TitleScreenInit: ; fills usable nametables with $ff, attributes with $00
	db $20, $00, $c0, $ff
	db $20, $40, $c0, $ff
	db $20, $80, $c0, $ff
	db $20, $c0, $c0, $ff
	db $21, $00, $c0, $ff
	db $21, $40, $c0, $ff
	db $21, $80, $c0, $ff
	db $21, $c0, $c0, $ff
	db $22, $00, $c0, $ff
	db $22, $40, $c0, $ff
	db $22, $80, $c0, $ff
	db $22, $c0, $c0, $ff
	db $23, $00, $c0, $ff
	db $23, $40, $c0, $ff
	db $23, $80, $c0, $ff
	db $28, $00, $c0, $ff
	db $28, $40, $c0, $ff
	db $28, $80, $c0, $ff
	db $28, $c0, $c0, $ff
	db $29, $00, $c0, $ff
	db $29, $40, $c0, $ff
	db $29, $80, $c0, $ff
	db $29, $c0, $c0, $ff
	db $2a, $00, $c0, $ff
	db $2a, $40, $c0, $ff
	db $2a, $80, $c0, $ff
	db $2a, $c0, $c0, $ff
	db $2b, $00, $c0, $ff
	db $2b, $40, $c0, $ff
	db $2b, $80, $c0, $ff
	db $23, $c0, $c0, $00
	db $2b, $c0, $c0, $00
	db $00

TitleScreenBubsyData:
; This data essentially maps out a Bubsy canvas to swap in/out CHR banks for
; smooth animation.
	db $22,$4d,$08
	db	$01,$02,$03,$00,$04,$00,$05,$06

	db $22,$6e,$07
	db	$07,$08,$09,$0a,$0b,$0c,$0d

	db $22,$8e,$07
	db	$0e,$0f,$10,$11,$12,$13,$14

	db $22,$ae,$07
	db	$15,$16,$17,$18,$19,$1a,$1b

	db $22,$cb,$0a
	db	$1c,$1d,$1e,$1f,$20,$21,$22,$23,$24,$25

	db $22,$eb,$0b
	db	$26,$27,$28,$29,$2a,$2b,$2c,$2d,$2e,$2f,$30

	db $23,$0b,$0b
	db	$31,$32,$33,$34,$35,$36,$37,$38,$39,$3a,$3b

	db $23,$29,$0d
	db	$3c,$3d,$3e,$3f,$40,$41,$42,$43,$44,$45,$46,$47,$48

	db $23,$48,$0e
	db	$49,$4a,$4b,$4c,$4d,$4e,$4f,$50,$51,$52,$53,$54,$55,$56

	db $23,$68,$10
	db	$57,$58,$59,$5a,$5b,$5c,$5d,$5e,$5f,$60,$61,$62,$63,$64,$65,$66

	db $23,$89,$10
	db	$67,$68,$69,$6a,$6b,$6c,$6d,$6e,$6f,$70,$71,$72,$73,$74,$75,$76

	db $23,$a9,$10
	db	$77,$78,$79,$7a,$7b,$7c,$7d,$7e,$7f,$80,$81,$82,$83,$84,$85,$86

	db $28,$0e,$04
	db	$87,$88,$89,$8a

	db $28,$2a,$0c
	db	$8b,$8c,$00,$00,$8d,$8e,$8f,$90,$00,$91,$92,$93

	db $28,$49,$0e
	db	$94,$95,$96,$97,$98,$99,$9a,$9b,$9c,$9d,$9e,$9f,$a0,$a1

	db $28,$69,$0e
	db	$a2,$a3,$a4,$a5,$a6,$a7,$a8,$a9,$aa,$ab,$ac,$ad,$ae,$af

	db $28,$89,$08
	db	$b0,$b1,$b2,$b3,$b4,$b5,$b6,$b7

	db $23,$e2,$85,	$50
	db $23,$ea,$85,	$55
	db $23,$f2,$0d,	$55,$95,$65,$55,$55,$00,$00,$00,$05,$09,$06,$05,$05
	db $2b,$c2,$85,	$55
	db $2b,$ca,$85, $05
	db $00

; below are horizontal strips of the title logo, as the logo enters from the
; top one tile at a time
TitleScreenLogo1:
	db $2a,$2c,$0d
	db	$00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c
	db $00

TitleScreenLogo2:
	db $2a,$47,$15
	db	$0d,$0e,$0f,$10,$11,$12,$13,$14,$15,$16,$17
	db	$18,$19,$1a,$17,$1b,$1c,$1d,$1e,$1f,$20
	db $00

TitleScreenLogo3:
	db $2a,$67,$16
	db	$21,$22,$19,$23,$24,$25,$26,$27,$28,$29,$2a
	db	$2b,$2c,$2d,$2e,$2f,$15,$30,$31,$32,$33,$34
	db $00

TitleScreenLogo4:
	db $2a,$87,$15
	db	$35,$36,$37,$38,$39,$3a,$3b,$15,$3c,$19,$19
	db	$3d,$3e,$3f,$40,$41,$19,$42,$43,$44,$45
	db $00

TitleScreenLogo5:
	db $2a,$a7,$14
	db	$46,$47,$19,$48,$49,$13,$4a,$19,$4b,$19
	db	$4c,$19,$4d,$4e,$19,$4f,$50,$19,$44,$51
	db $00

TitleScreenLogo6:
	db $2a,$c7,$13
	db	$52,$19,$53,$54,$55,$56,$15,$57,$58,$59
	db	$5a,$5b,$5c,$5d,$19,$5e,$5f,$60,$51
	db $00

TitleScreenLogo7:
	db $2a,$e6,$13
	db	$61,$62,$19,$63,$43,$64,$65,$66,$67,$32
	db	$68,$69,$6a,$6b,$15,$19,$6c,$17,$6d
	db $00

TitleScreenLogo8:
	db $2b,$06,$12
	db	$6e,$6f,$19,$70,$71,$72,$73,$74,$75
	db	$76,$77,$78,$79,$7a,$7b,$7c,$7d,$7e
	db $00

TitleScreenLogo9:
	db $2b,$26,$12
	db	$7f,$80,$81,$82,$83,$84,$85,$86,$87
	db	$88,$89,$8a,$8b,$8c,$8d,$8e,$8f,$90
	db $00

TitleScreenLogo10:
	db $2b,$46,$15
	db	$91,$92,$93,$94,$95,$96,$97,$98,$99,$9a,$9b
	db	$9c,$9d,$9e,$9f,$a0,$a1,$a2,$a3,$a4,$a5
	db $00

TitleScreenLogo11:
	db $2b,$66,$15
	db	$a6,$a7,$a8,$a9,$aa,$ab,$ac,$ad,$ae,$af,$b0
	db	$b1,$b2,$b3,$b4,$b5,$b6,$b7,$b8,$b9,$ba
	db $00

TitleScreenLogo12:
	db $2b,$86,$14
	db	$bb,$bc,$bd,$be,$bf,$c0,$c1,$c2,$c3,$c4
	db	$c5,$c6,$c7,$c8,$c9,$ca,$cb,$cc,$cd,$ce
	db $00

TitleScreenLogo13:
	db $2b,$a6,$14
	db	$cf,$d0,$d1,$d2,$d3,$d4,$d5,$d6,$d7,$d8
	db	$d9,$da,$db,$dc,$dd,$de,$df,$e0,$e1,$e2
	db $00

TitleScreenCopyright1:
	db $21,$e4,$19 ; (c) 1992, 1993 ACCOLADE INC.
	db	$cd,$00,$b8,$bc,$bc,$b9,$be,$b8,$bc,$bc,$ba,$00,$c0
	db	$c1,$c1,$c8,$c5,$c0,$c2,$c3,$00,$c4,$c7,$c1,$bf
	db $23,$d9,$87, $50
	db $00

TitleScreenCopyright2:
	db $22,$28,$19 ; 2026 TEMPO QUILL
	db	$b9,$bd,$b9,$bb,$00,$cb,$c3,$c6,$c9,$c8,$00,$ca,$cc,$c4,$c5,$c5
	db $23,$e2,$85, $55
	db $00

IntroScript:
	db INTRO_MASK_OFF
	db INTRO_TITLE_INIT
;	db INTRO_LOGOS
;	db INTRO_LOGO_PAL

;	db INTRO_SCROLL + 12
;	db INTRO_MASK_ON

	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4

	db INTRO_DELAY + 64
	db INTRO_DELAY + 64

	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4

;	db INTRO_SCROLL + 12 + 30

	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4

	db INTRO_DELAY + 16

	db INTRO_DELAY + 2, INTRO_PATCH_STEP +  0, INTRO_ACCOLADE_PATCH
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2
	db INTRO_DELAY + 2

	db INTRO_DELAY + 64

	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4

;	db INTRO_MASK_OFF
;	db INTRO_TITLE_INIT
;	db INTRO_BUBSY
;	db INTRO_TITLE_PAL

;	db INTRO_SCROLL + 47
;	db INTRO_BUBSY_CHR
;	db INTRO_MASK_ON

;	db INTRO_INPUT
	db INTRO_MUSIC

	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 6

	db INTRO_JUMP_1

	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4

	db INTRO_JUMP_2

	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 6

	db INTRO_THUD

	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 4
	db INTRO_DELAY + 7

	db INTRO_THUD

	db INTRO_DELAY + 6

	db INTRO_POP_1

	db INTRO_DELAY + 6

	db INTRO_POP_2

	db INTRO_DELAY + 6

	db INTRO_POP_2
