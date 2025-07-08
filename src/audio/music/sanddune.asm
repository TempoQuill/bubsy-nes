Music_SandDune:
	channels_tempo PUL1, PUL2, TRI, NSE, DPCM, 151
	dw Music_SandDune_PUL1
	dw Music_SandDune_PUL2
	dw Music_SandDune_TRI
	dw Music_SandDune_NSE
	dw Music_SandDune_DPCM

Music_SandDune_PUL1:
	db	sound_main_loop_set
	db	instrument+i_organ2
	db	n_multi+6,	n_length+32,	n_cut
	db			n_length+21,	n_cut
	db	n_multi+8,	n_length+2,	oct_3+A#
	db					oct_4+C_
	db					oct_3+A#
	db			n_length+4,	oct_4+C_
	db			n_length+22,	n_cut
	db	n_multi+2,	n_length+1,	n_cut
	db	n_multi+6,	n_length+32,	n_cut
	db	sound_ret

Music_SandDune_PUL2:
	db	sound_main_loop_set
	db	instrument+i_organ2
	db	n_multi+8,	n_length+2,	oct_4+G_
	db			n_length+4,	n_cut
	db					oct_4+G_
	db			n_length+14,	oct_4+E_
	db			n_length+6,	n_cut
	db			n_length+4,	oct_3+A#
	db			n_length+4,	oct_3+A_
	db					n_cut
	db					oct_3+A_
	db					oct_3+G_
	db					n_cut
	db					oct_3+G_
	db					oct_3+F_
	db					n_cut
	db					oct_3+F_
	db			n_length+16,	oct_3+E_
	db			n_length+10,	n_cut
	db			n_length+4,	oct_4+G_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_4+D#
	db			n_length+16,	oct_4+E_
	db			n_length+4,	n_cut
	db					oct_3+A#
	db					oct_3+A_
	db					n_cut
	db					oct_3+A_
	db					oct_3+G_
	db					n_cut
	db					oct_3+F_
	db			n_length+16,	oct_3+G_
	db			n_length+22,	n_cut
	db	sound_ret

Music_SandDune_TRI:
	db	sound_main_loop_set
	db	lnr_ratio+31
	db	n_multi+2,	n_length+2,	oct_5+D#
	db			n_length+22,	oct_5+E_
	db			n_length+24,	oct_5+F_
	db	n_multi+6,	n_length+13,	oct_5+G_
	db	n_multi+2,	n_length+9,	oct_5+C_
	db			n_length+15,	oct_6+C_
	db			n_length+23,	oct_5+A#
	db			n_length+2,	oct_5+G#
	db			n_length+24,	oct_5+A_
	db			n_length+8,	oct_5+G_
	db			n_length+7,	oct_5+F_
	db			n_length+8,	n_cut
	db			n_length+9,	oct_5+C_
	db			n_length+2,	oct_5+D#
	db			n_length+22,	oct_5+E_
	db			n_length+24,	oct_5+F_
	db			n_length+28,	oct_5+G_
	db			n_length+11,	n_cut
	db			n_length+5,	oct_5+D#
	db			n_length+19,	oct_5+E_
	db			n_length+14,	oct_5+C_
	db			n_length+10,	n_cut
	db			n_length+24,	oct_4+A#
	db			n_length+9,	oct_4+G_
	db			n_length+15,	oct_5+D#
	db			n_length+9,	oct_5+C_
	db	sound_ret

Music_SandDune_NSE:
	db	sound_main_loop_set
	db	n_multi+2,	n_length+16,	$01
	db			n_length+8,	$03
	db			n_length+17,	$02
	db			n_length+8,	$03
	db					$03
	db					$03
	db					$03
	db			n_length+16,	$03
	db			n_length+7,	$03
	db			n_length+17,	$01
	db			n_length+7,	$03
	db			n_length+17,	$02
	db			n_length+8,	$03
	db			n_length+16,	$03
	db			n_length+8,	$03
	db			n_length+16,	$03
	db			n_length+7,	$03
	db	sound_loop+3
	db	n_multi+2,	n_length+17,	$01
	db			n_length+7,	$03
	db			n_length+17,	$02
	db			n_length+8,	$03
	db					$03
	db					$03
	db					$03
	db			n_length+16,	$03
	db			n_length+7,	$03
	db			n_length+17,	$01
	db			n_length+7,	$03
	db			n_length+17,	$02
	db			n_length+8,	$03
	db			n_length+16,	$03
	db			n_length+8,	$03
	db			n_length+16,	$03
	db			n_length+7,	$03
	db	sound_loop_break
	db	sound_ret

Music_SandDune_DPCM:
	db	sound_main_loop_set
	db	n_multi+8,	n_length+2,	oct_2+C_
	db					n_cut
	db					oct_2+C_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_1+A#
	db					oct_2+A#
	db					oct_1+B_
	db					oct_2+C_
	db			n_length+4,	oct_3+C_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+4,	oct_3+C_
	db			n_length+2,	oct_2+D#
	db					oct_3+D#
	db					oct_2+E_
	db					oct_2+F_
	db			n_length+4,	oct_3+F_
	db			n_length+2,	oct_1+A#
	db					oct_1+B_
	db					n_cut
	db			n_length+4,	oct_2+C_
	db			n_length+2,	n_cut
	db					oct_1+A#
	db					oct_2+C_
	db					n_cut
	db					oct_2+D#
	db					oct_3+D#
	db					n_cut
	db					oct_3+D#
	db			n_length+10,	n_cut
	db			n_length+2,	oct_2+A#
	db			n_length+4,	oct_3+D#
	db			n_length+2,	oct_2+A#
	db			n_length+4,	oct_1+A#
	db			n_length+2,	n_cut
	db					oct_2+C_
	db					n_cut
	db					oct_2+C_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_1+A#
	db			n_length+4,	oct_1+B_
	db					oct_2+C_
	db					n_cut
	db					oct_3+C_
	db			n_length+2,	oct_3+D#
	db			n_length+4,	n_cut
	db			n_length+2,	oct_2+D#
	db					oct_3+D#
	db					oct_2+E_
	db					oct_2+F_
	db			n_length+4,	oct_3+F_
	db			n_length+2,	oct_1+A#
	db					oct_1+B_
	db					n_cut
	db			n_length+4,	oct_2+C_
	db			n_length+2,	n_cut
	db					oct_1+A#
	db					oct_2+C_
	db					n_cut
	db					oct_2+D#
	db					oct_3+D#
	db					n_cut
	db					oct_3+D#
	db			n_length+10,	n_cut
	db			n_length+2,	oct_2+A#
	db			n_length+4,	oct_3+D#
	db			n_length+2,	oct_2+A#
	db			n_length+4,	oct_1+A#
	db			n_length+2,	n_cut
	db	sound_ret
