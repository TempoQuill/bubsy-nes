Music_Goal:
	channels_tempo PUL1, PUL2, TRI, NSE, DPCM, 237
	dw Music_Goal_PUL1
	dw Music_Goal_PUL2
	dw Music_Goal_TRI
	dw Music_Goal_NSE
	dw Music_Goal_DPCM

Music_Goal_PUL1:
	db	instrument+i_organ2
	db	n_multi+2,	n_length+6,	oct_4+C_
	db					oct_4+D_
	db					oct_4+E_
	db					oct_4+F_
	db					oct_4+G_
	db					oct_4+A_
	db					oct_4+B_
	db					oct_5+C_
	db	sound_main_loop_set
	db	instrument+i_organ2
	db	n_multi+6,	n_length+8,	oct_3+C_
	db			n_length+6,	oct_3+G_
	db			n_length+2,	oct_3+F_
	db					oct_3+D#
	db					oct_3+D_
	db			n_length+12,	oct_3+C_
	db			n_length+4,	oct_3+C_
	db					oct_3+C_
	db			n_length+6,	oct_3+G_
	db			n_length+2,	oct_2+G_
	db					oct_2+A#
	db					oct_3+C_
	db					oct_3+D#
	db			n_length+10,	oct_3+C_
	db			n_length+8,	oct_3+C_
	db					oct_2+A#
	db					oct_2+A_
	db					oct_2+G#
	db			n_length+2,	oct_3+G_
	db					oct_3+G_
	db					oct_4+C_
	db					oct_4+C_
	db					oct_4+D_
	db					oct_4+D_
	db					oct_4+E_
	db					oct_4+E_
	db					oct_4+G_
	db					oct_4+G_
	db					oct_5+C_
	db					oct_5+C_
	db					oct_4+B_
	db					oct_4+B_
	db					oct_5+D_
	db					oct_5+D_
	db			n_length+4,	oct_5+C_
	db			n_length+28,	n_cut
	db	sound_ret

Music_Goal_PUL2:
	db	instrument+i_organ2
	db	n_multi+2,	n_length+24,	oct_3+G_
	db			n_length+4,	oct_3+G_
	db					oct_3+A_
	db					oct_3+B_
	db			n_length+6,	oct_3+A_
	db					oct_3+B_
	db	sound_main_loop_set
	db	instrument+i_organ2
	db	n_multi+6,	n_length+4,	n_cut
	db			n_length+4,	oct_4+E_
	db			n_length+2,	oct_4+E_
	db					oct_3+G_
	db					oct_3+A_
	db			n_length+8,	oct_4+C_
	db			n_length+2,	n_cut
	db					oct_3+G_
	db					oct_3+A_
	db					oct_4+C_
	db			n_length+6,	oct_4+D_
	db			n_length+4,	oct_4+E_
	db			n_length+2,	oct_4+E_
	db					oct_3+G_
	db					oct_3+A_
	db			n_length+8,	oct_4+C_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_4+G_
	db					oct_4+F_
	db			n_length+2,	oct_4+E_
	db					oct_4+G_
	db	n_multi+2,	n_length+1,	oct_4+D#
	db			n_length+11,	oct_4+E_
	db			n_length+6,	oct_4+C_
	db			n_length+1,	oct_4+D#
	db			n_length+5,	oct_4+E_
	db	n_multi+6,	n_length+4,	oct_4+C_
	db			n_length+2,	oct_3+G_
	db					oct_3+A_
	db					oct_4+C_
	db					oct_3+G_
	db			n_length+4,	oct_4+E_
	db					oct_4+C_
	db			n_length+2,	oct_3+C_
	db					oct_3+C_
	db					oct_3+E_
	db					oct_3+E_
	db					oct_3+G_
	db					oct_3+G_
	db					oct_4+C_
	db					oct_4+C_
	db					oct_4+D_
	db					oct_4+D_
	db					oct_4+E_
	db					oct_4+E_
	db					oct_4+G_
	db					oct_4+G_
	db					oct_4+B_
	db					oct_4+B_
	db			n_length+4,	oct_5+C_
	db			n_length+22,	n_cut
	db			n_length+2,	oct_2+G_
	db					oct_2+A_
	db					oct_3+C_
	db	sound_ret

