INTRO_INDEX = $00
INTRO_CMD = $20 ; $20-$3f
INTRO_DELAY = $3f ; $40-$7f
INTRO_SCROLL = $80 ; $80-$bf
INTRO_PATCH_STEP = $c0 ; $c0-$df, accolade sliced animation
INTRO_PATCH_SOUND = $c0
INTRO_PATCH_MASK = $e0 ; $e0-$ff, mask metasprite position

; zPPUStringIndex
.enum INTRO_INDEX
INTRO_BUFFER_EMPTY:	.dsb 1
INTRO_LOGOS:		.dsb 1
INTRO_ACCOLADE_PATCH:	.dsb 1
INTRO_TITLE_INIT:	.dsb 1
INTRO_BUBSY:		.dsb 1
INTRO_TITLE:		.dsb 13
INTRO_COPYRIGHT:	.dsb 2
INTRO_LOGO_PAL:		.dsb 5
INTRO_TITLE_PAL:	.dsb 4
.ende

.enum INTRO_CMD
INTRO_INPUT_UNLOCK:	.dsb 1 ; commented out of script
INTRO_HIDE_OBJS:	.dsb 1
INTRO_MASK_OFF:		.dsb 1
INTRO_MASK_ON:		.dsb 1
INTRO_IRQ:		.dsb 1 ; stubs for now
INTRO_IRQ_MENU:		.dsb 1 ; stubs for now
INTRO_MUSIC:		.dsb 1
INTRO_JUMP_1:		.dsb 1
INTRO_JUMP_2:		.dsb 1
INTRO_THUD:		.dsb 1
INTRO_POP_1:		.dsb 1
INTRO_POP_2:		.dsb 1
INTRO_POP_3:		.dsb 1
	.dsb 4
INTRO_BUBSY_CHR:	.dsb 11
	.dsb 5
.ende
