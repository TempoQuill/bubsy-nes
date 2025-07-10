_InitSound:
	PHP
	PHA
	TYA
	PHA
	TXA
	PHA
	LDA #0
	LDX #zVolatileAudioEnd - 1
@VolatileLoop:
	STA zVolatileAudio, X
	DEX
	BPL @VolatileLoop
	LDX #(CHANNEL_STRUCTURE * 5) ; 35 * 5 - 1 = 175
@ChannelsLoop:
	DEX
	STA iChannel01, X
	STA iChannel06, X
	BNE @ChannelsLoop
	PLA
	TAX
	PLA
	TAY
	PLA
	PLP
	RTS

_AdvanceSound:
; This routine runs every frame to advance the sound by 1 frame
	; are any of the music/sfx channels even on?
	LDA zMusicChannelFlags
	ORA zSFXChannelFlags
	BNE @DoSound
	STA rMIX ; then clear the mixer and get outta here
	RTS
@DoSound:
; start rolling sound
	JSR InitChannelPointer
@NextChannel:
	; first, get the channel
	; if an APU channel is active via sfx or music, skip ahead
	JSR IncChannelPointer
	BCS @DoWorkOnChannel

	; if both scratch bytes are 0...
	LDA zCurrentAudioScratchData + 1
	BPL @NextChannel

	JSR ResetTempChannelInfo ; just in case
	; ...and we've reached the end of channel RAM
	LDA zCurrentChannelPointer + 1
	CMP #>iChannel10 ; left=low, right=high
	BCS @RollFinished ; then clear the temp flags and get outta here

	; re-shift the channel flags to do work on Music Pulse 1
	JSR ShiftChannelIn
	BCS @DoWorkOnChannel
	BCC @NextChannel

@RollFinished:
	LDA #0
	STA zCurrentAudioScratchData
	STA zCurrentAudioScratchData + 1
	RTS

@DoWorkOnChannel:
	; first get our channel
	JSR RetrieveChannel
	; now, is this channel even active?
	; move on to the next channel if not
	LDA zCurrentChannelArea + CHANNEL_POINTER
	ORA zCurrentChannelArea + CHANNEL_POINTER + 1
	BEQ @NextChannel
	; now, make sure volume's free to use
	LDA #0
	STA zCurrentVolumeLinear
	; alright, if we're still mid-note, skip ahead
	DEC zCurrentChannelArea + CHANNEL_NOTE_DURATION
	BNE @MidNote
	JSR ParseAudioData ; keep reading until we hit a note
	JSR SetNoteDuration ; length*multi*tempo/256 = duration
	; trigger a full update
	LDA #$80
	ORA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1

	JSR InitStaccato
	; initialize counters / offset / volume
	LDA zCurrentChannelArea + CHANNEL_VIBRATO_DELAY
	STA zCurrentChannelArea + CHANNEL_VIBRATO_DELAY_COUNTER

@MidNote:
	; apply channel properties
	JSR ApplyChannel
	; now to check for sound effects
	; first of all, are we in a sound effect channel?
	JSR LoadChannelOffset
	CPX #CHAN5
	BCC @SkipPriority ; skip ahead if we are
	; else, let's load up the channel offset
	TXA
	SBC #5 ; set to per-set number
	TAX
	LDA ChannelSetBufferOffsets, X
	TAX
	LDA iChannel01 + CHANNEL_POINTER, X
	INX
	ORA iChannel01 + CHANNEL_POINTER, X ; is it active?
	BEQ @SkipPriority ; skip music channel if it is
	CPX #CHANNEL_STRUCTURE * CHAN4 ; DPCM?
	BCC @SkipUpdate
	LDA #0 ; clear sample buffer
	STA zDPCMAnalogs
	STA zDPCMAnalogs + 1
	STA zDPCMAnalogs + 2
	STA zDPCMAnalogs + 3
	BCS @SkipUpdate

@SkipPriority:
	JSR UpdateChannel

@SkipUpdate:
	JSR SendBufferToChannel
	JMP @NextChannel

ChannelSetBufferOffsets:
	db CHANNEL_STRUCTURE * CHAN0
	db CHANNEL_STRUCTURE * CHAN1
	db CHANNEL_STRUCTURE * CHAN2
	db CHANNEL_STRUCTURE * CHAN3
	db CHANNEL_STRUCTURE * CHAN4

UpdateChannel:
	JSR LoadChannelOffset
	TXA
	ASL A
	TAX
	LDA @Channels + 1, X
	PHA
	LDA @Channels, X
	PHA
	RTS

@Channels:
	dw @Ch1 - 1
	dw @Ch2 - 1
	dw @Ch3 - 1
	dw @Ch4 - 1
	dw @Ch5 - 1
	dw @Ch1 - 1
	dw @Ch2 - 1
	dw @Ch3 - 1
	dw @Ch4 - 1
	dw @Ch5 - 1

@Ch1:
	; if we read negative, execute the full spread
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	BMI @Ch1_Set
	; are we handling sound effect data
	LDA zCurrentChannelArea + CHANNEL_SONG_CONFIGURATION
	BMI @Ch1_End
	LDA zCurrentVolumeLinear
	STA rNR10
	LDA zCurrentSweep ; sweep shall proceed uninterrupted
	BMI @Ch1_End
	; else just modify LSB's of pitch and duty / volume
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH
	STA rNR12
@Ch1_End:
	RTS

@Ch1_Set:
	BIT rMIX ; make sure we don't read open bus!
	BVS @Ch1_Set
	LDA zMusicChannelFlags ; mix channels
	ORA zSFXChannelFlags
	AND #$0e ; mute while updating
	ORA rMIX
	STA rMIX
	LDA #$10 ; init volume / duty
	STA rNR10
	LDA zCurrentSweep
	STA rNR11
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH
	STA rNR12
	LDA zMusicChannelFlags
	ORA zSFXChannelFlags
; now, turn the channel on so the MSB's of pitch triggers output
@Ch1_Mix:
	BIT rMIX
	BVS @Ch1_Mix
	AND #$0f ; isolate PSG's
	ORA rMIX
	STA rMIX
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	AND #$07 ; isolate pitch
	ORA #$08 ; turn on
	STA rNR13
	LDA zCurrentVolumeLinear
	STA rNR10
	; clear trigger
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	AND #$7f
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	LDA #0
	STA zCurrentSweep
	RTS

