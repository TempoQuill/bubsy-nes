MACRO dpcm_entry pitch, lower, upper
	.db pitch			; pitch
	.db PRG_DPCM + (lower >> 9)	; bank
	.db (lower >> 2) & $7f		; start
	.db upper - lower		; length
ENDM

MACRO dpcm_fill
	dpcm_entry 15, $21fc, $21fc ; 0f fe 7f 00
ENDM

; $00-$4f - music samples
; $50-$5f - sound effect samples
; $60-$7f - title card lines
MusicDPCMSampleTable:
	dpcm_fill
	dpcm_fill
	dpcm_fill
	dpcm_fill
	dpcm_fill
	dpcm_fill
	dpcm_fill
	dpcm_fill
	dpcm_fill
	dpcm_fill
	dpcm_entry	0,	DMC_GTR_1,		DMC_GTR_1_END
	dpcm_entry	0,	DMC_GTR_2,		DMC_GTR_2_END
	dpcm_entry	0,	DMC_GTR_3,		DMC_GTR_3_END
	dpcm_fill
	dpcm_fill
	dpcm_fill

	dpcm_fill
	dpcm_entry	0,	DMC_GTR_4,		DMC_GTR_4_END
	dpcm_entry	0,	DMC_GTR_5,		DMC_GTR_5_END
	dpcm_entry	1,	DMC_GTR_4,		DMC_GTR_4_END
	dpcm_entry	1,	DMC_GTR_5,		DMC_GTR_5_END
	dpcm_entry	2,	DMC_GTR_4,		DMC_GTR_4_END
	dpcm_entry	2,	DMC_GTR_5,		DMC_GTR_5_END
	dpcm_entry	3,	DMC_GTR_5,		DMC_GTR_5_END
	dpcm_entry	4,	DMC_GTR_4,		DMC_GTR_4_END
	dpcm_entry	4,	DMC_GTR_5,		DMC_GTR_5_END
	dpcm_entry	5,	DMC_GTR_4,		DMC_GTR_4_END
	dpcm_entry	5,	DMC_GTR_5,		DMC_GTR_5_END
	dpcm_entry	6,	DMC_GTR_4,		DMC_GTR_4_END
	dpcm_fill
	dpcm_fill
	dpcm_fill

	dpcm_fill
	dpcm_entry	6,	DMC_GTR_5,		DMC_GTR_5_END
	dpcm_entry	7,	DMC_GTR_5,		DMC_GTR_5_END
	dpcm_entry	8,	DMC_GTR_4,		DMC_GTR_4_END
	dpcm_entry	8,	DMC_GTR_5,		DMC_GTR_5_END
	dpcm_entry	9,	DMC_GTR_3,		DMC_GTR_3_END
	dpcm_entry	9,	DMC_GTR_4,		DMC_GTR_4_END
	dpcm_entry	9,	DMC_GTR_5,		DMC_GTR_5_END
	dpcm_entry	10,	DMC_GTR_4,		DMC_GTR_4_END
	dpcm_entry	10,	DMC_GTR_5,		DMC_GTR_5_END
	dpcm_entry	11,	DMC_GTR_4,		DMC_GTR_4_END
	dpcm_entry	11,	DMC_GTR_5,		DMC_GTR_5_END
	dpcm_entry	12,	DMC_GTR_3,		DMC_GTR_3_END
	dpcm_fill
	dpcm_fill
	dpcm_fill

	dpcm_fill
	dpcm_entry	12,	DMC_GTR_4,		DMC_GTR_4_END
	dpcm_entry	12,	DMC_GTR_5,		DMC_GTR_5_END
	dpcm_entry	13,	DMC_GTR_2,		DMC_GTR_2_END
	dpcm_entry	13,	DMC_GTR_3,		DMC_GTR_3_END
	dpcm_entry	13,	DMC_GTR_4,		DMC_GTR_4_END
	dpcm_entry	13,	DMC_GTR_5,		DMC_GTR_5_END
	dpcm_entry	14,	DMC_GTR_3,		DMC_GTR_3_END
	dpcm_entry	14,	DMC_GTR_4,		DMC_GTR_4_END
	dpcm_entry	14,	DMC_GTR_5,		DMC_GTR_5_END
	dpcm_entry	15,	DMC_GTR_1,		DMC_GTR_1_END
	dpcm_entry	15,	DMC_GTR_2,		DMC_GTR_2_END
	dpcm_entry	15,	DMC_GTR_3,		DMC_GTR_3_END
	dpcm_fill
	dpcm_fill
	dpcm_fill
