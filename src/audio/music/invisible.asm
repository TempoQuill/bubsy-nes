Music_Invisible:
	channels_tempo PUL1, PUL2, 0, NSE, DPCM, 218
	dw Music_Invisible_PUL1
	dw Music_Invisible_PUL2
	dw Music_Invisible_NSE
	dw Music_Invisible_DPCM

Music_Invisible_PUL1:
	db	instrument+i_organ2
	db	n_multi+4,	n_length+24,	n_cut
	db					n_cut
	db					n_cut
	db					n_cut
	db			n_length+6,	n_cut
	db			n_length+3,	oct_4+F#
	db					n_cut
	db			n_length+4,	oct_4+F#
	db			n_length+2,	oct_4+F_
	db			n_length+6,	n_cut
	db			n_length+3,	oct_4+D#
	db					n_cut
	db			n_length+4,	oct_4+D#
	db			n_length+2,	oct_4+C_
	db			n_length+18,	n_cut
	db			n_length+3,	oct_4+F#
	db					n_cut
	db			n_length+4,	oct_4+F#
	db			n_length+2,	oct_4+F_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+D#
	db			n_length+4,	n_cut
	db					oct_4+D#
	db			n_length+2,	oct_4+C_
	db			n_length+16,	n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+3,	oct_4+D#
	db					n_cut
	db					oct_4+D#
	db			n_length+1,	n_cut
	db			n_length+3,	oct_4+C_
	db					n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+3,	oct_4+F_
	db					n_cut
	db					oct_4+F_
	db			n_length+1,	n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+5,	oct_4+F#
	db					n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+3,	oct_4+D#
	db					n_cut
	db					oct_4+D#
	db			n_length+1,	n_cut
	db			n_length+3,	oct_4+C_
	db					n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+3,	oct_4+F_
	db					n_cut
	db			n_length+4,	oct_4+F_
	db			n_length+3,	oct_4+C_
	db					n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+3,	oct_4+F#
	db			n_length+7,	n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+3,	oct_4+D#
	db					n_cut
	db			n_length+4,	oct_4+D#
	db			n_length+3,	oct_4+C_
	db					n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+3,	oct_4+F_
	db					n_cut
	db			n_length+4,	oct_4+F_
	db			n_length+2,	oct_4+C_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+3,	oct_4+F#
	db			n_length+9,	n_cut
	db			n_length+2,	oct_4+G_
	db					oct_4+F#
	db					oct_4+F_
	db					oct_4+G_
	db					oct_4+F#
	db					oct_4+F_
	db					oct_4+D#
	db					oct_4+F_
	db					oct_4+D#
	db					oct_4+C_
	db					oct_4+D#
	db					oct_4+C_
	db					oct_3+A#
	db					oct_4+C_
	db					oct_3+A#
	db					oct_3+G_
	db					oct_3+A#
	db					oct_3+G_
	db					oct_3+F#
	db					oct_3+F_
	db					oct_3+D#
	db	sound_ret

Music_Invisible_PUL2:
	db	sound_loop+8
	db	instrument+i_organ1
	db	n_multi+4,	n_length+22,	oct_4+D#
	db			n_length+4,	oct_4+C_
	db			n_length+16,	n_cut
	db			n_length+2,	oct_4+D_
	db					oct_4+D#
	db					oct_4+F_
	db	sound_loop_break
	db	sound_ret

Music_Invisible_NSE:
	db	sound_loop+3
	db	n_multi+4,	n_length+2,	$01
	db					$05
	db					$05
	db					$02
	db					$03
	db					$01
	db					$04
	db					$04
	db					$01
	db					$02
	db					$03
	db					$03
	db	sound_loop_break
	db	n_multi+4,	n_length+2,	$01
	db					$05
	db					$01
	db					$02
	db					$03
	db					$01
	db					$04
	db					$04
	db					$01
	db					$02
	db					$03
	db					$03
	db	sound_loop+3
	db	n_multi+4,	n_length+2,	$01
	db					$05
	db					$05
	db					$02
	db					$03
	db					$01
	db					$04
	db					$04
	db					$01
	db					$02
	db					$03
	db					$03
	db	sound_loop_break
	db	n_multi+4,	n_length+2,	$01
	db					$05
	db					$05
	db					$02
	db					$03
	db					$01
	db					$04
	db					$04
	db					$01
	db					$02
	db					$03
	db					$01
	db	sound_loop+8
	db	n_multi+4,	n_length+2,	$01
	db					$05
	db					$05
	db					$02
	db					$03
	db					$01
	db					$04
	db					$04
	db					$01
	db					$02
	db					$03
	db					$03
	db	sound_loop_break
	db	sound_ret

Music_Invisible_DPCM:
	db	sound_loop+7
	db	n_multi+4,	n_length+6,	oct_2+C_
	db					oct_2+D_
	db					oct_2+D#
	db					oct_2+E_
	db					oct_2+F_
	db					oct_2+E_
	db					oct_2+D#
	db					oct_2+D_
	db	sound_loop_break
	db	n_multi+4,	n_length+6,	oct_2+C_
	db					oct_2+D_
	db					oct_2+D#
	db					oct_2+E_
	db					oct_2+F_
	db					oct_2+E_
	db					oct_2+D#
	db			n_length+4,	oct_2+D_
	db			n_length+2,	n_cut
	db	sound_ret
