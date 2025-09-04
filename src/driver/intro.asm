; In order to cleanly load in the tile map for the "Ported by Tempo Quill"
; message and the Accolade Logo, we need to clear the two nametables we select.
InitLogos:
	; first, let's set the game mode to "scene"
	LDA #GAMEPLAY_SCENES
	STA zGameplayMode
	LDA #MMC5_HFiller ; we need NT0 and NT2, NT1 and NT3 are filler
	STA MMC5_NametableMapping
	LDA #>NT0
	LDX #0 ; mask was zero'd out beforehand, no picture
	STA rWORD
	STX rWORD
	TXA
@Loop1:
	STA rDATA
	STA rDATA
	STA rDATA
	STA rDATA
	DEX
	BNE @Loop1
	LDA #>NT2
	STA rWORD
	STX rWORD
	TXA
@Loop2:
	STA rDATA
	STA rDATA
	STA rDATA
	STA rDATA
	DEX
	BNE @Loop2
	LDA #$3f
	STA rWORD
	STX rWORD
	LDX #$20
	LDA #$0f
@Loop3:
	STA rDATA
	DEX
	BNE @Loop3
	LDA #1
	STX zIntroScriptOffset
	STX zTitleScroll
	STX zTitleScroll + 1
	STA zInputLock
	LDA #>IntroScript
	STA zIntroScriptPointer + 1
	LDA #<IntroScript
	STA zIntroScriptPointer

@RunLoop:
	JSR ParseIntroScriptByte
	INC zIntroScriptOffset
	JMP @RunLoop

ParseIntroScriptByte:
; $00-$1f - send to PPU
; $20-$3f - loop (commands)
; $40-$7f - delay frames (1-64)
; $80-$bf - loop (scroll position)
; $c0-$df - loop (accolade patch)
; $e0-$ff - loop (patch mask position)
	LDY zIntroScriptOffset
	LDA (zIntroScriptPointer), Y
	AND #$e0
	LSR A
	LSR A
	LSR A
	LSR A
	TAX
	LDA ScriptByteTypes, X
	STA zIntroScratchPointer
	LDA ScriptByteTypes + 1, X
	STA zIntroScratchPointer + 1
	LDA (zIntroScriptPointer), Y
	JMP (zIntroScratchPointer)

ScriptByteTypes:
	dw Intro_SendToPPU
	dw Intro_Commands
	dw Intro_Delay
	dw Intro_Delay
	dw Intro_Scroll
	dw Intro_Scroll
	dw Intro_AccoladeSliceIndex
	dw Intro_AccoladeSliceMaskOBJ

Intro_SendToPPU:
	BEQ @Skip
	ASL A
	TAX
	LDA IntroPointers, X
	STA zPPUStringPointer
	LDA IntroPointers + 1, X
	STA zPPUStringPointer + 1
	TYA
	CLC
	ADC zIntroScriptPointer
	STA zIntroScriptPointer
	LDA #0
	STA zIntroScriptOffset
	ADC zIntroScriptPointer + 1
	STA zIntroScriptPointer + 1
	JMP DelayFrame
@Skip:
	JSR DelayFrame
	JMP @Skip

Intro_Commands:
	AND #$1f
	ASL A
	TAX
	LDA IntroCommandPointers, X
	STA zIntroScratchPointer
	LDA IntroCommandPointers + 1, X
	STA zIntroScratchPointer + 1
	JMP (zIntroScratchPointer)

Intro_Delay:
	AND #$3f
	TAX
	INX
	JMP DelayXFrames

Intro_Scroll:
; sets the scroll value
; default: $180 (nametable 2, pixel 144)
	; anchor scroll position
	LDX #0
	STX zTitleScroll
	STX zTitleScroll + 1
	; mask away the bits that got us here
	AND #$3f
	; x8 - max $1f8 - $1e0 onward is redundant
	ASL A
	ROL zTitleScroll + 1
	ASL A
	ROL zTitleScroll + 1
	ASL A
	ROL zTitleScroll + 1
	; account for the Bubsy canvas by subtracting 96 pixels
	SEC
	SBC #$60
	STA zTitleScroll
	LDA zTitleScroll + 1
	SBC #0
	STA zTitleScroll + 1
	; we hit nagative for a tile offset value under 12, otherwise we branch
	BCS @Positive
	; if $ffa0-$fff8, and with $1ff
	AND #$01
	STA zTitleScroll + 1
	; because we hit negative, we subtract $10 instead of adding $10 / $00
	LDA zTitleScroll
	SEC
	SBC #$10
	STA zTitleScroll
	RTS

@Positive:
	JSR @Add
	BCS @Carry
	CMP #$f0
	BCC @NoCarry
