CHAN0 = 0
CHAN1 = 1
CHAN2 = 2
CHAN3 = 3
CHAN4 = 4
CHAN5 = 5
CHAN6 = 6
CHAN7 = 7
CHAN8 = 8
CHAN9 = 9

C_ = 1
C# = 2
D_ = 3
D# = 4
E_ = 5
F_ = 6
F# = 7
G_ = 8
G# = 9
A_ = 10
A# = 11
B_ = 12

n_tie = 13
n_cut = %1111

oct_0 = $00
oct_1 = $10
oct_2 = $20
oct_3 = $30
oct_4 = $40
oct_5 = $50
oct_6 = $60
oct_7 = $70

s_rest = $40

; tempo * n_length * n_multi
; -------------------------- = final note length (in frames)
;             256
n_length = $7f
n_multi = $a0

instrument = $c0	; 32 available

; lnr_ratio * final_note_length
; ----------------------------- = triangle audio langth (in frames), set to $81 if > $7f
;              128
lnr_ratio = $c0
sfx_volume = $c0

sound_main_loop_set = $e0	; $e0 ... data ... $00
sound_loop_break = $e1		; still functions as normal loop, but doesn't repeat
sound_loop = $e0		; $e2<>$ff ... data ... $e1

sound_ret = $00

; instrument-allocated effects, pulses only
ins_ret = $00
ins_chorus = $01	; sharpens raw pitch by 1
ins_previbrato = $02	; frames before vibrato begins playing
ins_vibrato = $04	; vibrato settings, both params 0-15
ins_staccato = $08	; pulses may use this like the triangle channel uses $c0-$df
ins_detune = $10	; adds value to decoded pitch, $ff80-$007f (as 1 byte)
ins_transposition = $20	; adds value to encoded pitch
ins_sweep = $40		; in-music pitch sweep
ins_duty_loop = $80	; 4 duty cycles in sequence (1 crumb per duty parameter)

.enum 0
CHANNEL_INSTRUMENT:		.dsb 1
CHANNEL_INSTRUMENT_OFFSET:	.dsb 1
CHANNEL_SONG_ID:		.dsb 1
CHANNEL_SONG_CONFIGURATION:	.dsb 1
CHANNEL_SONG_BANK:		.dsb 1
CHANNEL_POINTER:		.dsb 2
CHANNEL_ENCODED_NOTE:		.dsb 1
CHANNEL_OCTAVE:			.dsb 1
CHANNEL_RAW_PITCH:		.dsb 2
CHANNEL_NOTE_LENGTH:		.dsb 1
CHANNEL_NOTE_LENGTH_MULTIPLIER:	.dsb 1
CHANNEL_TEMPO:			.dsb 1
CHANNEL_NOTE_DURATION:		.dsb 2
CHANNEL_MAIN_LOOP_POINTER:	.dsb 2
CHANNEL_LOOP_POINTER:		.dsb 2
CHANNEL_LOOP_COUNTER:		.dsb 1
CHANNEL_CHORUS:			.dsb 1
CHANNEL_VIBRATO_DELAY:		.dsb 1
CHANNEL_VIBRATO_CREST:		.dsb 1
CHANNEL_VIBRATO_TROPH:		.dsb 1
CHANNEL_VIBRATO_STEP:		.dsb 1
CHANNEL_VIBRATO_DELAY_COUNTER:	.dsb 1
CHANNEL_VIBRATO_STEP_COUNTER:	.dsb 1
CHANNEL_STACCATO:		.dsb 1
CHANNEL_STACCATO_COUNTER:	.dsb 1
CHANNEL_RAW_PITCH_MODIFIER:	.dsb 2
CHANNEL_TRANSPOSITION:		.dsb 1
CHANNEL_SWEEP:			.dsb 1
CHANNEL_DUTY_LOOP_OVERRIDE:	.dsb 1
CHANNEL_STRUCTURE:
.ende

.enum CHANNEL_INSTRUMENT
CHANNEL_DRUM_ID:		.dsb 1
CHANNEL_DRUM_OFFSET:		.dsb 1
.ende

CHANNEL_LINEAR_RATIO = CHANNEL_INSTRUMENT

.enum CHANNEL_VIBRATO_DELAY
CHANNEL_DRUM_NOTE_LENGTH:	.dsb 1
	.dsb 1
CHANNEL_RAW_VOLUME:		.dsb 1
	.dsb 1
CHANNEL_DRUM_NOTE_DURATION:	.dsb 1
.ende

; audio data header bits
PUL1 = $01
PUL2 = $02
TRI = $04
NSE = $08
DPCM = $10

; instrument constants
.enum 0
i_banjo:	.dsb 1
i_harmonica_s:	.dsb 1
i_harmonica_l:	.dsb 1
i_brass_sctn:	.dsb 1
i_sax1:		.dsb 1
i_organ1:	.dsb 1
i_organ1_tie:	.dsb 1
i_sax2:		.dsb 1
i_organ2:	.dsb 1
i_fiddle:	.dsb 1
i_piano:	.dsb 1
i_whistle:	.dsb 1
i_xylophone:	.dsb 1
i_bell:		.dsb 1
i_car1:		.dsb 1
i_car2:		.dsb 1
i_skid1:	.dsb 1
i_skid2:	.dsb 1
i_skid3:	.dsb 1
i_skid4:	.dsb 1
i_bubble:	.dsb 1
.ende
