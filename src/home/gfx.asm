;
; This reads from $F0/$F1 to determine where a "buffer" is. Basically, a buffer
; is like this:
;
; rWORD    LEN DATA ......
; $20 $04  $03 $E9 $F0 $FB
; $25 $5F  $9F $FB
; $00
;
; rWORD is two bytes (hi,lo) for the address to send to rWORD. LEN is the
; length, with the following bitmask:
;
;  - $80: Use ONE tile instead of a string
;
; Increment style is pre-chosen to allow more data to funnel at once without
; having to use a redundant rWORD declaration. Savings encurred should be
; especially noticeable in RLE mode
;
; DATA is either (LEN) bytes or one byte.
;
; After (LEN) bytes have been written, the buffer pointer
; is incremented to (LEN+2) and the function restarts.
; A byte of $00 terminates execution and returns.
;
UpdatePPUFromBufferRLE:
	; First, check if we have anything to send to the PPU
	LDY #$00
	LDA (zPPUStringPointer), Y
	; If the first byte at the buffer address is #$00, we have nothing. We're done here!
	BEQ @Quit

	; Clear address latch
	LDX rSTATE
	; Set the PPU address to the
	; address from the PPU buffer
	STA rWORD
	INY
	LDA (zPPUStringPointer), Y
	STA rWORD
	INY
	; just make sure the NMI is enabled, m'kay?
	LDA zPPUCtrlMirror
	ORA #PPUCtrl_NMIEnabled
	STA rCTRL
	LDA (zPPUStringPointer), Y ; Data segment length byte...
	; If the MSB is set, we're copying a single tile
	; If not, we are copying a string of data
	BPL @CopyStringOfTiles

	; Because we relied on sign, A is exactly the length
	; MSB will be rotated out momentarily
	INY

@CopyStringOfTiles:
	; Isolate the data length.
	; A = (Length & #$3F)
	ASL A
	ADC #0
	LSR A
	TAX ; Copy the length into register X

@CopyLoop:
	; If Carry is set (from above), we're only copying one tile.
	; Do not increment Y to advance copying index
	BCS @CopySingleTileSkip

	INY

@CopySingleTileSkip:
	LDA (zPPUStringPointer), Y ; Load data from buffer...
	STA rDATA ; ...store it to the PPU.
	DEX ; Decrease remaining length.
	BNE @CopyLoop ; Are we done? If no, copy more stuff

	INY ; Y contains the amount of copied data now
	TYA ; ...and now A does
	CLC ; Clear carry bit (from earlier)
	ADC zPPUStringPointer ; Add the length to the PPU data buffer
	STA zPPUStringPointer
	LDA zPPUStringPointer + 1
	; If the length overflowed (carry set),
	; add that to the hi byte of the pointer
	ADC #$00
	STA zPPUStringPointer + 1
	; Start the cycle over again.
	; (If the PPU buffer points to a 0, it will terminate after this jump)
	JMP UpdatePPUFromBufferRLE

@Quit:
	RTS