Music_Goal_TRI:
	db	lnr_ratio+20
	db	n_multi+2,	n_length+4,	oct_3+C_
	db					oct_3+D_
	db					oct_3+E_
	db					oct_3+F_
	db					oct_3+G_
	db					oct_3+A_
	db					oct_3+B_
	db					oct_4+C_
	db					oct_4+D_
	db					oct_4+E_
	db					oct_4+F_
	db					oct_4+G_
	db	sound_main_loop_set
	db	lnr_ratio+28
	db	n_multi+2,	n_length+6,	oct_5+C_
	db					oct_5+C_
	db					oct_5+C_
	db					oct_5+C_
	db					oct_4+A#
	db					oct_4+A#
	db					oct_4+A#
	db			n_length+12,	oct_4+A_
	db			n_length+6,	oct_4+A_
	db			n_length+18,	oct_4+G_
	db			n_length+6,	oct_4+D_
	db					oct_4+E_
	db					oct_4+G_
	db					oct_5+C_
	db					oct_5+C_
	db					oct_5+C_
	db					oct_5+C_
	db					oct_4+A#
	db					oct_4+A#
	db					oct_4+A#
	db					oct_4+A_
	db					oct_4+A_
	db					oct_4+A_
	db			n_length+12,	oct_4+G_
	db			n_length+6,	oct_4+D#
	db					oct_4+E_
	db					oct_4+G_
	db					oct_4+A_
	db					oct_5+C_
	db					oct_5+C_
	db					oct_5+C_
	db					oct_5+C_
	db					oct_4+A#
	db					oct_4+A#
	db					oct_4+A#
	db			n_length+12,	oct_4+A_
	db			n_length+6,	oct_4+A_
	db			n_length+12,	oct_4+G_
	db			n_length+6,	oct_4+D#
	db					oct_4+E_
	db					oct_4+F_
	db					oct_4+G_
	db					oct_3+C_
	db					oct_3+D_
	db					oct_3+D#
	db					oct_3+E_
	db					oct_3+F_
	db					oct_3+F#
	db					oct_3+G_
	db					oct_3+A#
	db					oct_3+B_
	db					oct_4+D_
	db					oct_4+G_
	db					oct_3+G_
	db					oct_3+B_
	db					oct_4+D_
	db					oct_4+G_
	db					oct_4+A_
	db			n_length+13,	oct_5+C_
	db			n_length+11,	n_cut
	db			n_length+6,	oct_5+D#
	db					oct_5+E_
	db					oct_5+G_
	db					oct_5+C_
	db					oct_4+A#
	db					oct_4+G_
	db					oct_4+A#
	db			n_length+12,	oct_4+B_
	db			n_length+6,	oct_4+A#
	db					oct_4+B_
	db					oct_5+C_
	db	sound_ret

Music_Goal_NSE:
	db	n_multi+2,	n_length+18,	$03
	db			n_length+6,	$03
	db			n_length+4,	$02
	db					$02
	db					$02
	db					$02
	db			n_length+2,	$03
	db			n_length+6,	$02
	db	sound_main_loop_set
	db	n_multi+2,	n_length+6,	$01
	db					$03
	db					$03
	db					$01
	db					$02
	db					$03
	db					$03
	db					$01
	db					$03
	db					$01
	db					$03
	db					$01
	db					$02
	db					$03
	db					$03
	db					$02
	db					$01
	db					$03
	db					$03
	db					$01
	db					$02
	db					$03
	db					$03
	db					$01
	db					$03
	db					$01
	db					$03
	db					$01
	db					$02
	db					$03
	db					$02
	db					$02
	db					$01
	db					$03
	db					$03
	db					$01
	db					$02
	db					$03
	db					$03
	db					$02
	db					$01
	db					$03
	db					$03
	db					$01
	db					$02
	db					$03
	db					$02
	db					$02
	db	n_multi+4,	n_length+25,	$01
	db	n_multi+2,	n_length+2,	$02
	db			n_length+3,	$02
	db			n_length+7,	$02
	db			n_length+8,	$02
	db			n_length+3,	$02
	db			n_length+6,	$02
	db					$02
	db			n_length+6,	$02
	db			n_length+5,	$02
	db			n_length+1,	$03
	db			n_length+23,	$02
	db			n_length+24,	$03
	db			n_length+30,	$03
	db			n_length+1,	$03
	db			n_length+5,	$02
	db			n_length+1,	$03
	db			n_length+5,	$02
	db			n_length+1,	$03
	db			n_length+5,	$01
	db	sound_ret

Music_Goal_DPCM:
	db	n_multi+2,	n_length+4,	oct_3+C_
	db					oct_2+B_
	db					oct_2+A_
	db					oct_2+G_
	db					oct_2+F_
	db					oct_2+E_
	db					oct_2+D_
	db					oct_2+C_
	db					oct_1+B_
	db					oct_1+A_
	db					oct_1+G_
	db					oct_1+F_
	db	sound_main_loop_set
	db	n_multi+2,	n_length+6,	oct_1+C_
	db					oct_2+C_
	db					oct_1+C_
	db					oct_2+C_
	db					oct_1+E_
	db					oct_2+E_
	db					oct_1+E_
	db					oct_1+F_
	db					oct_2+F_
	db					oct_1+F_
	db					oct_1+G_
	db					oct_2+G_
	db			n_length+24,	n_cut
	db			n_length+6,	oct_1+C_
	db					oct_2+C_
	db					oct_1+C_
	db					oct_2+C_
	db					oct_1+E_
	db					oct_2+E_
	db					oct_1+E_
	db					oct_1+F_
	db					oct_1+F_
	db					oct_2+F_
	db					oct_2+G_
	db			n_length+30,	n_cut
	db			n_length+6,	oct_1+C_
	db					oct_2+C_
	db					oct_1+C_
	db					oct_2+C_
	db					oct_1+E_
	db					oct_2+E_
	db					oct_2+E_
	db					oct_1+F_
	db					oct_2+F_
	db					oct_1+F_
	db					oct_1+G_
	db					oct_2+G_
	db			n_length+24,	n_cut
	db			n_length+6,	oct_3+C_
	db					oct_2+B_
	db					oct_2+A#
	db					oct_2+A_
	db					oct_2+G#
	db					oct_2+G_
	db					oct_2+F#
	db					oct_2+G_
	db					oct_1+G_
	db					oct_2+G_
	db					oct_1+G_
	db					oct_2+G_
	db					oct_1+G_
	db					oct_2+G_
	db					oct_1+G_
	db					oct_2+G_
	db			n_length+11,	oct_2+C_
	db			n_length+1,	n_cut
	db	n_multi+6,	n_length+22,	n_cut
	db	n_multi+2,	n_length+8,	oct_2+C#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+C_
	db	sound_ret