@Ch2:
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	BMI @Ch2_Set
	LDA zCurrentChannelArea + CHANNEL_SONG_CONFIGURATION
	BMI @Ch2_End
	LDA zCurrentVolumeLinear
	STA rNR20
	LDA zCurrentSweep
	BMI @Ch2_End
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH
	STA rNR22
@Ch2_End:
	RTS

@Ch2_Set:
	BIT rMIX
	BVS @Ch2_Set
	LDA zMusicChannelFlags
	ORA zSFXChannelFlags
	AND #$0d
	ORA rMIX
	STA rMIX
	LDA #$10
	STA rNR20
	LDA zCurrentSweep
	STA rNR21
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH
	STA rNR22
	LDA zMusicChannelFlags
	ORA zSFXChannelFlags
@Ch2_Mix:
	BIT rMIX
	BVS @Ch2_Mix
	AND #$0f
	ORA rMIX
	STA rMIX
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	AND #$07
	ORA #$08
	STA rNR23
	LDA zCurrentVolumeLinear
	STA rNR20
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	AND #$7f
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	LDA #0
	STA zCurrentSweep
	RTS

@Ch3:
	; if we read negative, execute full spread
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	BPL @Ch3_Rest ; else, skip ahead
	LDA zMusicChannelFlags ; mix channels
	ORA zSFXChannelFlags
@Ch3_Mix1:
	BIT rMIX ; Open bus safeguard
	BVS @Ch3_Mix1
	TAX ; save for later
	AND #$0b ; mute while updating
	ORA rMIX
	STA rMIX
	; LSB's of pitch
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH
	STA rNR32
@Ch3_Mix2:
	BIT rMIX
	BVS @Ch3_Mix2
	TXA ; restore APU status
	AND #$0f ; isolate PSG's
	ORA rMIX
	STA rMIX
	; MSB's of pitch
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	AND #$07 ; isolate pitch / clear trigger
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	ORA #$08 ; turn on
	STA rNR33
@Ch3_Rest:
	; LSB's of pitch
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH
	STA rNR32
	; linear output length
	LDA zCurrentVolumeLinear
	STA rNR30
	RTS

@Ch4:
	; if we read negative, execute spread
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	BPL @Ch4_Done ; else just get outta here
@Ch4_Set:
	BIT rMIX ; Open bus safeguard
	BVS @Ch4_Set
	LDA zMusicChannelFlags ; mix channels
	ORA zSFXChannelFlags
	AND #$07 ; mute during update
	ORA rMIX
	STA rMIX
	; pitch / LFSR period
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH
	STA rNR42
	LDA #0 ; clear trigger
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	LDA zMusicChannelFlags
	ORA zSFXChannelFlags
@Ch4_On:
	BIT rMIX
	BVS @Ch4_On
	AND #$0f ; isolate PSG's
	ORA rMIX
	STA rMIX
	LDA #$08 ; trigger output
	STA rNR43
	LDA #0
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	LDA zCurrentVolumeLinear
	BEQ @Ch4_Done
	STA rNR40
@Ch4_Done:
	RTS

@Ch5:
	; if no sample is loaded, get outta here
	LDA zDPCMAnalogs
	ORA zDPCMAnalogs + 1
	ORA zDPCMAnalogs + 2
	ORA zDPCMAnalogs + 3
	BNE @Ch5_Set
	RTS

@Ch5_Set:
	; we start executing sample updates if one is loaded
	LDA zMusicChannelFlags ; mix channels
	ORA zSFXChannelFlags
	; we write to APU mixer differently here
	; since we're now handling DPCM
	AND #$0f ; mute DPCM during update
	STA rMIX
	; pitch
	LDA zDPCMAnalogs
	STA rNR50
	; ROM bank ($80-$fe)
	LDA zDPCMAnalogs + 1
	STA MMC5_PRGBankSwitch4
	; start (value * 64 + $c000 = CPU address)
	LDA zDPCMAnalogs + 2
	STA rNR52
	; length (value * 16 + 1 = sample size)
	LDA zDPCMAnalogs + 3
	STA rNR53
	BEQ @Ch5_On
	LDA zCurrentChannelArea + CHANNEL_SONG_CONFIGURATION
	BMI @Ch5_On
	; we reset the delta counter only if we have a meaningful sample length
	LDA #0
	STA rNR51
@Ch5_On:
	LDA zMusicChannelFlags
	ORA zSFXChannelFlags
	ORA #$10 ; make sure DPCM is on
	STA rMIX
	LDA #0 ; clear sample buffer
	STA zDPCMAnalogs
	STA zDPCMAnalogs + 1
	STA zDPCMAnalogs + 2
	STA zDPCMAnalogs + 3
	RTS

ApplyTriangle:
	LDA zCurrentChannelArea + CHANNEL_STACCATO
	BNE @Staccato
	LDA zCurrentChannelArea + CHANNEL_OCTAVE
	BMI @Cut
	LDA zCurrentChannelArea + CHANNEL_RAW_LINEAR_OUTPUT
	STA zCurrentVolumeLinear
	RTS

@Cut:
	LDA #0
	STA zCurrentVolumeLinear
	RTS

@Staccato:
	LDA zCurrentChannelArea + CHANNEL_STACCATO_COUNTER
	BEQ @Mute
	DEC zCurrentChannelArea + CHANNEL_STACCATO_COUNTER
	LDA zCurrentChannelArea + CHANNEL_RAW_LINEAR_OUTPUT
@Mute:
	STA zCurrentVolumeLinear
	RTS

InitStaccato:
	JSR LoadChannelOffset
	CPX #CHAN2
	BEQ @Tri
	CPX #CHAN7
	BEQ @Tri
	LDA zCurrentChannelArea + CHANNEL_STACCATO
	STA MMC5_Multiplier1
	LDA zCurrentChannelArea + CHANNEL_NOTE_DURATION
	STA MMC5_Multiplier2
	LDA MMC5_Multiplier2
	STA zCurrentChannelArea + CHANNEL_STACCATO_COUNTER
	RTS

@Tri:
	LDA #0
	STA zCurrentChannelArea + CHANNEL_STACCATO
	STA zCurrentChannelArea + CHANNEL_STACCATO_COUNTER
	LDA zCurrentChannelArea + CHANNEL_OCTAVE
	BMI @Cut
	LDA zCurrentChannelArea + CHANNEL_LINEAR_RATIO
	ASL A
	ASL A
	STA MMC5_Multiplier1
	LDA zCurrentChannelArea + CHANNEL_NOTE_DURATION
	STA MMC5_Multiplier2
	LDA MMC5_Multiplier2
	TAY
	LDA MMC5_Multiplier1
	CPY #$20
	BCS @Staccato

	STY zCurrentChannelArea + CHANNEL_RAW_LINEAR_OUTPUT
	ASL A
	ROL zCurrentChannelArea + CHANNEL_RAW_LINEAR_OUTPUT
	ASL A
	ROL zCurrentChannelArea + CHANNEL_RAW_LINEAR_OUTPUT
	RTS

