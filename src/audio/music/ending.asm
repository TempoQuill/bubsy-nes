Music_Ending:
	channels_tempo PUL1, PUL2, TRI, NSE, DPCM, 164
	dw Music_Ending_PUL1
	dw Music_Ending_PUL2
	dw Music_Ending_TRI
	dw Music_Ending_NSE
	dw Music_Ending_DPCM

Music_Ending_PUL1:
	db	instrument+i_sax1
	db	n_multi+6,	n_length+32,	n_cut
	db			n_length+1,	oct_2+A_
	db					oct_2+G_
	db					oct_2+A_
	db					oct_2+G_
	db					oct_2+A_
	db					oct_2+G_
	db					oct_2+A_
	db					oct_2+G_
	db			n_length+4,	oct_2+G_
	db			n_length+28,	n_cut
	db			n_length+1,	oct_3+A_
	db					oct_3+G_
	db					oct_3+A_
	db					oct_3+G_
	db					oct_3+A_
	db					oct_3+G_
	db					oct_3+A_
	db					oct_3+G_
	db			n_length+4,	oct_3+G_
	db	n_multi+2,	n_length+25,	n_cut
	db			n_length+13,	oct_3+A_
	db			n_length+11,	oct_3+G_
	db			n_length+12,	oct_3+F_
	db			n_length+13,	oct_3+E_
	db			n_length+12,	oct_3+D_
	db			n_length+11,	oct_3+C_
	db					oct_2+B_
	db			n_length+15,	oct_2+B_
	db	n_multi+7,	n_length+30,	n_cut
	db	n_multi+2,	n_length+3,	oct_2+A_
	db					oct_2+G_
	db					oct_2+A_
	db					oct_2+G_
	db					oct_2+A_
	db					oct_2+G_
	db					oct_2+A_
	db					oct_2+G_
	db	n_multi+4,	n_length+6,	oct_2+G_
	db			n_length+26,	n_cut
	db			n_length+4,	oct_2+G_
	db					oct_2+A#
	db					n_cut
	db			n_length+3,	oct_2+A#
	db	n_multi+2,	n_length+3,	oct_3+D#
	db			n_length+13,	oct_3+D_
	db			n_length+7,	oct_3+C_
	db			n_length+22,	oct_2+A#
	db			n_length+19,	n_cut
	db			n_length+8,	oct_3+C_
	db			n_length+16,	oct_3+C_
	db			n_length+8,	oct_3+D#
	db			n_length+16,	oct_3+D#
	db			n_length+8,	oct_3+F_
	db			n_length+16,	oct_3+F_
	db			n_length+9,	oct_3+D#
	db			n_length+15,	oct_3+D#
	db			n_length+7,	oct_3+D_
	db			n_length+16,	oct_3+D_
	db			n_length+9,	oct_3+C_
	db			n_length+16,	oct_3+C_
	db			n_length+8,	oct_2+A#
	db			n_length+14,	oct_2+A#
	db			n_length+5,	oct_2+A_
	db					n_cut
	db			n_length+32,	oct_2+G_
	db					n_tie
	db			n_length+30,	n_tie
	db	sound_ret

Music_Ending_PUL2:
	db	instrument+i_sax1
	db	n_multi+6,	n_length+16,	n_cut
	db	n_multi+2,	n_length+18,	oct_2+G_
	db			n_length+6,	oct_2+G_
	db			n_length+24,	oct_3+C_
	db			n_length+7,	oct_3+C_
	db			n_length+6,	oct_3+C_
	db			n_length+10,	oct_3+C_
	db			n_length+16,	oct_3+C_
	db			n_length+8,	n_cut
	db			n_length+12,	oct_2+G_
	db					oct_3+C_
	db					oct_3+E_
	db					oct_3+G_
	db	n_multi+6,	n_length+16,	oct_3+E_
	db	n_multi+2,	n_length+24,	oct_3+C_
	db					oct_3+F_
	db					oct_3+C#
	db					oct_2+A_
	db			n_length+12,	oct_3+D_
	db					oct_3+C_
	db			n_length+24,	oct_2+B_
	db			n_length+12,	oct_2+B_
	db					oct_3+D_
	db			n_length+24,	oct_3+G_
	db			n_length+18,	oct_2+G_
	db			n_length+6,	oct_2+G_
	db			n_length+24,	oct_3+C_
	db			n_length+7,	oct_3+C_
	db			n_length+6,	oct_3+C_
	db			n_length+10,	oct_3+C_
	db			n_length+16,	oct_3+C_
	db			n_length+8,	n_cut
	db			n_length+12,	oct_2+G_
	db					oct_3+C_
	db					oct_3+E_
	db					oct_3+G_
	db	n_multi+6,	n_length+16,	oct_3+E_
	db			n_length+8,	oct_3+C_
	db					oct_3+F_
	db					n_cut
	db			n_length+10,	oct_4+C_
	db			n_length+6,	n_cut
	db			n_length+10,	oct_4+C_
	db	n_multi+4,	n_length+5,	n_cut
	db			n_length+28,	oct_4+C_
	db	n_multi+2,	n_length+7,	oct_4+G_
	db					oct_4+F_
	db			n_length+9,	oct_4+D#
	db			n_length+7,	oct_4+C_
	db					oct_3+A#
	db			n_length+9,	oct_3+G_
	db			n_length+7,	oct_3+F#
	db					oct_3+F_
	db			n_length+9,	oct_3+D#
	db			n_length+16,	oct_3+F_
	db			n_length+8,	oct_3+G_
	db	sound_ret

