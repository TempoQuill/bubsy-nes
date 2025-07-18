; Public RESET
;
; This code is called when the NES is reset and handles some boilerplate
; initialization before starting the game loop.
;
; The NMI handles frame rendering.
;
RESET:
	LDA #3 ; all 8K switchable
	STA MMC5_PRGMode
	LDA #1 ; 4K mode (try not to use $5130)
	STA MMC5_CHRMode

	; PRG RAM handshake
	; Enable writable MMC5 exclusive RAM
	LDA #2
	STA MMC5_PRGRAMProtect1
	STA MMC5_ExtendedRAMMode
	LDA #1
	STA MMC5_PRGRAMProtect2

	; Set nametable mapping
	LDA #MMC5_HMirror
	STA MMC5_NametableMapping

	; setup RAM
	LDA #RAM_Scratch
	STA zRAMBank
	; upper CHR bits go unused
	STA MMC5_CHRBankSwitchUpper

	; MMC5 Pulse channels
	LDA #$0f
	STA MMC5_MIXER

	; select the first three CHR banks
	; bank 0 is a mirror of 3
	LDX #CHR_TitleScreenBG1
	STX MMC5_CHRBankSwitch12
	STX zCHRWindow3
	DEX ; CHR_TitleScreenOBJ2
	STX MMC5_CHRBankSwitch8
	STX zCHRWindow2
	DEX ; CHR_TitleScreenOBJ1
	STX MMC5_CHRBankSwitch4
	STX zCHRWindow1
	DEX
	TXA
	; init RAM
@Loop:
	; clear RAM
	DEX
	STA $0, X
	STA $100, X
	STA $200, X
	STA $300, X
	STA $400, X
	STA $500, X
	STA $600, X
	STA $700, X
	STA $5c00, X ; mmc5 RAM
	STA $5d00, X ; mmc5 RAM
	STA $5e00, X ; mmc5 RAM
	STA $5f00, X ; mmc5 RAM
	BNE @Loop

	; select the starter PRG banks
	LDA #PRG_Start0
	STA MMC5_PRGBankSwitch2
	STA zPRGWindow1
	LDA #PRG_Start1
	STA MMC5_PRGBankSwitch3
	STA zPRGWindow2
	; PRG_Start2 needs to be empty due to DPCM
	LDA #PRG_Start2
	STA MMC5_PRGBankSwitch4
	STA zDPCMAnalogs + 1
	; Home ROM
	LDA #PRG_Home
	STA MMC5_PRGBankSwitch5

	SEI
	CLD
; Nametable base 0, Horizontal writing, OBJ base 0, BG base 0, 8x8 OBJs, no NMI
	LDA #0
	STA rCTRL
	STA zPPUCtrlMirror
	LDX #<iStackTop ; Reset stack pointer
	TXS

@VBlankLoop:
	; Wait for first VBlank
	LDA rSTATE
	AND #PPUStatus_VBlankHit
	BEQ @VBlankLoop

@VBlank2Loop:
	; Wait for second VBlank
	LDA rSTATE
	BPL @VBlank2Loop

	LDA #MMC5_SFiller
	STA MMC5_NametableMapping
	LDA #0
	STA MMC5_FillModeTile
	STA MMC5_FillModeColor
	TAX
@InitLoop:
	DEX
	STA $0, X
	STA $100, X
	STA $200, X
	STA $300, X
	STA $400, X
	STA $500, X
	STA $600, X
	STA $700, X
	BNE @InitLoop
	JMP Start

NMI:
	PHP
	PHA
	TYA
	PHA
	TXA
	PHA
	JSR UpdateJoypad
	LDA zNMIDelay
	BEQ @InterruptDone
	DEC zNMIDelay
@InterruptDone:
	PLA
	TAX
	PLA
	TAY
	PLA
	PLP
	RTI

IRQ:
	RTI

.pad $fffa
NESVectorTable:
	.dw	NMI
	.dw	RESET
	.dw	IRQ