@Cut:
	LDA #0
	STA zCurrentVolumeLinear
	RTS

@Staccato:
	TYA
	LDY #$81
	STY zCurrentChannelArea + CHANNEL_RAW_LINEAR_OUTPUT
	STA zCurrentChannelArea + CHANNEL_STACCATO
	STA zCurrentChannelArea + CHANNEL_STACCATO_COUNTER
	RTS

ApplyNoise:
	; exit early if we're reading sound effect data instead
	LDA zCurrentChannelArea + CHANNEL_SONG_CONFIGURATION
	BPL @Music
	RTS
@Music:
	LDX zCurrentChannelArea + CHANNEL_DRUM_ID
	LDA NoisePercussion, X
	STA zCurrentInstrumentPointer
	LDA NoisePercussion + 1, X
	STA zCurrentInstrumentPointer + 1
	LDY zCurrentChannelArea + CHANNEL_DRUM_OFFSET
	LDA zCurrentChannelArea + CHANNEL_DRUM_NOTE_DURATION
	BEQ @Read

	DEC zCurrentChannelArea + CHANNEL_DRUM_NOTE_DURATION
	RTS

@Read:
	LDA (zCurrentInstrumentPointer), Y
	BMI @NoteLengthOrVolume
	BEQ @Ret
	AND #$10
	ASL A
	ASL A
	ASL A
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH
	LDA (zCurrentInstrumentPointer), Y
	INY
	STY zCurrentChannelArea + CHANNEL_DRUM_OFFSET
	AND #$0f
	ORA zCurrentChannelArea + CHANNEL_RAW_PITCH
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH
	LDA #$80
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	LDA zCurrentChannelArea + CHANNEL_DRUM_NOTE_LENGTH
	STA zCurrentChannelArea + CHANNEL_DRUM_NOTE_DURATION
	LDA zCurrentChannelArea + CHANNEL_RAW_VOLUME
	STA zCurrentVolumeLinear
	DEC zCurrentChannelArea + CHANNEL_DRUM_NOTE_DURATION
	RTS
@Ret:
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH
	LDA #$80
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	LDA #$10
	STA zCurrentVolumeLinear
	RTS

@NoteLengthOrVolume:
	INY
	CMP #sfx_volume
	BCS @Volume
	AND #$1f
	TAX
	INX
	STX zCurrentChannelArea + CHANNEL_DRUM_NOTE_LENGTH
	BPL @Read

@Volume:
	CMP #sound_loop
	BCS @Sound_loop
	AND #$1f
	ORA #$20
	STA zCurrentChannelArea + CHANNEL_RAW_VOLUME
	BPL @Read

@Sound_loop:
	AND #$1f
	TAY
	BPL @Read

ApplyNoteEffects:
; first, we gotta make sure we're on the right channel
	LDA zCurrentChannelArea + CHANNEL_SONG_CONFIGURATION
	BPL @Start
	RTS
@Cut:
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH
	LDA #$80
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	LDA #$10
	STA zCurrentVolumeLinear
	RTS
@Start:
; pre-effect
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	BMI @CheckCut
	JSR GetRawPitch

@CheckCut:
	LDA zCurrentChannelArea + CHANNEL_OCTAVE
	BMI @Cut

@Chorus:
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH
	SEC
	SBC zCurrentChannelArea + CHANNEL_CHORUS
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	SBC #0
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1

; vibrato
	LDA zCurrentChannelArea + CHANNEL_VIBRATO_STEP
	BEQ @Staccato
	; pre-vibrato
	LDA zCurrentChannelArea + CHANNEL_VIBRATO_DELAY_COUNTER
	BEQ @VibratoProper

	DEC zCurrentChannelArea + CHANNEL_VIBRATO_DELAY_COUNTER
	JMP @Staccato

@VibratoProper:
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH
	LDY zCurrentChannelArea + CHANNEL_VIBRATO_CREST
	CLC
	BMI @VibratoTroph

	SBC zCurrentChannelArea + CHANNEL_VIBRATO_CREST
	BCS @VibratoStep

	LDA #$00
	BEQ @VibratoStep ; always branches

@VibratoTroph:
	ADC zCurrentChannelArea + CHANNEL_VIBRATO_TROPH
	BCC @VibratoStep

	LDA #$ff

@VibratoStep:
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH ; store the final (lo)raw pitch
	DEC zCurrentChannelArea + CHANNEL_VIBRATO_STEP_COUNTER
	BMI @VibratoNext
	BNE @Staccato

@VibratoNext:
	LDA zCurrentChannelArea + CHANNEL_VIBRATO_STEP
	STA zCurrentChannelArea + CHANNEL_VIBRATO_STEP_COUNTER
	LDA #$80
	EOR zCurrentChannelArea + CHANNEL_VIBRATO_CREST
	STA zCurrentChannelArea + CHANNEL_VIBRATO_CREST

@Staccato:
	LDA zCurrentChannelArea + CHANNEL_STACCATO
	ORA zCurrentChannelArea + CHANNEL_STACCATO_COUNTER
	BEQ @Detune
	LDA zCurrentChannelArea + CHANNEL_STACCATO_COUNTER
	BEQ @CutNote

	DEC zCurrentChannelArea + CHANNEL_STACCATO_COUNTER
	JMP @Detune

@CutNote:
	LDA #0
	STA zCurrentChannelArea + CHANNEL_ENCODED_NOTE
	STA zCurrentChannelArea + CHANNEL_OCTAVE
	LDA #$10
	STA zCurrentVolumeLinear

@Detune:
	SEC
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH
	SBC zCurrentChannelArea + CHANNEL_RAW_PITCH_MODIFIER
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	SBC zCurrentChannelArea + CHANNEL_RAW_PITCH_MODIFIER + 1
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1

; sweep
	LDA zCurrentChannelArea + CHANNEL_SWEEP
	BNE @GotSweep
	LDA #$7f
@GotSweep:
	STA zCurrentSweep