@Carry:
	INC zTitleScroll + 1
	JSR @Add
@NoCarry:
	STA zTitleScroll
	RTS

@Add:
	LDA zTitleScroll + 1
	ASL A ; 256 - 240 = 16
	ASL A
	ASL A
	ASL A
	ADC zTitleScroll
	RTS

Intro_AccoladeSliceIndex:
	AND #$1f
	BNE @NoSound
	LDY #SFX_FIRECRACKER_SIZZLE
	JSR PlaySFX
@NoSound:
	LDX #$29 ; hi
	STX iStringBuffer
	LDX #$63 ; lo
	STX iStringBuffer + 1
	LDX #$01 ; size
	STX iStringBuffer + 2
	DEX ; terminator
	STX iStringBuffer + 4
	TAX
	CLC
	ADC iStringBuffer + 1
	STX iStringBuffer + 1
	LDA AccoladeLogoPatch, X ; data
	STX iStringBuffer + 3
	RTS

Intro_AccoladeSliceMaskOBJ:
	; first, set the X coordinate
	AND #$1f
	ASL A
	ASL A
	ASL A
	STA iVirtualOAM + 7
	SEC
	SBC #$08
	STA iVirtualOAM + 3
	; next, set the Y coorinate, sprite starts the scanline after prompted
	; this essentially means your target is one less than visually desired
	LDX #$57
	STX iVirtualOAM + 4
	BCS @Positive
	LDX #$f8
@Positive:
	STX iVirtualOAM
	; now set the tiles for the mask, assuming the logos banks are already
	; loaded in by the MMC5
	LDX #$6e
	STX iVirtualOAM + 1
	DEX
	STX iVirtualOAM + 5
	RTS

IntroCommandPointers:
	dw Intro_UnlockInput
	dw Intro_HideOBJs
	dw Intro_PPUMaskOff
	dw Intro_PPUMaskOn
	dw Intro_IRQ
	dw Intro_IRQMenu
	dw Intro_Music
	dw Intro_LowJump
	dw Intro_HighJump
	dw Intro_Thud
	dw Intro_Pop1
	dw Intro_Pop2
	dw Intro_Pop3
	dw IntroNone
	dw IntroNone
	dw IntroNone
	dw Intro_CHRIndex
	dw Intro_CHRIndex
	dw Intro_CHRIndex
	dw Intro_CHRIndex
	dw Intro_CHRIndex
	dw Intro_CHRIndex
	dw Intro_CHRIndex
	dw Intro_CHRIndex
	dw Intro_CHRIndex
	dw Intro_CHRIndex
	dw Intro_CHRIndex
	dw IntroNone
	dw IntroNone
	dw IntroNone
	dw IntroNone
	dw IntroNone

IntroNone:
	RTS

Intro_UnlockInput:
	LDA #0
	STA zInputLock
	RTS

Intro_HideOBJs:
	LDX #$00
@Loop:
	LDA #$00
	DEX
	STA iVirtualOAM, X
	DEX
	STA iVirtualOAM, X
	DEX
	STA iVirtualOAM, X
	LDA #$f8
	DEX
	STA iVirtualOAM, X
	BNE @Loop
	RTS

Intro_PPUMaskOff:
	LDA #$00
	STA zPPUMaskMirror
	RTS

Intro_PPUMaskOn:
	LDA #$1e ; show BG and OBJ, mask on left column enabled
	STA zPPUMaskMirror
	RTS

Intro_IRQ:
	RTS

Intro_IRQMenu:
	RTS

Intro_Music:
	LDY #MUSIC_NONE
	JSR PlayMusic
	LDY #MUSIC_TITLE_SCREEN
	JMP PlayMusic

Intro_LowJump:
	LDY #SFX_LOW_JUMP
	BNE Intro_PlaySound

Intro_HighJump:
	LDY #SFX_HIGH_JUMP
	BNE Intro_PlaySound

Intro_Thud:
	LDY #SFX_HIT_ENEMY_OR_WALL
	BNE Intro_PlaySound

Intro_Pop1:
	LDY #SFX_YARN_1
	BNE Intro_PlaySound

Intro_Pop2:
	LDY #SFX_YARN_2
	BNE Intro_PlaySound

Intro_Pop3:
	LDY #SFX_YARN_3

Intro_PlaySound:
	JMP PlaySFX

Intro_CHRIndex:
	AND #$0f
	CLC
	ADC #CHR_TitleScreenBubsy
	STA zCHRWindow1
	STA zCHRWindow2
	STA zCHRWindow3
	STA zIntroBubsyBank
	RTS

.include "src/data/intro.asm"
