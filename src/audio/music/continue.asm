Music_Continue:
	channels_tempo PUL1, PUL2, TRI, NSE, DPCM, 164
	dw Music_Continue_PUL1
	dw Music_Continue_PUL2
	dw Music_Continue_TRI
	dw Music_Continue_NSE
	dw Music_Continue_DPCM

Music_Continue_PUL1:
	db	instrument+i_sax1
	db	n_multi+2,	n_length+16,	n_cut
	db			n_length+8,	oct_2+A_
	db			n_length+16,	oct_3+D_
	db			n_length+8,	oct_3+F#
	db					oct_3+E_
	db					oct_3+D_
	db					oct_3+C#
	db			n_length+16,	oct_2+B_
	db			n_length+24,	oct_2+A_
	db					oct_3+D_
	db			n_length+8,	oct_3+F#
	db			n_length+16,	oct_3+E_
	db			n_length+8,	oct_3+D_
	db			n_length+16,	oct_3+E_
	db					oct_3+F#
	db			n_length+8,	n_cut
	db					oct_2+A_
	db			n_length+16,	oct_3+D_
	db			n_length+8,	oct_3+F#
	db					oct_3+E_
	db					oct_3+D_
	db					oct_3+C#
	db			n_length+16,	oct_2+B_
	db			n_length+24,	oct_2+A_
	db					oct_2+D_
	db			n_length+8,	oct_2+E_
	db			n_length+16,	oct_2+F#
	db			n_length+8,	oct_2+G_
	db			n_length+16,	oct_2+F#
	db			n_length+9,	n_cut
	db			n_length+7,	oct_2+A_
	db			n_length+6,	n_cut
	db			n_length+9,	oct_2+B_
	db			n_length+16,	oct_2+A_
	db			n_length+8,	n_cut
	db			n_length+16,	oct_3+D_
	db			n_length+8,	n_cut
	db			n_length+9,	oct_3+E_
	db			n_length+6,	n_cut
	db			n_length+10,	oct_3+D_
	db	sound_ret

Music_Continue_PUL2:
	db	instrument+i_sax1
	db	n_multi+2,	n_length+16,	n_cut
	db			n_length+8,	oct_2+F#
	db			n_length+16,	oct_2+A_
	db			n_length+8,	oct_3+D_
	db					oct_3+C#
	db					oct_2+B_
	db					oct_2+A_
	db			n_length+16,	oct_2+G_
	db			n_length+24,	oct_2+F#
	db			n_length+8,	oct_2+F#
	db			n_length+16,	oct_2+A_
	db			n_length+8,	oct_3+D_
	db			n_length+16,	oct_2+G_
	db			n_length+8,	oct_2+A_
	db			n_length+16,	oct_2+B_
	db			n_length+12,	oct_2+A_
	db					n_cut
	db			n_length+8,	oct_2+F#
	db			n_length+16,	oct_2+A_
	db			n_length+8,	oct_3+D_
	db					oct_3+C#
	db					oct_2+B_
	db					oct_2+A_
	db			n_length+16,	oct_2+G_
	db			n_length+18,	oct_2+A_
	db			n_length+6,	n_cut
	db			n_length+18,	oct_2+F#
	db			n_length+6,	n_cut
	db			n_length+8,	oct_2+G_
	db			n_length+16,	oct_2+A_
	db			n_length+8,	oct_2+B_
	db			n_length+18,	oct_2+A_
	db			n_length+6,	n_cut
	db			n_length+13,	oct_3+D_
	db			n_length+11,	oct_2+A_
	db			n_length+15,	oct_2+F#
	db			n_length+9,	oct_2+D_
	db			n_length+15,	oct_2+B_
	db			n_length+9,	oct_2+G_
	db			n_length+8,	oct_2+E_
	db			n_length+7,	n_cut
	db					oct_2+D_
	db	sound_ret

Music_Continue_TRI:
	db	lnr_ratio+31
	db	n_multi+2,	n_length+8,	oct_5+F#
	db					oct_5+A_
	db					oct_6+D_
	db			n_length+16,	oct_6+C#
	db			n_length+8,	oct_5+B_
	db			n_length+12,	oct_5+A_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+B_
	db			n_length+32,	oct_5+A_
	db			n_length+8,	n_cut
	db					oct_5+B_
	db			n_length+32,	oct_5+A_
	db			n_length+8,	n_cut
	db					oct_5+F#
	db			n_length+16,	oct_5+G_
	db			n_length+8,	oct_5+F#
	db					oct_5+F#
	db					oct_5+A_
	db					oct_6+D_
	db			n_length+16,	oct_6+C#
	db			n_length+8,	oct_5+B_
	db			n_length+16,	oct_5+A_
	db			n_length+8,	oct_5+B_
	db			n_length+24,	oct_5+A_
	db			n_length+16,	oct_5+F#
	db			n_length+8,	oct_5+G_
	db			n_length+24,	oct_5+F#
	db					oct_5+A_
	db					n_cut
	db			n_length+8,	oct_6+F#
	db					oct_6+E_
	db					oct_6+D_
	db			n_length+16,	oct_6+C#
	db			n_length+8,	oct_5+B_
	db			n_length+16,	oct_5+A_
	db			n_length+8,	oct_5+B_
	db			n_length+16,	oct_6+C#
	db			n_length+8,	oct_6+D_
	db	sound_ret

Music_Continue_NSE:
	db	n_multi+2,	n_length+16,	$01
	db			n_length+8,	$03
	db			n_length+24,	$02
	db	sound_loop+9
	db	n_multi+2,	n_length+16,	$01
	db			n_length+8,	$03
	db			n_length+16,	$02
	db			n_length+8,	$03
	db	sound_loop_break
	db	sound_ret

Music_Continue_DPCM:
	db	sound_loop+2
	db	n_multi+4,	n_length+4,	oct_1+D_
	db			n_length+16,	n_cut
	db			n_length+6,	oct_1+A_
	db			n_length+22,	n_cut
	db	sound_loop_break
	db	n_multi+4,	n_length+6,	oct_1+D_
	db			n_length+14,	n_cut
	db			n_length+6,	oct_1+A_
	db			n_length+22,	n_cut
	db			n_length+4,	oct_1+D_
	db			n_length+16,	n_cut
	db			n_length+6,	oct_1+B_
	db			n_length+10,	n_cut
	db			n_length+6,	oct_1+A_
	db					n_cut
	db					oct_1+F#
	db			n_length+14,	n_cut
	db			n_length+12,	oct_1+G_
	db			n_length+4,	oct_1+C_
	db			n_length+6,	oct_1+C#
	db			n_length+2,	n_cut
	db			n_length+4,	oct_1+D_
	db	sound_ret
