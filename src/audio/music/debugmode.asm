Music_DebugMode:
	channels_tempo PUL1, PUL2, TRI, NSE, DPCM, 67
	dw Music_DebugMode_PUL1
	dw Music_DebugMode_PUL2
	dw Music_DebugMode_TRI
	dw Music_DebugMode_NSE
	dw Music_DebugMode_DPCM

Music_DebugMode_PUL1:
	db	instrument+i_organ1
	db	n_multi+6,	n_length+18,	oct_4+F_
	db			n_length+6,	n_cut
	db			n_length+4,	oct_4+F_
	db					n_cut
	db			n_length+16,	oct_4+F_
	db			n_length+18,	oct_4+G_
	db					oct_4+F_
	db					oct_4+G_
	db	instrument+i_organ1_tie
	db	n_multi+6,	n_length+27,	oct_4+A_
	db					n_tie
	db	instrument+i_sax1
	db	n_multi+5,	n_length+8,	oct_4+E_
	db			n_length+16,	n_cut
	db			n_length+15,	oct_4+E_
	db	n_multi+15,	n_length+17,	oct_4+C_
	db			n_length+4,	n_tie
	db	n_multi+5,	n_length+10,	n_cut
	db			n_length+8,	oct_3+G_
	db			n_length+16,	oct_4+C_
	db			n_length+12,	oct_4+E_
	db					n_cut
	db			n_length+8,	oct_3+F_
	db			n_length+16,	oct_3+B_
	db					oct_4+D_
	db			n_length+7,	n_cut
	db			n_length+9,	oct_3+E_
	db			n_length+16,	oct_3+A_
	db					oct_4+C_
	db			n_length+7,	n_cut
	db			n_length+9,	oct_3+D_
	db			n_length+15,	oct_3+G_
	db					oct_3+B_
	db			n_length+10,	n_cut
	db			n_length+8,	oct_3+C_
	db			n_length+15,	oct_3+F_
	db					oct_3+A_
	db			n_length+10,	n_cut
	db			n_length+8,	oct_2+B_
	db			n_length+15,	oct_3+E_
	db			n_length+9,	oct_3+G_
	db			n_length+12,	oct_4+D_
	db					n_cut
	db			n_length+16,	oct_3+A#
	db			n_length+32,	oct_3+B_
	db			n_length+16,	oct_3+G_
	db			n_length+32,	oct_3+F_
	db			n_length+18,	oct_3+E_
	db			n_length+22,	oct_3+D_
	db			n_length+8,	n_cut
	db			n_length+16,	oct_3+C_
	db	n_multi+15,			oct_3+D_
	db					n_tie
	db					n_tie
	db			n_length+15,	n_tie
	db	n_multi+5,	n_length+11,	n_cut
	db	sound_ret

Music_DebugMode_PUL2:
	db	instrument+i_organ1
	db	n_multi+6,	n_length+18,	oct_4+D_
	db			n_length+6,	n_cut
	db			n_length+4,	oct_4+D_
	db					n_cut
	db			n_length+16,	oct_4+D_
	db			n_length+18,	oct_4+D_
	db					oct_4+D_
	db					oct_4+D_
	db	instrument+i_organ1_tie
	db	n_multi+6,	n_length+27,	oct_4+C#
	db					n_tie
	db	instrument+i_sax1
	db	n_multi+5,	n_length+14,	oct_3+A_
	db			n_length+10,	n_cut
	db			n_length+13,	oct_4+C_
	db					n_cut
	db			n_length+16,	oct_4+E_
	db			n_length+15,	oct_4+C_
	db					n_cut
	db			n_length+18,	oct_4+G_
	db			n_length+12,	oct_4+F_
	db					n_cut
	db			n_length+24,	oct_4+E_
	db			n_length+6,	oct_4+D_
	db			n_length+12,	oct_4+C_
	db					n_cut
	db					oct_3+A_
	db					n_cut
	db			n_length+13,	oct_4+C_
	db					n_cut
	db					oct_4+E_
	db			n_length+12,	oct_4+C_
	db					n_cut
	db			n_length+9,	oct_4+G_
	db			n_length+12,	oct_4+E_
	db					n_cut
	db			n_length+15,	oct_4+B_
	db	n_multi+15,	n_length+16,	oct_4+G_
	db	n_multi+5,	n_length+1,	n_tie
	db			n_length+8,	n_cut
	db			n_length+12,	oct_3+B_
	db					n_cut
	db			n_length+13,	oct_4+D_
	db					n_cut
	db			n_length+23,	oct_4+G_
	db					n_cut
	db			n_length+2,	oct_4+A#
	db			n_length+8,	oct_4+B_
	db					n_cut
	db			n_length+12,	oct_4+G_
	db					n_cut
	db					oct_4+F_
	db					n_cut
	db			n_length+6,	oct_4+E_
	db			n_length+24,	oct_4+D_
	db			n_length+12,	oct_3+B_
	db					n_cut
	db					oct_3+B_
	db					n_cut
	db					oct_3+A_
	db					n_cut
	db			n_length+24,	oct_3+A_
	db			n_length+12,	oct_3+G_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db					oct_3+F_
	db					n_cut
	db			n_length+24,	oct_3+F_
	db	sound_ret