; volume
	LDA zCurrentVolumeLinear
	BNE @DutyLoop
	LDX zCurrentChannelArea + CHANNEL_INSTRUMENT
	LDA PulseInstruments, X
	STA zCurrentInstrumentPointer
	LDA PulseInstruments + 1, X
	STA zCurrentInstrumentPointer + 1
	LDY zCurrentChannelArea + CHANNEL_INSTRUMENT_OFFSET
@VolumeLoop:
	LDA (zCurrentInstrumentPointer), Y
	BEQ @VolumeRet
	CMP #sound_loop
	BCC @VolumeSet

	AND #$1f ; clears sign flag (twice due to transfer)
	TAY
	BPL @VolumeLoop

@VolumeRet:
	LDA #$10
	STA zCurrentVolumeLinear
	RTS

@VolumeSet:
	INY
	ORA #$20
	STA zCurrentVolumeLinear
	STY zCurrentChannelArea + CHANNEL_INSTRUMENT_OFFSET
@DutyLoop:
	LDA zCurrentChannelArea + CHANNEL_DUTY_LOOP_OVERRIDE
	BNE @SetNewDuty
	RTS

@SetNewDuty:
	; set the top crumb as acting duty cycle
	LDA zCurrentVolumeLinear
	AND #$3f
	STA zCurrentVolumeLinear
	LDA zCurrentChannelArea + CHANNEL_DUTY_LOOP_OVERRIDE
	AND #$c0
	ORA zCurrentVolumeLinear
	STA zCurrentVolumeLinear
	; rotate the crumbs
	LDA zCurrentChannelArea + CHANNEL_DUTY_LOOP_OVERRIDE
	ASL A
	ADC #0
	ASL A
	ADC #0
	STA zCurrentChannelArea + CHANNEL_DUTY_LOOP_OVERRIDE
	RTS

InitNoteEffects:
; apply any effects listed if on the pulse 1/2 channels
	; before we do anything, did we encounter a tie?
	LDA zCurrentChannelArea + CHANNEL_ENCODED_NOTE
	AND #$0f
	CMP #n_tie
	BNE @Chans
	RTS ; keep everything the way it was if we're tying
@Chans:
	LDA #0 ; since we know we're not in a tie, clear the instrument offset
	STA zCurrentChannelArea + CHANNEL_INSTRUMENT_OFFSET
	; now, make sure we are on the appropriate channels
	JSR LoadChannelOffset
	CPX #CHAN5 ; which set are we on?
	; in case we do go through, load up initialization parameters
	LDA #0
	LDY #CHANNEL_STRUCTURE - CHANNEL_CHORUS
	BCC @SFX
; are we on the pulse channels?
;music
	CPX #CHAN7 ; hi triangle
	BCC @Valid
	RTS
@SFX:
	CPX #CHAN2
	BCC @Valid
	RTS
@Valid:
; we've landed on valid ground
; that means we're on the pulse channels, so let's apply some crazy effects
; like vibrato... and chorus...
	; let's initialize the effect area for a clean slate
	DEY
	STA zCurrentChannelArea + CHANNEL_CHORUS, Y
	BNE @Valid
	; exit early if we're reading sound effect data
	LDA zCurrentChannelArea + CHANNEL_SONG_CONFIGURATION
	BPL @Load
	RTS
@Load:
	; let's load the instrument ID to find what effect stream we should use
	LDX zCurrentChannelArea + CHANNEL_INSTRUMENT
	LDA PulseEffects, X
	STA zCurrentEffectPointer
	LDA PulseEffects + 1, X
	STA zCurrentEffectPointer + 1
@Parse:
	LDX #$ff ; don't forget to guarantee an overflow
	LDA (zCurrentEffectPointer), Y
	BNE @EffectCommand
	RTS

@EffectCommand:
	LSR A
	INX
	BCC @EffectCommand
	INY
	TXA
	ASL A
	TAX
	LDA @EffectPointers + 1, X
	PHA
	LDA @EffectPointers, X
	PHA
	RTS

@EffectPointers:
	dw @Chorus - 1
	dw @PreVibrato - 1
	dw @Vibrato - 1
	dw @Staccato - 1
	dw @Detune - 1
	dw @Transposition - 1
	dw @Sweep - 1
	dw @DutyLoop - 1

@Chorus:
	LDX #CHANNEL_CHORUS
	BNE @Common

@PreVibrato:
	LDX #CHANNEL_VIBRATO_DELAY
	JSR @Transfer
	STA zCurrentChannelArea + CHANNEL_VIBRATO_DELAY_COUNTER
	JMP @Parse

@Vibrato:
	LDA (zCurrentEffectPointer), Y ; depth
	ROL A
	ROL A
	ROL A
	ROL A
	AND #$07 ; doesn't affect carry
	STA zCurrentChannelArea + CHANNEL_VIBRATO_TROPH
	STA zCurrentChannelArea + CHANNEL_VIBRATO_CREST
	LDA (zCurrentEffectPointer), Y ; step
	AND #$0f
	STA zCurrentChannelArea + CHANNEL_VIBRATO_STEP
	INY
	JMP @Parse

@Staccato:
	LDX #CHANNEL_STACCATO
	BNE @Common

@Detune:
	LDX #CHANNEL_RAW_PITCH_MODIFIER
	JSR @Transfer
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH_MODIFIER
	BPL @Done
	DEC zCurrentChannelArea + CHANNEL_RAW_PITCH_MODIFIER + 1
@Done:
	JMP @Parse

@Transposition:
	LDX #CHANNEL_TRANSPOSITION
	BNE @Common

@Sweep:
	LDX #CHANNEL_SWEEP
	BNE @Common

@DutyLoop:
	LDX #CHANNEL_DUTY_LOOP_OVERRIDE
@Common:
	JSR @Transfer
	JMP @Parse

@Transfer:
	LDA (zCurrentEffectPointer), Y
	INY
	STA zCurrentChannelArea, X
	RTS

ParseAudioData:
	LDY #0
	LDA zCurrentChannelArea + CHANNEL_SONG_CONFIGURATION
	BPL ParseAudioData_Music
	JMP ParseSoundEffectData
ParseAudioData_Music:
	JSR FetchMusicByte
	BEQ ParseAudioData_Ret
	BPL ParseAudioData_Note
	JSR ExecuteMusicCommand
	JMP ParseAudioData_Music