Music_Ending_TRI:
	db	lnr_ratio+31
	db	n_multi+6,	n_length+16,	n_cut
	db	n_multi+2,	n_length+9,	oct_4+G_
	db					n_cut
	db			n_length+6,	oct_4+G_
	db			n_length+16,	oct_5+C_
	db			n_length+8,	n_cut
	db			n_length+16,	oct_5+C_
	db			n_length+8,	n_cut
	db			n_length+16,	oct_5+G_
	db			n_length+8,	n_cut
	db			n_length+16,	oct_6+C_
	db			n_length+8,	n_cut
	db			n_length+5,	oct_5+A_
	db					n_cut
	db			n_length+7,	oct_5+G_
	db					oct_5+F_
	db	n_multi+6,	n_length+16,	oct_5+G_
	db	n_multi+2,	n_length+16,	oct_5+C_
	db			n_length+8,	n_cut
	db			n_length+16,	oct_5+F_
	db			n_length+8,	n_cut
	db			n_length+16,	oct_5+E_
	db			n_length+8,	n_cut
	db			n_length+16,	oct_5+D_
	db			n_length+8,	n_cut
	db			n_length+16,	oct_5+C_
	db			n_length+8,	n_cut
	db					oct_4+B_
	db			n_length+6,	n_cut
	db			n_length+8,	oct_4+G_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_4+G_
	db					n_cut
	db					oct_4+G_
	db					n_cut
	db					oct_4+G_
	db					n_cut
	db					oct_4+G_
	db					n_cut
	db			n_length+7,	oct_4+G_
	db			n_length+6,	oct_4+G_
	db			n_length+8,	oct_4+G_
	db			n_length+12,	oct_5+C_
	db					n_cut
	db			n_length+16,	oct_5+C_
	db			n_length+8,	n_cut
	db			n_length+17,	oct_5+D#
	db			n_length+7,	oct_5+E_
	db			n_length+17,	oct_5+G_
	db			n_length+9,	oct_5+C_
	db			n_length+16,	oct_5+A#
	db			n_length+6,	oct_5+C_
	db			n_length+17,	oct_5+A_
	db			n_length+5,	oct_5+C_
	db			n_length+3,	n_cut
	db			n_length+11,	oct_5+G_
	db			n_length+4,	n_cut
	db			n_length+5,	oct_5+C_
	db			n_length+19,	n_cut
	db			n_length+5,	oct_5+C_
	db			n_length+3,	n_cut
	db			n_length+14,	oct_6+C_
	db			n_length+1,	n_cut
	db			n_length+5,	oct_5+C_
	db			n_length+20,	n_cut
	db			n_length+5,	oct_5+C_
	db			n_length+3,	n_cut
	db			n_length+15,	oct_6+C_
	db			n_length+1,	n_cut
	db			n_length+5,	oct_5+C_
	db			n_length+20,	n_cut
	db			n_length+5,	oct_5+C_
	db			n_length+1,	n_cut
	db			n_length+5,	oct_6+C_
	db			n_length+12,	n_cut
	db			n_length+5,	oct_6+C_
	db			n_length+3,	n_cut
	db			n_length+5,	oct_5+A#
	db			n_length+10,	n_cut
	db			n_length+5,	oct_5+A#
	db			n_length+4,	n_cut
	db			n_length+5,	oct_5+A_
	db			n_length+10,	n_cut
	db			n_length+5,	oct_5+A_
	db			n_length+4,	n_cut
	db			n_length+5,	oct_5+G_
	db			n_length+10,	n_cut
	db			n_length+5,	oct_5+G_
	db			n_length+4,	n_cut
	db			n_length+5,	oct_5+F#
	db			n_length+2,	n_cut
	db			n_length+5,	oct_5+G_
	db			n_length+3,	n_cut
	db			n_length+5,	oct_5+A#
	db			n_length+4,	n_cut
	db			n_length+5,	oct_5+F#
	db			n_length+2,	n_cut
	db			n_length+5,	oct_5+G_
	db			n_length+3,	n_cut
	db			n_length+5,	oct_5+A#
	db			n_length+4,	n_cut
	db			n_length+5,	oct_5+C_
	db			n_length+10,	n_cut
	db			n_length+5,	oct_5+D#
	db			n_length+3,	n_cut
	db			n_length+10,	oct_5+F_
	db			n_length+6,	n_cut
	db			n_length+8,	oct_5+G_
	db	sound_ret

