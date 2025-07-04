Music_GameOver:
	channels_tempo PUL1, PUL2, 0, NSE, DPCM, 164
	dw Music_GameOver_PUL1
	dw Music_GameOver_PUL2
	dw Music_GameOver_NSE
	dw Music_GameOver_DPCM

Music_GameOver_PUL1:
	db	instrument+i_sax1
	db	n_multi+6,	n_length+30,	n_cut
	db	n_multi+4,	n_length+3,	oct_2+G_
	db					oct_2+A#
	db			n_length+6,	oct_2+B_
	db			n_length+3,	n_cut
	db			n_length+8,	oct_2+B_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_3+C#
	db			n_length+2,	n_cut
	db					oct_2+B_
	db					n_cut
	db			n_length+6,	oct_3+C#
	db			n_length+2,	n_cut
	db			n_length+16,	oct_3+D_
	db			n_length+8,	oct_3+D_
	db			n_length+4,	n_cut
	db			n_length+1,	oct_3+D#
	db			n_length+8,	oct_3+E_
	db			n_length+3,	oct_3+C_
	db			n_length+9,	oct_3+E_
	db			n_length+3,	oct_3+C_
	db			n_length+8,	oct_3+F#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_3+F#
	db			n_length+3,	n_cut
	db			n_length+11,	oct_3+G_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_3+A#
	db			n_length+3,	n_cut
	db			n_length+32,	oct_3+A_
	db	sound_ret

Music_GameOver_PUL2:
	db	instrument+i_organ1
	db	n_multi+6,	n_length+22,	n_cut
	db	n_multi+2,	n_length+6,	oct_4+G_
	db			n_length+8,	oct_4+A#
	db					oct_4+B_
	db					oct_5+C_
	db			n_length+16,	oct_5+D_
	db			n_length+8,	n_cut
	db			n_length+15,	oct_5+D_
	db			n_length+5,	oct_4+B_
	db			n_length+4,	oct_4+A#
	db			n_length+16,	oct_4+G_
	db			n_length+26,	n_cut
	db			n_length+6,	oct_4+F_
	db			n_length+2,	oct_4+F#
	db			n_length+16,	oct_4+G_
	db			n_length+6,	oct_4+F_
	db			n_length+2,	oct_4+F#
	db			n_length+14,	oct_4+G_
	db			n_length+8,	oct_4+F_
	db			n_length+16,	oct_4+D_
	db			n_length+8,	oct_4+E_
	db			n_length+16,	oct_4+D_
	db			n_length+8,	oct_4+C_
	db			n_length+17,	oct_4+E_
	db			n_length+11,	oct_4+C_
	db			n_length+14,	n_cut
	db			n_length+6,	oct_3+G_
	db			n_length+16,	oct_3+A#
	db			n_length+8,	n_cut
	db			n_length+16,	oct_3+B_
	db					oct_3+G_
	db					n_cut
	db	instrument+i_sax1
	db	n_multi+4,	n_length+6,	oct_3+F#
	db			n_length+3,	n_cut
	db			n_length+32,	oct_3+F_
	db	sound_ret

Music_GameOver_NSE:
	db	sound_loop+12
	db	n_multi+4,	n_length+4,	$02
	db	sound_loop_break
	db	n_multi+4,	n_length+8,	$01
	db			n_length+4,	$03
	db	sound_loop+2
	db	n_multi+4,	n_length+8,	$02
	db			n_length+4,	$01
	db			n_length+8,	$01
	db			n_length+4,	$01
	db	sound_loop_break
	db	n_multi+4,	n_length+8,	$02
	db			n_length+2,	$01
	db					$02
	db			n_length+8,	$02
	db			n_length+4,	$02
	db			n_length+8,	$03
	db			n_length+4,	$02
	db			n_length+8,	$01
	db			n_length+3,	$01
	db			n_length+1,	$02
	db			n_length+8,	$03
	db			n_length+3,	$01
	db			n_length+1,	$02
	db			n_length+3,	$03
	db			n_length+4,	$02
	db			n_length+1,	$02
	db			n_length+3,	$03
	db			n_length+1,	$02
	db			n_length+7,	$03
	db			n_length+1,	$01
	db	n_length+8,	n_length+28,	$03
	db	sound_ret

Music_GameOver_DPCM:
	db	n_multi+4,	n_length+4,	oct_3+G_
	db					oct_3+F#
	db					oct_3+F_
	db					oct_3+D_
	db					oct_2+A#
	db					oct_2+B_
	db					oct_2+G_
	db					oct_2+F_
	db					oct_2+D_
	db					oct_2+C_
	db					oct_1+A#
	db					oct_1+B_
	db			n_length+8,	oct_1+G_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_1+G_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_1+A_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_1+A_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_1+A#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_1+A#
	db			n_length+2,	n_cut
	db			n_length+12,	oct_1+B_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_1+B_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+C_
	db					n_cut
	db			n_length+8,	oct_2+C_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D_
	db					n_cut
	db			n_length+6,	oct_2+D_
	db			n_length+2,	n_cut
	db			n_length+12,	oct_1+G_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_1+G#
	db			n_length+32,	oct_1+G_
	db			n_length+1,	n_cut
	db	sound_ret
