Start:
	JSR InitSound
	LDA #0
	STA zJoyPress
	STA zJoyPress + 1
	LDA zPPUCtrlMirror
	ORA #PPUCtrl_NMIEnabled
	STA zPPUCtrlMirror
	STA rCTRL
	LDY #MUSIC_FAIR_BOSS
	JSR PlayMusic
@LO:
	LDA zJoyPress
	STA zJoyBuffer
	BNE @Parse
	LDA zJoyPress + 1
	STA zJoyBuffer + 1
	BEQ @NoSFX
@Parse:
	LDX #0
@Loop:
	ASL zJoyBuffer + 1
	ROL zJoyBuffer
	INX
	LDA zJoyBuffer
	ORA zJoyBuffer + 1
	BNE @Loop
	DEX
	LDY JoyPadSFX, X
	JSR PlaySFX
@NoSFX:
	LDA #1
	STA zNMIDelay
@Hang:
	LDA zNMIDelay ; decrements to 0 each NMI
	BNE @Hang
	BEQ @LO

JoyPadSFX:
	db SFX_EGG_DROPPED		; B
	db SFX_SILK_SAUCER		; Y
	db SFX_WOOLIE_RASPBERRY		; Select
	db SFX_SPLASH			; Start
	db SFX_LEVEL_SWITCH_MANHOLE_COVER	; Up
	db SFX_BRIDGE_WHEEL		; Down
	db SFX_DYNAMITE_PRAIRIE_DOG_GUNSHOT	; Left
	db SFX_COLLECT_CONTINUE		; Right
	db SFX_YARN_CRATE_TITLE_MENU	; A
	db SFX_YARN_BUBBLE		; X
	db SFX_1_UP_SHIRT		; L
	db SFX_2_UP_SHIRT		; R
	db SFX_YARN_4
	db SFX_YARN_4
	db SFX_YARN_4
	db SFX_YARN_4
