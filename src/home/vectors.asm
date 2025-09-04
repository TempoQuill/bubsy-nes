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
	LDA #2 ; 2K mode (may use $5130)
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
	STA MMC5_CHRBankSwitchUpper

	; MMC5 Pulse channels
	LDA #$0f
	STA MMC5_MIXER

	; select the logo banks
	LDX #CHR_Accolade + 1
	STX MMC5_CHRBankSwitch12
	DEX
	STX MMC5_CHRBankSwitch10
	STX zCHRWindow3
	INX
	STX MMC5_CHRBankSwitch8
	DEX
	STX MMC5_CHRBankSwitch6
	STX zCHRWindow2
	INX
	STX MMC5_CHRBankSwitch4
	DEX
	STX MMC5_CHRBankSwitch2
	STX zCHRWindow1
	LDX #0
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
	STA $5c00, X ; VSplit canvas
	STA $5d00, X ; VSplit canvas
	STA $5e00, X ; VSplit canvas
	STA $5f00, X ; VSplit canvas
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
; Nametable 0, Horizontal writing, OBJ 1, BG base 0, 8x8 OBJs, no NMI
	LDA #PPUCtrl_OBJ1 | PPUCtrl_BG0 | PPUCtrl_NMIDisabled
	STA rCTRL
	STA rMASK
	STA zPPUCtrlMirror
	STA zPPUMaskMirror
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
	JMP Start

NMI_Scenes:
	JSR UpdatePPUFromBufferRLE
	LDA #>iVirtualOAM
	STA rOAMDMA
	LDY zPPUCtrlMirror
	LDA #0
	LDX zTitleScroll
	STY rCTRL
	STA rSCROLL
	STX rSCROLL
	LDA zInputLock
	BNE NMI_DelayScenes
	JSR UpdateJoypad
NMI_DelayScenes:
	LDA zNMIDelay
	BEQ NMI_InterruptDoneScenes
	DEC zNMIDelay
NMI_InterruptDoneScenes:
	PLA
	TAX
	PLA
	TAY
	PLA
	PLP
	RTI

NMI_NoScroll:
	JSR UpdatePPUFromBufferRLE
	LDA #>iVirtualOAM
	STA rOAMDMA
	LDY zPPUCtrlMirror
	LDA #0
	LDX #0
	STY rCTRL
	STA rSCROLL
	STX rSCROLL
	LDA zInputLock
	BNE NMI_DelayNoScroll
	JSR UpdateJoypad
NMI_DelayNoScroll:
	LDA zNMIDelay
	BEQ NMI_InterruptDoneNoScroll
	DEC zNMIDelay
NMI_InterruptDoneNoScroll:
	PLA
	TAX
	PLA
	TAY
	PLA
	PLP
	RTI

NMI:
	PHP
	PHA
	TYA
	PHA
	TXA
	PHA
	JSR NMI_CHR
	LDA zPPUMaskMirror
	STA rMASK
	LDA zNMIDelay
	BEQ NMI_InterruptDone
	LDA zGameplayMode
	BEQ NMI_Scenes
	CMP #GAMEPLAY_VICTORY
	BCS NMI_NoScroll
	LDA #>iVirtualOAM
	STA rOAMDMA
	LDY zPPUCtrlMirror
;	LDA #0
;	LDX #0
	STY rCTRL
;	STA rSCROLL
;	STX rSCROLL
	LDA zInputLock
	BNE NMI_Delay
	JSR UpdateJoypad
NMI_Delay:
	LDA zNMIDelay
	BEQ NMI_InterruptDone
	DEC zNMIDelay
NMI_InterruptDone:
	PLA
	TAX
	PLA
	TAY
	PLA
	PLP
	RTI

NMI_CHR:
	LDA zCHRWindow1
	STA MMC5_CHRBankSwitch2
	EOR #1
	STA MMC5_CHRBankSwitch4
	LDA zCHRWindow2
	STA MMC5_CHRBankSwitch6
	EOR #1
	STA MMC5_CHRBankSwitch8
	LDA zCHRWindow3
	STA MMC5_CHRBankSwitch10
	EOR #1
	STA MMC5_CHRBankSwitch12
	RTS

IRQ:
	RTI

.pad $fffa
NESVectorTable:
	.dw	NMI
	.dw	RESET
	.dw	IRQ
