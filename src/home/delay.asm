DelayFrame:
	LDA #1
	STA zNMIDelay
@Hang:
	LDA zNMIDelay
	BNE @Hang
	JMP AdvanceSound

DelayXFrames:
; input X
	TXA
	BEQ @Skip
@Loop:
	JSR DelayFrame
	DEX
	BNE @Loop
@Skip:
	RTS