SFXDPCMSampleTable:
	dpcm_fill
	dpcm_entry	15,	DMC_GTR_4,		DMC_GTR_4_END
	dpcm_entry	15,	DMC_GTR_5,		DMC_GTR_5_END
	dpcm_fill
	dpcm_fill
	dpcm_fill
	dpcm_fill
	dpcm_fill
	dpcm_fill
	dpcm_fill
	dpcm_fill
	dpcm_fill
	dpcm_fill
	dpcm_fill
	dpcm_fill
	dpcm_fill

	; normal sound effects
	dpcm_entry	15,	DMC_EGG_BOUNCE,		DMC_EGG_BOUNCE_END
	dpcm_entry	15,	DMC_ACCORDIAN_GAG,	DMC_ACCORDIAN_GAG_END
	dpcm_entry	14,	DMC_ACCORDIAN_GAG,	DMC_ACCORDIAN_GAG_END
	dpcm_entry	15,	DMC_SHAKE_DRY,		DMC_SHAKE_DRY_END
	dpcm_entry	15,	DMC_FALLING_PIANO,	DMC_FALLING_PIANO_END
	dpcm_entry	14,	DMC_FALLING_PIANO,	DMC_FALLING_PIANO_END
	dpcm_entry	13,	DMC_FALLING_PIANO,	DMC_FALLING_PIANO_END
	dpcm_entry	12,	DMC_FALLING_PIANO,	DMC_FALLING_PIANO_END
	dpcm_entry	11,	DMC_FALLING_PIANO,	DMC_FALLING_PIANO_END
	dpcm_entry	15,	DMC_SHATTER,		DMC_SHATTER_END
	dpcm_entry	15,	DMC__HELLO_,		DMC__HELLO__END
	dpcm_entry	15,	DMC_BOTTOMLESS_PIT_1,	DMC_BOTTOMLESS_PIT_1_END
	dpcm_entry	15,	DMC_BOTTOMLESS_PIT_2,	DMC_BOTTOMLESS_PIT_2_END
	dpcm_entry	15,	DMC__YIKES_,		DMC__YIKES__END
	dpcm_entry	15,	DMC__YOW_,		DMC__YOW__END
	dpcm_fill
	; title card lines
	; What could possibly go wrong?
	dpcm_entry	15,	DMC_START_WCPGW,	DMC_START_WCPGW_END
	dpcm_entry	15,	DMC_END_WCPGW,		DMC_END_WCPGW_END
	; Did... I mention I don't like heights?
	dpcm_entry	15,	DMC_START_DIMIDLH,	DMC_START_DIMIDLH_END
	dpcm_entry	15,	DMC_END_DIMIDLH,	DMC_END_DIMIDLH_END
	; More like a bridge too short...
	dpcm_entry	15,	DMC_START_MLABTS,	DMC_START_MLABTS_END
	dpcm_entry	15,	DMC_END_MLABTS,		DMC_END_MLABTS_END
	; Hey, whatever blows your hair back.
	dpcm_entry	15,	DMC_START_HWBYHB,	DMC_START_HWBYHB_END
	dpcm_entry	15,	DMC_END_HWBYHB,		DMC_END_HWBYHB_END
	; Hey I thought I saw Elvis back there!
	dpcm_entry	15,	DMC_START_HITISEBT,	DMC_START_HITISEBT_END
	dpcm_entry	15,	DMC_END_HITISEBT,	DMC_END_HITISEBT_END
	; Shouldn't that be fearless?  Uh oh...
	dpcm_entry	15,	DMC_START_STBFUO,	DMC_START_STBFUO_END
	dpcm_entry	15,	DMC_END_STBFUO,		DMC_END_STBFUO_END
	; Well, it worked for Clint.
	dpcm_entry	15,	DMC_START_WIWFC,	DMC_START_WIWFC_END
	dpcm_entry	15,	DMC_END_WIWFC,		DMC_END_WIWFC_END
	; Go ahead; make my day.
	dpcm_entry	15,	DMC_START_GAMMD,	DMC_START_GAMMD_END
	dpcm_entry	15,	DMC_END_GAMMD,		DMC_END_GAMMD_END
	; My contract does NOT mention pain!
	dpcm_entry	15,	DMC_START_MCDNMP,	DMC_START_MCDNMP_END
	dpcm_entry	15,	DMC_END_MCDNMP,		DMC_END_MCDNMP_END
	; Hey, I didn't write this stuff!
	dpcm_entry	15,	DMC_START_HIDWTS,	DMC_START_HIDWTS_END
	dpcm_entry	15,	DMC_END_HIDWTS,		DMC_END_HIDWTS_END
	; Next time, I get a stunt cat!
	dpcm_entry	15,	DMC_START_NTIGASC,	DMC_START_NTIGASC_END
	dpcm_entry	15,	DMC_END_NTIGASC,	DMC_END_NTIGASC_END
	; Is there a veterinarian in the audience?!
	dpcm_entry	15,	DMC_START_ITAVITA,	DMC_START_ITAVITA_END
	dpcm_entry	15,	DMC_END_ITAVITA,	DMC_END_ITAVITA_END
	; That's it; I'm outta here!  You can't make me...
	dpcm_entry	15,	DMC_START_TIIOHYCMM,	DMC_START_TIIOHYCMM_END
	dpcm_entry	15,	DMC_END_TIIOHYCMM,	DMC_END_TIIOHYCMM_END
	; What?  And give up show business?
	dpcm_entry	15,	DMC_START_WAGUSB,	DMC_START_WAGUSB_END
	dpcm_entry	15,	DMC_END_WAGUSB,		DMC_END_WAGUSB_END
	; Somebody dial 911!
	dpcm_entry	15,	DMC_START_SD911,	DMC_START_SD911_END
	dpcm_entry	15,	DMC_END_SD911,		DMC_END_SD911_END
	; Whoa!  Are you still PLAYING this thing?!?
	dpcm_entry	15,	DMC_START_WAYSPTT,	DMC_START_WAYSPTT_END
	dpcm_entry	15,	DMC_END_WAYSPTT,	DMC_END_WAYSPTT_END
