;
; Updates joypad press/held values
;
UpdateJoypadSimple:
; DPCM is NOT playing here
	JSR ReadJoypadLO
	JSR ReadJoypadHI
	JMP JoypadValueUpdate

UpdateJoypad:
	LDA rMIX
	CMP #$f0
	BCC UpdateJoypadSimple

UpdateJoypad_WithDPCM:
	JSR ReadJoypadLO
@Loop1:
	LDA zJoyPress
	STA zJoyBuffer
	JSR ReadJoypadLO
	LDA zJoyPress
	CMP zJoyBuffer
	BNE @Loop1
	JSR ReadJoypadHI
@Loop2:
	LDA zJoyPress + 1
	STA zJoyBuffer + 1
	JSR ReadJoypadHI
	LDA zJoyPress + 1
	CMP zJoyBuffer + 1
	BNE @Loop2
JoypadValueUpdate:
	LDA zJoyPress + 1
	ASL A
	ASL A
	ASL A
	ASL A
	STA zJoyPress + 1
	LDX #1
@Loop2:
	LDA zJoyPress, X ; Update the press/held values
	TAY
	EOR zJoyHeld, X
	AND zJoyPress, X
	STA zJoyPress, X
	STY zJoyHeld, X
	DEX
	BPL @Loop2
	RTS

;
; Reads joypad pressed input
; Seperated in two to support SNES controllers
;
; OUTPUT:
; BYTE 0: BYSS^v<>
; BYTE 1: ^v<>AXLR
;
ReadJoypadLO:
	LDA #0
	STA zJoyPress
	LDA #1
	STA rJOY
	LDA #0
	STA rJOY
REPT 8
	LDA rJOY
	LSR A
	ROL zJoyPress
ENDR
	RTS

ReadJoypadHI:
	LDA #0
	STA zJoyPress + 1
	LDA #1
	STA rJOY
	LDA #0
	STA rJOY
REPT 8
	LDA rJOY
ENDR
REPT 4
	LDA rJOY
	LSR A
	ROL zJoyPress + 1
ENDR
	RTS
