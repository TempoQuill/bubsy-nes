InitSound:
	PHP
	PHA
	TYA
	PHA
	TXA
	PHA
	LDA zPRGWindow1
	PHA
	LDA zPRGWindow2
	PHA
	JSR SetMainAudioBank
	JSR _InitSound
	PLA
	STA zPRGWindow2
	STA MMC5_PRGBankSwitch2
	PLA
	STA zPRGWindow1
	STA MMC5_PRGBankSwitch3
	PLA
	TAX
	PLA
	TAY
	PLA
	PLP
	RTS

AdvanceSound:
	PHP
	PHA
	TYA
	PHA
	TXA
	PHA
	LDA zPRGWindow1
	PHA
	LDA zPRGWindow2
	PHA
	JSR SetMainAudioBank
	JSR _AdvanceSound
	PLA
	STA zPRGWindow2
	STA MMC5_PRGBankSwitch2
	PLA
	STA zPRGWindow1
	STA MMC5_PRGBankSwitch3
	PLA
	TAX
	PLA
	TAY
	PLA
	PLP
	RTS

PlayMusic:
	PHP
	PHA
	TYA
	PHA
	TXA
	PHA
	LDA zPRGWindow1
	PHA
	LDA zPRGWindow2
	PHA
	TYA
	BEQ @None
	JSR SetMainAudioBank
	JSR _PlayMusic
	JMP @Done
@None:
	JSR SetMainAudioBank
	JSR _InitSound
@Done:
	PLA
	STA zPRGWindow2
	STA MMC5_PRGBankSwitch2
	PLA
	STA zPRGWindow1
	STA MMC5_PRGBankSwitch3
	PLA
	TAX
	PLA
	TAY
	PLA
	PLP
	RTS

PlaySFX:
	PHP
	PHA
	TYA
	PHA
	TXA
	PHA
	LDA zPRGWindow1
	PHA
	LDA zPRGWindow2
	PHA
	JSR SetMainAudioBank
	JSR _PlaySFX
	PLA
	STA zPRGWindow2
	STA MMC5_PRGBankSwitch2
	PLA
	STA zPRGWindow1
	STA MMC5_PRGBankSwitch3
	PLA
	TAX
	PLA
	TAY
	PLA
	PLP
	RTS

;
; Data fetching routines
;
; Input: (zCurrentChannelAreaPointer, zAudioHeaderPointer) offset by Y
; Output: A
;
; Preserves all registers within the referenced subroutines for a seemless,
; smooth operation
;
FetchMusicByte:
	LDA zCurrentChannelArea + CHANNEL_SONG_CONFIGURATION
	AND #$01
	TAX
	LDA zCurrentChannelArea + CHANNEL_SONG_BANK
	ORA #$80 ; make sure the bank is indeed a ROM bank
	STA MMC5_PRGBankSwitch2, X
	LDA (zCurrentChannelArea + CHANNEL_POINTER), Y
	INY
	LDX #PRG_Audio
	STX MMC5_PRGBankSwitch2
	STX MMC5_PRGBankSwitch3
	TAX
	RTS

FetchHeaderByte:
	LDA zCurrentChannelArea + CHANNEL_SONG_CONFIGURATION
	AND #$01
	TAX
	LDA zCurrentChannelArea + CHANNEL_SONG_BANK
	ORA #$80 ; make sure the bank is indeed a ROM bank
	STA MMC5_PRGBankSwitch2, X
	LDA (zAudioHeaderPointer), Y ; AKA zDPCMSamplePointer
	LDX #PRG_Audio
	STX MMC5_PRGBankSwitch2
	STX MMC5_PRGBankSwitch3
	TAX
	RTS

SetMainAudioBank:
	PHA
	LDA #PRG_Audio
	STA zPRGWindow1
	STA zPRGWindow2
	STA MMC5_PRGBankSwitch2
	STA MMC5_PRGBankSwitch3
	PLA
	RTS