ParseAudioData_Ret:
	LDA zCurrentChannelArea + CHANNEL_MAIN_LOOP_POINTER
	STA zCurrentChannelArea + CHANNEL_POINTER
	LDA zCurrentChannelArea + CHANNEL_MAIN_LOOP_POINTER + 1
	STA zCurrentChannelArea + CHANNEL_POINTER + 1
	LDY #0 ; init address offset again
	ORA zCurrentChannelArea + CHANNEL_POINTER
	BNE ParseAudioData_Music
	JSR LoadChannelOffset
	CPX #CHAN4
	BEQ ParseAudioData_SetDPCM
	BCC ParseAudioData_PSG
	CPX #CHAN9
	BNE ParseAudioData_Clear
ParseAudioData_SetDPCM:
	LDA #$0f
	STA zDPCMAnalogs
	LDA #PRG_Home - 1
	STA zDPCMAnalogs + 1
	LDA #$7f
	STA zDPCMAnalogs + 2
	LDA #$00
	STA zDPCMAnalogs + 3
	BEQ ParseAudioData_Clear
ParseAudioData_PSG:
	LDY ChannelSetBufferOffsets, X
	LDA #$80
	ORA iChannel06 + CHANNEL_RAW_PITCH + 1, Y
	STA iChannel06 + CHANNEL_RAW_PITCH + 1, Y
ParseAudioData_Clear:
	LDA ChannelMasks, X
	LDY MaskOffsets, X
	AND zMusicChannelFlags, Y
	STA zMusicChannelFlags, Y
	JMP ClearChannelBuffer

ParseAudioData_Note:
; alright, we got a note byte... let's disect it!
	TAX
	LDA zCurrentChannelArea + CHANNEL_ENCODED_NOTE
	STA zCurrentPitchID
	TXA
	STA zCurrentChannelArea + CHANNEL_ENCODED_NOTE
	JSR ChannelAddressZipper ; add value Y to current address
	JSR InitNoteEffects
	JMP DisectNote

ChannelMasks:
	.db $1e, $1d, $1b, $17, $0f
	.db $1e, $1d, $1b, $17, $0f
MaskOffsets:
	.db $01, $01, $01, $01, $01
	.db $00, $00, $00, $00, $00

ParseSoundEffectData:
; stack jump
; all pointers in this table are behind by one to accommodate the NES's quirk
; of saving to the stack just before incrementing to the next instruction
	JSR LoadChannelOffset ; loads X as a pointer offset
	TXA
	ASL A
	TAX
	LDA @Channels + 1, X
	PHA
	LDA @Channels, X
	PHA
	RTS

@Channels:
	dw @PulseSFXData - 1
	dw @PulseSFXData - 1
	dw @TriSFXData - 1
	dw @NoiseSFXData - 1
	dw @DPCMSFXData - 1
	dw @PulseSFXData - 1
	dw @PulseSFXData - 1
	dw @TriSFXData - 1
	dw @NoiseSFXData - 1
	dw @DPCMSFXData - 1

@PulseRet:
	LDA #0
	STA zCurrentSweep
	JMP ParseAudioData_Ret

@PulseSFXData:
	JSR FetchMusicByte
	TAX
	BEQ @PulseRet
	BMI @PulseCommand
	ASL A
	ASL A
	BCS @PulseRest
	AND #$c0
	STA zCurrentVolumeLinear
	TXA
	AND #$07
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	LDA zCurrentChannelArea + CHANNEL_RAW_VOLUME
	ORA zCurrentVolumeLinear
	STA zCurrentVolumeLinear
	JSR FetchMusicByte
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH
	JSR FetchMusicByte
	STA zCurrentSweep
	JMP ChannelAddressZipper

@PulseCommand:
	ASL A
	BPL @PulseLength
	ASL A
	BPL @PulseVolume
	TXA
	JSR SFX_Loop
	JMP @PulseSFXData

@PulseVolume:
	JSR SFX_RawVolume
	JMP @PulseSFXData

@PulseLength:
	JSR SFX_NoteLength
	JMP @PulseSFXData

@PulseRest:
	LDA #0
	STA zCurrentSweep
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH
	LDA #$80
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	LDA #$10
	STA zCurrentVolumeLinear
	JMP ChannelAddressZipper

@TriRet:
	JMP ParseAudioData_Ret

@TriSFXData:
	JSR FetchMusicByte
	TAX
	BEQ @TriRet
	BMI @TriCommand
	ASL A
	BMI @TriRest
	TXA
	AND #$07
	ORA #$80
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	JSR FetchMusicByte
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH
	LDA zCurrentChannelArea + CHANNEL_RAW_VOLUME
	STA zCurrentVolumeLinear
	JMP ChannelAddressZipper

@TriCommand:
	ASL A
	BPL @TriLength
	ASL A
	BPL @TriLinear
	TXA
	JSR SFX_Loop
	JMP @TriSFXData

@TriLinear:
	TXA
	JSR SFX_LinearOutputRatio
	JMP @TriSFXData

@TriLength:
	JSR SFX_NoteLength
	JMP @TriSFXData

@TriRest:
	LDA #0
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	STA zCurrentVolumeLinear
	JMP ChannelAddressZipper

@NoiseRet:
	JMP ParseAudioData_Ret

@NoiseSFXData:
	JSR FetchMusicByte
	TAX
	BEQ @NoiseRet
	BMI @NoiseCommand
	ASL A
	BMI @NoiseRest
	ASL A
	ASL A
	AND #$80
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH
	TXA
	AND #$0f
	ORA zCurrentChannelArea + CHANNEL_RAW_PITCH
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH
	LDA zCurrentChannelArea + CHANNEL_RAW_VOLUME
	STA zCurrentVolumeLinear
	JMP ChannelAddressZipper

@NoiseCommand:
	ASL A
	BPL @NoiseLength
	ASL A
	BPL @NoiseVolume
	TXA
	JSR SFX_Loop
	JMP @NoiseSFXData

@NoiseVolume:
	JSR SFX_RawVolume
	JMP @NoiseSFXData

@NoiseLength:
	JSR SFX_NoteLength
	JMP @NoiseSFXData

@NoiseRest:
	LDA #0
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	LDA #$10
	STA zCurrentVolumeLinear
	JMP ChannelAddressZipper

@DPCMRet:
	JMP ParseAudioData_Ret

@DPCMSFXData:
	JSR FetchMusicByte
	TAX
	BEQ @DPCMRet
	BMI @DPCMCommand
	ASL A
	ASL A
	BCS @DPCMRest
	TAX
	LDA SFXDPCMSampleTable, X
	STA zDPCMAnalogs
	LDA SFXDPCMSampleTable + 1, X
	STA zDPCMAnalogs + 1
	LDA SFXDPCMSampleTable + 2, X
	STA zDPCMAnalogs + 2
	LDA SFXDPCMSampleTable + 3, X
	STA zDPCMAnalogs + 3
	JMP ChannelAddressZipper