Music_Ending_NSE:
	db	n_multi+6,	n_length+24,	n_cut
	db	n_multi+2,	n_length+24,	$03
	db			n_length+8,	$02
	db					$02
	db					$02
	db			n_length+24,	$02
	db					$02
	db			n_length+8,	$02
	db					$02
	db					$02
	db			n_length+24,	$02
	db			n_length+8,	$02
	db					$02
	db					$02
	db			n_length+24,	$02
	db					$02
	db					$02
	db			n_length+8,	$02
	db					$02
	db					$02
	db					$02
	db					$02
	db					$02
	db			n_length+4,	$02
	db					$02
	db					$02
	db					$02
	db					$02
	db					$02
	db					$02
	db					$02
	db					$02
	db					$02
	db					$02
	db					$02
	db			n_length+24,	$02
	db			n_length+12,	$02
	db					$02
	db			n_length+24,	$02
	db			n_length+8,	$02
	db					$02
	db					$02
	db			n_length+24,	$02
	db					$02
	db			n_length+8,	$02
	db					$02
	db					$02
	db			n_length+24,	$02
	db			n_length+8,	$02
	db					$02
	db					$02
	db			n_length+24,	$02
	db			n_length+18,	$01
	db			n_length+7,	$01
	db			n_length+15,	$02
	db			n_length+8,	$03
	db			n_length+16,	$01
	db			n_length+2,	$03
	db			n_length+6,	$01
	db			n_length+16,	$02
	db			n_length+8,	$03
	db			n_length+16,	$01
	db			n_length+8,	$01
	db			n_length+16,	$02
	db			n_length+8,	$02
	db					$02
	db					$02
	db					$02
	db					$02
	db					$02
	db					$02
	db			n_length+16,	$01
	db			n_length+8,	$01
	db					$02
	db					$01
	db					$02
	db					$01
	db					$02
	db					$01
	db					$02
	db					$03
	db					$02
	db	sound_ret

Music_Ending_DPCM:
	db	n_multi+2,	n_length+9,	oct_1+G_
	db					n_cut
	db			n_length+6,	oct_1+G_
	db			n_length+12,	oct_1+G_
	db			n_length+6,	oct_1+B_
	db					n_cut
	db					oct_2+D_
	db					n_cut
	db					oct_2+G_
	db					n_cut
	db			n_length+16,	oct_3+C_
	db			n_length+8,	n_cut
	db			n_length+24,	oct_2+C_
	db			n_length+16,	oct_3+C_
	db			n_length+8,	n_cut
	db			n_length+16,	oct_2+G_
	db			n_length+8,	n_cut
	db	n_multi+4,	n_length+20,	oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+G_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+E_
	db			n_length+3,	n_cut
	db					oct_2+E_
	db			n_length+12,	oct_2+F_
	db					oct_2+A_
	db					oct_2+F_
	db					oct_2+D_
	db			n_length+8,	oct_2+G_
	db			n_length+4,	n_cut
	db	n_multi+2,	n_length+9,	oct_1+G_
	db					n_cut
	db	n_multi+4,	n_length+3,	oct_1+G_
	db			n_length+6,	oct_1+G_
	db			n_length+3,	oct_1+B_
	db					n_cut
	db					oct_2+D_
	db					n_cut
	db					oct_2+G_
	db					n_cut
	db			n_length+8,	oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+12,	oct_2+C_
	db			n_length+8,	oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+G_
	db			n_length+4,	n_cut
	db			n_length+20,	oct_3+C_
	db	n_multi+2,	n_length+8,	n_cut
	db			n_length+16,	oct_2+G_
	db			n_length+8,	n_cut
	db			n_length+9,	oct_2+E_
	db					n_cut
	db			n_length+6,	oct_2+E_
	db					oct_2+F_
	db			n_length+18,	n_cut
	db			n_length+24,	oct_1+F_
	db			n_length+16,	oct_1+G_
	db			n_length+8,	n_cut
	db			n_length+9,	oct_1+A_
	db					n_cut
	db			n_length+6,	oct_1+A#
	db			n_length+9,	oct_1+B_
	db					n_cut
	db			n_length+6,	oct_2+C_
	db			n_length+9,	oct_2+D_
	db					n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+11,	oct_2+E_
	db			n_length+4,	n_cut
	db			n_length+9,	oct_2+E_
	db			n_length+7,	oct_2+E_
	db					oct_2+F_
	db			n_length+9,	oct_2+F#
	db			n_length+18,	oct_2+G_
	db			n_length+16,	oct_1+G_
	db			n_length+8,	n_cut
	db			n_length+6,	oct_1+G_
	db			n_length+10,	oct_1+A#
	db			n_length+6,	n_cut
	db			n_length+8,	oct_1+B_
	db			n_length+16,	oct_2+D_
	db			n_length+8,	oct_2+G_
	db	sound_ret