Music_DebugMode_TRI:
	db	lnr_ratio+31
	db	n_multi+6,	n_length+18,	oct_3+A#
	db			n_length+6,	n_cut
	db			n_length+4,	oct_3+A#
	db					n_cut
	db			n_length+16,	oct_3+A#
	db			n_length+18,	oct_3+A#
	db					oct_3+A#
	db					oct_3+A#
	db	n_multi+6,	n_length+27,	oct_3+A_
	db					oct_3+A_
	db	sound_ret

Music_DebugMode_NSE:
	db	n_multi+12,	n_length+15,	$02
	db			n_length+6,	$02
	db			n_length+3,	$02
	db			n_length+1,	$02
	db			n_length+8,	n_cut
	db			n_length+9,	$02
	db					$02
	db			n_length+19,	$02
	db			n_length+4,	$02
	db					$02
	db	sound_loop+4
	db	n_multi+5,	n_length+16,	$01
	db			n_length+8,	$03
	db			n_length+16,	$02
	db			n_length+8,	$03
	db					$03
	db					$03
	db					$03
	db			n_length+16,	$03
	db			n_length+8,	$03
	db			n_length+16,	$01
	db			n_length+8,	$03
	db			n_length+16,	$02
	db			n_length+8,	$03
	db			n_length+16,	$03
	db			n_length+8,	$03
	db			n_length+16,	$03
	db			n_length+8,	$03
	db	sound_loop_break
	db	sound_ret

Music_DebugMode_DPCM:
	db	n_multi+12,	n_length+9,	oct_1+A#
	db			n_length+3,	n_cut
	db			n_length+2,	oct_1+A#
	db					n_cut
	db			n_length+8,	oct_1+A#
	db			n_length+9,	oct_1+A#
	db					oct_1+A#
	db					oct_1+A#
	db			n_length+21,	oct_1+A_
	db			n_length+6,	n_cut
	db	n_multi+10,	n_length+4,	oct_1+D_
	db					n_cut
	db					oct_1+D_
	db			n_length+8,	n_cut
	db			n_length+4,	oct_1+C_
	db			n_length+8,	oct_1+C#
	db			n_length+6,	oct_1+D_
	db					n_cut
	db			n_length+4,	oct_2+C_
	db			n_length+8,	oct_2+C#
	db			n_length+4,	oct_2+D_
	db			n_length+8,	n_cut
	db			n_length+4,	oct_1+F_
	db					oct_2+F_
	db					oct_1+F#
	db					oct_1+G_
	db			n_length+8,	oct_2+G_
	db			n_length+4,	oct_1+C_
	db					oct_1+C#
	db					n_cut
	db			n_length+8,	oct_1+D_
	db			n_length+4,	n_cut
	db					oct_1+C_
	db					oct_1+D_
	db					n_cut
	db					oct_1+F_
	db					oct_2+F_
	db					n_cut
	db					oct_2+F_
	db			n_length+20,	n_cut
	db			n_length+4,	oct_2+C_
	db			n_length+8,	oct_2+F_
	db			n_length+4,	oct_2+C_
	db			n_length+8,	oct_1+C_
	db			n_length+4,	oct_1+C_
	db					oct_1+G_
	db					n_cut
	db					oct_1+G_
	db			n_length+8,	n_cut
	db			n_length+4,	oct_1+F_
	db			n_length+8,	oct_1+F#
	db			n_length+8,	oct_1+G_
	db			n_length+4,	n_cut
	db					oct_2+F_
	db			n_length+8,	oct_2+G_
	db			n_length+4,	oct_2+G_
	db			n_length+8,	n_cut
	db			n_length+4,	oct_1+A#
	db					oct_2+A#
	db					oct_1+B_
	db			n_length+6,	oct_2+C_
	db					n_cut
	db			n_length+4,	oct_1+C_
	db					oct_1+C#
	db					n_cut
	db			n_length+8,	oct_1+D_
	db			n_length+4,	n_cut
	db					oct_1+C_
	db					oct_1+C#
	db					n_cut
	db					oct_1+D_
	db					oct_2+F_
	db					n_cut
	db					oct_2+F_
	db			n_length+24,	n_cut
	db			n_length+24,	n_cut
	db	sound_ret