@DPCMCommand:
	ASL A
	BPL @DPCMLength
	ASL A
	BPL @DPCMSkip
	TXA
	JSR SFX_Loop
@DPCMSkip:
	JMP @DPCMSFXData

@DPCMLength:
	JSR SFX_NoteLength
	JMP @DPCMSFXData

@DPCMRest:
	LDA #0
	STA zDPCMAnalogs
	STA zDPCMAnalogs + 1
	STA zDPCMAnalogs + 2
	STA zDPCMAnalogs + 3
	JMP ChannelAddressZipper

DisectNote:
	JSR LoadChannelOffset
	TXA
	ASL A
	TAX
	LDA @Channels + 1, X
	PHA
	LDA @Channels, X
	PHA
	RTS

@Channels:
	dw @Pulse - 1
	dw @Pulse - 1
	dw @Tri - 1
	dw @Noise - 1
	dw @DPCM - 1
	dw @Pulse - 1
	dw @Pulse - 1
	dw @Tri - 1
	dw @Noise - 1
	dw @DPCM - 1

@Rest:
	LDA #0
	STA zCurrentChannelArea + CHANNEL_ENCODED_NOTE
	LDA #$80
	STA zCurrentChannelArea + CHANNEL_OCTAVE
	RTS

@Tie:
	LDA zCurrentPitchID
	STA zCurrentChannelArea + CHANNEL_ENCODED_NOTE
	LDA #0
	STA zCurrentPitchID
	RTS

@Pulse:
	LDA zCurrentChannelArea + CHANNEL_ENCODED_NOTE
	AND #$0f
	CMP #n_tie
	BCC @PulseNote
	CMP #n_cut
	BCS @Rest
	JSR @Tie
	JMP GetRawPitch
@PulseNote:
	JSR @TransposeAndSeparateOctave
	JMP GetRawPitch

@Tri:
	LDA zCurrentChannelArea + CHANNEL_ENCODED_NOTE
	AND #$0f
	CMP #n_tie
	BCC @TriNote
	CMP #n_cut
	BCS @Rest
	JSR @Tie
	JMP GetRawPitch
@TriNote:
	JSR @SeparateOctave
	JSR GetRawPitch
	LDA #$80
	ORA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	RTS

@Noise:
	LDA zCurrentChannelArea + CHANNEL_ENCODED_NOTE
	ASL A
	STA zCurrentChannelArea + CHANNEL_DRUM_ID
	RTS

@DPCM:
	LDA #0
	TAY
	STA zDPCMSamplePointer
	STA zDPCMSamplePointer + 1
	LDA zCurrentChannelArea + CHANNEL_ENCODED_NOTE
	ASL A
	ASL A
	ROL zDPCMSamplePointer + 1 ; clears carry due to initialization
	ADC #<MusicDPCMSampleTable
	STA zDPCMSamplePointer
	LDA zDPCMSamplePointer + 1
	ADC #>MusicDPCMSampleTable
	STA zDPCMSamplePointer + 1
	LDA (zDPCMSamplePointer), Y
	STA zDPCMAnalogs
	INY
	LDA (zDPCMSamplePointer), Y
	STA zDPCMAnalogs + 1
	INY
	LDA (zDPCMSamplePointer), Y
	STA zDPCMAnalogs + 2
	INY
	LDA (zDPCMSamplePointer), Y
	STA zDPCMAnalogs + 3
	RTS

@TransposeAndSeparateOctave:
	LDA zCurrentChannelArea + CHANNEL_ENCODED_NOTE
	TAY
	AND #$f0
	CLC
	ADC zCurrentChannelArea + CHANNEL_TRANSPOSITION
	AND #$f0
	STA zCurrentChannelArea + CHANNEL_OCTAVE
	TYA
	AND #$0f
	STA zCurrentChannelArea + CHANNEL_ENCODED_NOTE
	CLC
	LDA zCurrentChannelArea + CHANNEL_TRANSPOSITION
	AND #$0f
	ADC zCurrentChannelArea + CHANNEL_ENCODED_NOTE
	STA zCurrentChannelArea + CHANNEL_ENCODED_NOTE
	RTS

@SeparateOctave:
	LDA zCurrentChannelArea + CHANNEL_ENCODED_NOTE
	TAY
	AND #$f0
	STA zCurrentChannelArea + CHANNEL_OCTAVE
	TYA
	AND #$0f
	STA zCurrentChannelArea + CHANNEL_ENCODED_NOTE
	RTS

ExecuteMusicCommand:
; input: A (%1nnppppp, n = command number, p = parameter)
	PHA ; save full byte for when parsing the parameter
	; /16
	LSR A ; %01nnpppp p
	LSR A ; %001nnppp p
	LSR A ; %0001nnpp p
	LSR A ; %00001nnp p
	; isolate the command number, serves as a pointer offset now
	AND #$06
	TAX
	; read a "behind by one" table and save before returning
	; this should launch us to where we wanna go
	LDA @Commands + 1, X
	PHA
	LDA @Commands, X
	PHA
	RTS

@Commands:
; in-instrument effects leaves it feasible to use a minimalist command set
	dw Music_NoteLength - 1
	dw Music_NoteLengthMulti - 1
	dw Music_Instrument - 1
	dw Music_Loop - 1

SFX_NoteLength:
; SFX: $80-$bf
	TXA
	AND #$3f
	BPL Common_NoteLength ; always branches, sign is always 0 here from AND

Music_NoteLength:
; Music: $80-$9f
	PLA
	AND #$1f
Common_NoteLength:
	TAX
	INX ; zero-indexed parameter (1-32)
	STX zCurrentChannelArea + CHANNEL_NOTE_LENGTH
	RTS

Music_NoteLengthMulti:
; Music: $a0-$bf
	PLA
	AND #$1f
	STA zCurrentChannelArea + CHANNEL_NOTE_LENGTH_MULTIPLIER
	RTS

Music_Instrument:
Music_LinearOutputRatio:
; Music: $c0-$df
	PLA
SFX_LinearOutputRatio:
; only skip PLA when playing sound effect triangle data
	AND #$1f
	ASL A ; multiply by 2 ahead of time
	STA zCurrentChannelArea + CHANNEL_LINEAR_RATIO
	RTS

