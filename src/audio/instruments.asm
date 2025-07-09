PulseInstruments:
	dw PulseBanjo
	dw PulseHarmonicaSoft
	dw PulseHarmonicaLoud
	dw PulseBrassSection
	dw PulseSaxophone
	dw PulseOrgan
	dw PulseOrgan
	dw PulseSaxophone
	dw PulseOrgan
	dw PulseFiddle
	dw PulsePiano
	dw PulseWhistle
	dw PulseXylophone
	dw PulseBoxingBell
	dw PulseCarHorn1
	dw PulseCarHorn2
	dw PulseSkid1
	dw PulseSkid2
	dw PulseSkid3
	dw PulseSkid4
	dw PulseSkid1

PulseEffects:
	dw EffectBanjo
	dw EffectHarmonica
	dw EffectHarmonica
	dw EffectBrassSection
	dw EffectNone ; saxophone
	dw EffectOrgan1
	dw EffectOrgan2
	dw EffectSaxophone
	dw EffectOrgan3
	dw EffectNone ; fiddle
	dw EffectPiano ; piano
	dw EffectNone ; whistle
	dw EffectNone ; xylophone
	dw EffectSFX ; boxing bell
	dw EffectNone ; car horn 1
	dw EffectNone ; car horn 2
	dw EffectSkid ; skid 1
	dw EffectSkid ; skid 2
	dw EffectSkid ; skid 3
	dw EffectSkid ; skid 4
	dw EffectMelting

EffectBanjo:
EffectOrgan2:
	db	ins_chorus,1
	db	ins_ret

PulseBanjo:
	db	$1c
	db	$18
	db	$17
	db	$16
	db	$15
	db	$14,$14,$14
	db	$13,$13,$13
	db	$12,$12,$12
	db	$11,$11
	db	$10
	db	ins_ret

EffectHarmonica:
	db	ins_previbrato,15
	db	ins_vibrato,$44 ; delay: 15 frames, crest/troph diff: 4, period: 4 frames
	db	ins_ret

PulseHarmonicaSoft:
@A:
	db	$91
	db	$53
	db	$54
	db	$55
@B:
	db	$54
	db	$55
	db	$54
	db	$54,$54
	db	$54
	db	$53
	db	sound_loop | (@B - @A)

PulseHarmonicaLoud:
@A:
	db	$92
	db	$56
	db	$5a
	db	$5c
@B:
	db	$5b
	db	$5c
	db	$5b
	db	$5a,$5a
	db	$59
	db	$5a
	db	sound_loop | (@B - @A)

EffectBrassSection:
	db	ins_detune,$ff
	db	ins_duty_loop,$41 ; duty sqnc. 1 0 0 1
	db	ins_ret

PulseBrassSection:
	db	$15
	db	$13
	db	$18,$18,$18,$18
	db	$17,$17,$17,$17,$17,$17,$17
	db	$16,$16,$16,$16,$16,$16,$16
	db	$15,$15,$15,$15,$15
	db	$14,$14,$14,$14
	db	$11,$11,$11,$11
	db	$10
	db	ins_ret

EffectNone:
	db	ins_ret

EffectSaxophone:
	db	ins_previbrato,22
	db	ins_vibrato,$35
	db	ins_ret

PulseSaxophone:
@A:
	db	$54
	db	$5a
	db	$58
	db	$57,$57
	db	$56,$56,$56,$56
@B:
	db	$55,$55,$55
	db	$56
	db	$55
	db	$56
	db	$55
	db	$56
	db	$55
	db	$54
	db	$55
	db	$54
	db	$55
	db	$54
	db	$55
	db	$54
	db	$55
	db	$54
	db	$55,$55
	db	$54
	db	sound_loop | (@B - @A)

EffectOrgan1:
	db	ins_chorus,1
	db	ins_staccato,$f0
	db	ins_ret

EffectOrgan3:
	db	ins_chorus,1
	db	ins_staccato,$f0
	db	ins_previbrato,13
	db	ins_vibrato,$34
	db	ins_ret

PulseOrgan:
@A:
	db	$1f
	db	$1c
@B:
	db	$59
	db	$58,$58
	db	$59,$59,$59,$59,$59,$59,$59,$59,$59,$59,$59
	db	sound_loop | (@B - @A)

PulseFiddle:
	db	$d7
	db	$df
	db	$d8
	db	$d5
	db	$d4
	db	$d2
	db	$d1,$d1
	db	$d0
	db	ins_ret

EffectPiano:
	db	ins_staccato,$e8
	db	ins_detune,$ff
	db	ins_ret

PulsePiano:
@A:
	db	$9f
	db	$5c
	db	$5b
	db	$5a
	db	$59
	db	$58
	db	$57
@B:
	db	$56
	db	$55,$55
	db	$54,$54,$54
	db	$53,$53,$53,$53,$53
	db	$52,$52
	db	sound_loop | (@B - @A)

PulseWhistle:
@A:
	db	$94
@B:
	db	$96,$96
	db	$95
	db	$96
	db	$95
	db	$96
	db	sound_loop | (@B - @A)

EffectSFX:
	db	ins_staccato,$f0
	db	ins_ret

PulseXylophone:
	db	$9f
	db	$97
	db	$93
	db	$91
	db	$90
	db	ins_ret

PulseBoxingBell:
	db	$9f
	db	$9d
	db	$9b
	db	$9a
	db	$99,$99
	db	$98,$98
	db	$97,$97,$97
	db	$96,$96,$96
	db	$95,$95,$95,$95
	db	$94,$94,$94,$94
	db	$93,$93,$93,$93,$93
	db	$92,$92,$92,$92,$92
	db	$91,$91,$91,$91,$91,$91
	db	$90
	db	ins_ret

PulseCarHorn1:
	db	$15
	db	$1a
	db	$1f
	db	$1a
	db	$15
	db	$11,$11,$11,$11
	db	$10
	db	ins_ret

PulseCarHorn2:
	db	$55
	db	$5a
	db	$5f
	db	$5a
	db	$55
	db	$51,$51,$51,$51
	db	$10
	db	ins_ret

EffectSkid:
	db	ins_sweep,$85 ; down, period 8 (16 - period), depth 3 (8 - depth[nonzero])
	db	ins_duty_loop,$6e
	db	ins_ret

PulseSkid1:
	db	$1f,$1f,$1f,$1f
	db	ins_ret

PulseSkid2:
	db	$15,$15,$15,$15
	db	ins_ret

PulseSkid3:
	db	$12,$12,$12,$12
	db	ins_ret

PulseSkid4:
	db	$11,$11,$11,$11
	db	ins_ret

EffectMelting:
	db	ins_sweep,$8a
	db	ins_duty_loop,$aa
	db	ins_ret
