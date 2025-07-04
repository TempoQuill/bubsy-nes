Music_Invincible:
	channels_tempo 0, PUL2, 0, NSE, DPCM, 197
	dw Music_Invincible_PUL2
	dw Music_Invincible_NSE
	dw Music_Invincible_DPCM

Music_Invincible_PUL2:
	db	instrument+i_organ1
	db	sound_loop+8
	db	n_multi+2,	n_length+6,	oct_3+D#
	db					oct_3+E_
	db					oct_3+D#
	db					oct_3+D_
	db					oct_3+C#
	db					oct_3+C_
	db					oct_3+C#
	db					oct_3+D_
	db	sound_loop_break
	db	sound_loop+4
	db	n_multi+2,	n_length+6,	oct_3+D#
	db					oct_3+E_
	db					oct_3+F_
	db					oct_3+F#
	db					oct_3+G_
	db					oct_3+F#
	db					oct_3+F_
	db					oct_3+E_
	db	sound_loop_break
	db	sound_loop+2
	db	n_multi+2,	n_length+6,	oct_3+F#
	db					oct_3+G_
	db					oct_3+G#
	db					oct_3+A_
	db					oct_3+A#
	db					oct_3+A_
	db					oct_3+G#
	db					oct_3+G_
	db	sound_loop_break
	db	n_multi+2,	n_length+6,	oct_3+F#
	db					oct_3+G_
	db					oct_3+G#
	db					oct_3+A_
	db					oct_3+A#
	db					oct_3+A_
	db					oct_3+A#
	db					oct_3+B_
	db					oct_4+C_
	db					oct_3+B_
	db					oct_4+C_
	db					oct_4+C#
	db					oct_4+D_
	db					oct_4+C#
	db					oct_4+D_
	db					oct_4+D#
	db	sound_ret

Music_Invincible_NSE:
	db	sound_loop+7
	db	n_multi+2,	n_length+6,	$01
	db					$03
	db					$02
	db					$01
	db					$05
	db					$01
	db					$02
	db					$02
	db					$01
	db					$03
	db					$02
	db					$01
	db					$05
	db					$01
	db					$02
	db					$03
	db	sound_loop_break
	db	sound_loop+8
	db	n_multi+2,	n_length+6,	$02
	db					$01
	db	sound_loop_break
	db	sound_ret

Music_Invincible_DPCM:
	db	sound_loop+3
	db	n_multi+2,	n_length+12,	oct_2+C_
	db			n_length+6,	n_cut
	db					oct_2+C_
	db					n_cut
	db					oct_2+C_
	db					n_cut
	db					oct_2+C_
	db			n_length+12,	oct_2+C#
	db			n_length+6,	n_cut
	db					oct_2+C#
	db					n_cut
	db					oct_2+C#
	db					n_cut
	db					oct_2+C#
	db			n_length+12,	oct_2+D_
	db			n_length+6,	n_cut
	db					oct_2+D_
	db					n_cut
	db					oct_2+D_
	db					n_cut
	db					oct_2+D_
	db			n_length+9,	oct_2+D#
	db					n_cut
	db			n_length+6,	oct_2+D#
	db					n_cut
	db					oct_2+D#
	db					n_cut
	db					oct_2+D#
	db	sound_loop_break
	db	n_multi+2,	n_length+6,	oct_2+C_
	db					oct_2+C_
	db					n_cut
	db					oct_2+C_
	db					n_cut
	db					oct_2+C_
	db					n_cut
	db					oct_2+C_
	db					oct_2+C#
	db					oct_2+C#
	db					n_cut
	db					oct_2+C#
	db					n_cut
	db					oct_2+C#
	db					n_cut
	db					oct_2+C#
	db					oct_2+D_
	db					oct_2+D_
	db					n_cut
	db					oct_2+D_
	db					n_cut
	db					oct_2+D_
	db					n_cut
	db					oct_2+D_
	db					oct_2+D#
	db					oct_2+D#
	db					n_cut
	db					oct_2+D#
	db					n_cut
	db					oct_2+D#
	db					n_cut
	db					oct_2+D#
	db	sound_ret