Music_Loop:
; Music/SFX: $e0-$ff
; the loop command is fairly complex for just using a 5-bit parameter
	; first, load up the parameter and increment offset for later addition
	PLA
SFX_Loop:
	AND #$1f
	BNE @OptLoop
	; if it's 0, then we're aiming for a main loop
	; main loops are separate functions compared to other loops
	LDA zCurrentChannelArea + CHANNEL_MAIN_LOOP_POINTER
	ORA zCurrentChannelArea + CHANNEL_MAIN_LOOP_POINTER + 1
	BEQ @Mainloop ; execute the main loop if we haven't already
	RTS ; else we simply skip the byte
@Mainloop:
	; load up the current address Y offset into the accumulator
	TYA
	; X is the read point, Y is the write point
	LDX #CHANNEL_MAIN_LOOP_POINTER
	BNE @LoopCommon
@OptLoop:
	LDX zCurrentChannelArea + CHANNEL_LOOP_COUNTER ; is there already an active counter?
	BNE @SendToAddress ; jump to the recorded address if so
	; continue if not
	CMP #2
	BCC @Done
	STA zCurrentChannelArea + CHANNEL_LOOP_COUNTER
	DEC zCurrentChannelArea + CHANNEL_LOOP_COUNTER
	; load up the current address Y offset into the accumulator
	TYA
	; X is the read point, Y is the write point
	LDX #CHANNEL_LOOP_POINTER
@LoopCommon:
	; add the offset to the main pointer and copy to the designated loop
	CLC
	ADC zCurrentChannelArea + CHANNEL_POINTER
	STA zCurrentChannelArea + CHANNEL_POINTER
	STA zCurrentChannelArea, X
	INX
	LDA #0
	ADC zCurrentChannelArea + CHANNEL_POINTER + 1
	STA zCurrentChannelArea + CHANNEL_POINTER + 1
	STA zCurrentChannelArea, X
	LDY #0 ; init address offset again
@Done:
	RTS

@SendToAddress:
; we land here if we already established an optimization-based loop and just
; read another opt-loop byte in the contiguous data
	; mark each instance of landing here
	LDX zCurrentChannelArea + CHANNEL_LOOP_COUNTER
	DEX
	STX zCurrentChannelArea + CHANNEL_LOOP_COUNTER
	LDA zCurrentChannelArea + CHANNEL_LOOP_POINTER
	STA zCurrentChannelArea + CHANNEL_POINTER
	LDA zCurrentChannelArea + CHANNEL_LOOP_POINTER + 1
	STA zCurrentChannelArea + CHANNEL_POINTER + 1
	LDY #0 ; init address offset again
	RTS

SFX_RawVolume:
; SFX: $c0-$df
	TXA
	AND #$1f
	ORA #$20
	STA zCurrentChannelArea + CHANNEL_RAW_VOLUME
SFX_None: ; SFX: $c0-$df
	RTS

GetRawPitch:
	LDA zCurrentChannelArea + CHANNEL_ENCODED_NOTE
	BEQ @Done
	ASL A
	TAY
	LDA Notes, Y
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH
	LDA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	AND #$80
	TAX
	INY
	LDA Notes, Y
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	LDA zCurrentChannelArea + CHANNEL_OCTAVE
@Loop:
	SEC
	SBC #$10
	BCC @Done
	LSR zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	ROR zCurrentChannelArea + CHANNEL_RAW_PITCH
	JMP @Loop
@Done:
	TXA
	ORA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	STA zCurrentChannelArea + CHANNEL_RAW_PITCH + 1
	RTS

SetNoteDuration:
	LDA zCurrentChannelArea + CHANNEL_NOTE_LENGTH
	STA MMC5_Multiplier1
	LDA zCurrentChannelArea + CHANNEL_NOTE_LENGTH_MULTIPLIER
	STA MMC5_Multiplier2
	LDA MMC5_Multiplier1
	STA MMC5_Multiplier1
	LDA zCurrentChannelArea + CHANNEL_TEMPO
	STA MMC5_Multiplier2
	LDA MMC5_Multiplier1
	LDY MMC5_Multiplier2
	CLC
	ADC zCurrentChannelArea + CHANNEL_NOTE_DURATION + 1
	STA zCurrentChannelArea + CHANNEL_NOTE_DURATION + 1
	TYA
	ADC zCurrentChannelArea + CHANNEL_NOTE_DURATION
	STA zCurrentChannelArea + CHANNEL_NOTE_DURATION
	BNE @Done
	INC zCurrentChannelArea + CHANNEL_NOTE_DURATION
@Done:
	RTS

LoadChannelOffset:
; output: X
	LDX #$ff
@Loop:
	LDA zCurrentChannelPointer + 1
	INX
	CMP @ChannelsHi, X
	BNE @Loop
	LDA zCurrentChannelPointer
	CMP @ChannelsLo, X
	BNE @Loop
	RTS

@ChannelsLo:
	dl iChannel01
	dl iChannel02
	dl iChannel03
	dl iChannel04
	dl iChannel05
	dl iChannel06
	dl iChannel07
	dl iChannel08
	dl iChannel09
	dl iChannel10

@ChannelsHi:
	dh iChannel01
	dh iChannel02
	dh iChannel03
	dh iChannel04
	dh iChannel05
	dh iChannel06
	dh iChannel07
	dh iChannel08
	dh iChannel09
	dh iChannel10

_PlayMusic:
; input: Y(song ID)
; offset: zAudioScratchPointer (assumed to be 0 due to prior initialization
; from superroutine's previous call)
	; load the song ID into A to do proper work
	TYA
	; first load it in the zero-page buffer's song ID
	STA zCurrentChannelArea + CHANNEL_SONG_ID
	; there's only 24 songs (5-bits used), though naturally the pointer
	; operation allows for up to 63 (6-bit ID's)
	; follow sound effect loading logic to expand to 255
	ASL A
	ASL A
	CLC
	ADC #<MusicPointers
	STA zAudioScratchPointer
	LDA #>MusicPointers
	ADC #0
	STA zAudioScratchPointer + 1
	JSR InitBuffer
	STA zMusicChannelFlags
	STA zCurrentAudioScratchData ; used for right-shifting flags for pointers
	INY ; tempo
	LDA #2 ; default note length multiplier
	STA zCurrentChannelArea + CHANNEL_NOTE_LENGTH_MULTIPLIER
	JSR FetchHeaderByte
	STA zCurrentChannelArea + CHANNEL_TEMPO
	LDA #1
	STA zCurrentChannelArea + CHANNEL_NOTE_DURATION
	LDX #>iChannel06
	STX zCurrentChannelPointer + 1
	LDX #<iChannel06
	STX zCurrentChannelPointer
	JMP InitSetPointers

_PlaySFX:
; input: Y(sfx ID)
; offset: zAudioScratchPointer (cleared here due to skipping the init call)
	; initialize the scratch word & buffer first
	JSR ClearChannelBuffer
	STA zAudioScratchPointer
	STA zAudioScratchPointer + 1
	; load the sfx ID into A to do proper work
	TYA
	; first load it in the zero-page buffer's sfx ID
	STA zCurrentChannelArea + CHANNEL_SONG_ID
	; there's a nice total amount of sound effects (7-bits used)
	; multiply the sfx by 4 to get scratch pointer's offset
	; this is essential if we want to use more than 64 entries
	ASL A
	ROL zAudioScratchPointer + 1
	ASL A
	ROL zAudioScratchPointer + 1
	ADC #<SfxPointers
	STA zAudioScratchPointer
	LDA #>SfxPointers
	ADC zAudioScratchPointer + 1
	STA zAudioScratchPointer + 1
	JSR InitBuffer
	STA zCurrentAudioScratchData ; used for right-shifting flags for pointers
	ORA zSFXChannelFlags
	STA zSFXChannelFlags
	INY ; tempo
	LDA #2 ; default note length multiplier
	STA zCurrentChannelArea + CHANNEL_NOTE_LENGTH_MULTIPLIER
	JSR FetchHeaderByte
	STA zCurrentChannelArea + CHANNEL_TEMPO
	LDA #1
	STA zCurrentChannelArea + CHANNEL_NOTE_DURATION
	LDX #>iChannel01
	STX zCurrentChannelPointer + 1
	LDX #<iChannel01
	STX zCurrentChannelPointer
	JMP InitSetPointers

InitBuffer:
	; We have our address!  Now start reading the 4-byte pointer!
	LDY #0 ; start from the beginning
	LDA (zAudioScratchPointer), Y
	STA zCurrentChannelArea + CHANNEL_SONG_CONFIGURATION
	INY
	LDA (zAudioScratchPointer), Y
	STA zCurrentChannelArea + CHANNEL_SONG_BANK
	INY
	; send the header pointer to RAM now
	LDA (zAudioScratchPointer), Y
	STA zAudioHeaderPointer
	INY
	LDA (zAudioScratchPointer), Y
	STA zAudioHeaderPointer + 1
	; time to read the header pointer now
	; length depends on how many channels are active
	; 4 bytes for 1 channel, add 2 bytes per additional channel
	LDY #0 ; channel flags - %000dntpp
	JMP FetchHeaderByte

InitSetPointers:
	; carry determines whether or not to initialize a channel
	LSR zCurrentAudioScratchData
	BCC @NoChannel
	; A channel will be active!  Initialize it!
	INY ; pointers
	JSR FetchHeaderByte
	STA zCurrentChannelArea + CHANNEL_POINTER
	INY
	JSR FetchHeaderByte
	STA zCurrentChannelArea + CHANNEL_POINTER + 1
	JSR SendBufferToChannel
	JSR @AdvancePointer
	BCC InitSetPointers
@NoChannel:
	BEQ @PointersDone
	JSR @AdvancePointer
	BPL InitSetPointers
@PointersDone:
	RTS

@AdvancePointer:
	CLC
	LDA #CHANNEL_STRUCTURE
	ADC zCurrentChannelPointer
	STA zCurrentChannelPointer
	LDA #0
	ADC zCurrentChannelPointer + 1
	STA zCurrentChannelPointer + 1
	RTS

SendBufferToChannel:
	TYA
	PHA
	LDY #0
REPT CHANNEL_STRUCTURE - 1
	LDA zCurrentChannelArea, Y
	STA (zCurrentChannelPointer), Y
	INY
ENDR
	LDA zCurrentChannelArea, Y
	STA (zCurrentChannelPointer), Y
	PLA
	TAY
	RTS

RetrieveChannel:
	TYA
	PHA
	LDY #0
REPT CHANNEL_STRUCTURE - 1
	LDA (zCurrentChannelPointer), Y
	STA zCurrentChannelArea, Y
	INY
ENDR
	LDA (zCurrentChannelPointer), Y
	STA zCurrentChannelArea, Y
	PLA
	TAY
	RTS

ClearChannelBuffer:
	LDA #0
	LDX #CHANNEL_STRUCTURE - 1
@loop:
	STA zCurrentChannelArea, X
	DEX
	BPL @loop
	RTS

InitChannelPointer:
	LDA #<(iChannel01 - CHANNEL_STRUCTURE)
	STA zCurrentChannelPointer
	LDA #>(iChannel01 - CHANNEL_STRUCTURE)
	STA zCurrentChannelPointer + 1
ResetTempChannelInfo:
	LDA zMusicChannelFlags
	ORA zSFXChannelFlags
	STA zCurrentAudioScratchData
	LDA #5
	STA zCurrentAudioScratchData + 1
	RTS

IncChannelPointer:
	LDA #CHANNEL_STRUCTURE
	CLC
	ADC zCurrentChannelPointer
	STA zCurrentChannelPointer
	LDA #0
	ADC zCurrentChannelPointer + 1
	STA zCurrentChannelPointer + 1
ShiftChannelIn:
	DEC zCurrentAudioScratchData + 1
	LSR zCurrentAudioScratchData
	RTS

ChannelAddressZipper:
	TYA
	CLC
	ADC zCurrentChannelArea + CHANNEL_POINTER
	STA zCurrentChannelArea + CHANNEL_POINTER
	LDA #0
	ADC zCurrentChannelArea + CHANNEL_POINTER + 1
	STA zCurrentChannelArea + CHANNEL_POINTER + 1
	RTS

ApplyChannel:
	JSR LoadChannelOffset
	TXA
	ASL A
	TAX
	LDA @Channels + 1, X
	PHA
	LDA @Channels, X
	PHA
	RTS

@Channels:
	dw ApplyNoteEffects - 1
	dw ApplyNoteEffects - 1
	dw ApplyTriangle - 1
	dw ApplyNoise - 1
	dw @Done - 1
	dw ApplyNoteEffects - 1
	dw ApplyNoteEffects - 1
	dw ApplyTriangle - 1
	dw ApplyNoise - 1
	dw @Done - 1

@Done:
	RTS
