Music_Train:
	channels_tempo PUL1, PUL2, TRI, 0, DPCM, 246
	dw Music_Train_PUL1
	dw Music_Train_PUL2
	dw Music_Train_TRI
	dw Music_Train_DPCM

Music_Train_PUL1:
	db	instrument+i_piano
	db	n_multi+6,	n_length+8,	oct_3+G_
	db			n_length+4,	oct_3+F#
	db			n_length+8,	oct_3+G_
	db			n_length+4,	oct_3+A_
	db	sound_main_loop_set
	db	instrument+i_piano
	db	n_multi+6,	n_length+4,	oct_3+D_
	db			n_length+1,	oct_3+G_
	db					oct_3+A_
	db					oct_3+B_
	db					oct_4+C_
	db			n_length+8,	oct_4+D_
	db			n_length+1,	oct_4+C_
	db					oct_3+B_
	db					oct_3+A_
	db			n_length+13,	oct_3+B_
	db			n_length+1,	oct_3+A_
	db					oct_3+B_
	db					oct_3+A_
	db					oct_3+G_
	db			n_length+8,	oct_3+F#
	db			n_length+1,	oct_3+A_
	db					oct_3+F#
	db					oct_3+G_
	db					oct_3+A_
	db			n_length+8,	oct_3+G_
	db			n_length+1,	oct_3+A_
	db					oct_3+B_
	db			n_length+2,	oct_4+C_
	db			n_length+10,	oct_4+D_
	db			n_length+1,	oct_4+C_
	db					oct_3+A_
	db			n_length+7,	oct_3+B_
	db			n_length+1,	oct_3+B_
	db					oct_3+A_
	db					oct_3+B_
	db					oct_3+A_
	db					oct_3+G_
	db			n_length+6,	oct_3+F#
	db			n_length+2,	n_cut
	db			n_length+1,	oct_3+F#
	db					oct_3+G_
	db			n_length+2,	oct_3+A_
	db			n_length+6,	oct_3+G_
	db			n_length+2,	n_cut
	db			n_length+1,	oct_3+G_
	db					oct_3+A_
	db					oct_3+B_
	db	n_multi+2,	n_length+11,	oct_4+C_
	db			n_length+4,	n_cut
	db			n_length+3,	oct_3+A_
	db					oct_3+B_
	db					oct_4+C_
	db			n_length+11,	oct_4+D_
	db			n_length+4,	n_cut
	db			n_length+3,	oct_3+A_
	db					oct_3+B_
	db					oct_4+C_
	db			n_length+11,	oct_4+D_
	db			n_length+4,	n_cut
	db			n_length+3,	oct_4+C_
	db					oct_3+B_
	db					oct_3+A_
	db			n_length+7,	oct_3+B_
	db			n_length+8,	n_cut
	db			n_length+3,	oct_3+A_
	db					oct_3+B_
	db					oct_3+A_
	db			n_length+12,	oct_3+G_
	db			n_length+3,	n_cut
	db			n_length+4,	oct_3+B_
	db					oct_3+B_
	db					oct_3+B_
	db					oct_3+B_
	db					oct_4+D_
	db					oct_4+C_
	db					oct_4+C_
	db					oct_3+B_
	db					oct_3+B_
	db			n_length+12,	oct_3+B_
	db					oct_3+A_
	db					oct_3+G_
	db			n_length+4,	oct_4+D_
	db					oct_4+D_
	db					oct_4+D_
	db					oct_4+D_
	db					oct_4+D_
	db					oct_4+C_
	db					oct_4+C_
	db					oct_4+C_
	db					oct_3+B_
	db			n_length+12,	oct_3+B_
	db					oct_4+D_
	db					oct_4+C_
	db			n_length+4,	oct_3+B_
	db					oct_3+B_
	db					oct_3+B_
	db					oct_3+B_
	db					oct_3+B_
	db					oct_3+B_
	db					oct_3+A_
	db					oct_4+D_
	db					oct_4+C_
	db			n_length+12,	oct_3+B_
	db					oct_3+A_
	db					oct_3+G_
	db			n_length+4,	oct_3+G_
	db					oct_3+A_
	db					oct_3+B_
	db					oct_4+C_
	db					oct_3+A_
	db					oct_3+B_
	db					oct_4+C_
	db					oct_3+B_
	db					oct_4+C_
	db			n_length+20,	oct_4+D_
	db			n_length+4,	oct_4+C_
	db			n_length+8,	oct_4+C_
	db			n_length+24,	oct_3+B_
	db			n_length+4,	oct_3+A_
	db					oct_3+G_
	db					oct_3+F#
	db					oct_3+E_
	db			n_length+24,	oct_3+D_
	db			n_length+12,	n_cut
	db	sound_ret
Music_Train_PUL2:
	db	instrument+i_piano
	db	n_multi+6,	n_length+1,	oct_3+B_
	db					oct_2+B_
	db					oct_3+B_
	db					oct_2+B_
	db					oct_3+B_
	db					oct_2+B_
	db			n_length+2,	oct_3+B_
	db			n_length+4,	oct_2+A_
	db			n_length+1,	oct_3+B_
	db					oct_2+B_
	db					oct_3+B_
	db					oct_2+B_
	db					oct_3+B_
	db					oct_2+B_
	db			n_length+3,	oct_3+B_
	db			n_length+1,	oct_3+C_
	db			n_length+2,	n_cut
	db	sound_main_loop_set
	db	instrument+i_organ2
	db	n_multi+6,	n_length+4,	n_cut
	db			n_length+2,	oct_3+B_
	db					oct_4+C_
	db					oct_3+B_
	db					oct_3+A_
	db					oct_3+B_
	db					oct_4+C_
	db			n_length+6,	oct_4+D_
	db					n_cut
	db			n_length+2,	oct_4+B_
	db					oct_5+C_
	db					oct_4+B_
	db					oct_4+A_
	db					oct_4+B_
	db					oct_5+C_
	db			n_length+6,	oct_5+D_
	db					n_cut
	db	n_multi+2,	n_length+4,	oct_4+G_
	db					n_cut
	db					oct_4+G_
	db					oct_4+G_
	db					n_cut
	db					oct_4+G_
	db					oct_4+G_
	db					n_cut
	db					oct_4+F#
	db					oct_4+E_
	db					n_cut
	db					oct_4+F#
	db			n_length+16,	oct_4+D_
	db			n_length+8,	n_cut
	db			n_length+4,	oct_4+B_
	db					n_cut
	db					oct_4+B_
	db					oct_4+B_
	db					n_cut
	db					oct_4+B_
	db					oct_4+B_
	db					n_cut
	db					oct_5+C_
	db					oct_4+B_
	db					n_cut
	db					oct_4+A_
	db			n_length+16,	oct_4+G_
	db			n_length+8,	n_cut
	db			n_length+4,	oct_4+G_
	db					n_cut
	db					oct_4+G_
	db					oct_4+G_
	db					n_cut
	db					oct_4+G_
	db					oct_4+G_
	db					n_cut
	db					oct_4+F#
	db					oct_4+E_
	db					n_cut
	db					oct_4+F#
	db					oct_4+D_
	db					oct_4+D_
	db					oct_4+D_
	db					oct_4+G_
	db					oct_4+D_
	db					oct_4+D_
	db					oct_4+D_
	db					oct_4+D_
	db					oct_4+D_
	db			n_length+8,	oct_4+E_
	db			n_length+4,	oct_4+D_
	db					oct_4+E_
	db					oct_4+F#
	db					oct_4+G_
	db					oct_4+A_
	db					oct_4+A_
	db					oct_4+B_
	db			n_length+8,	oct_4+B_
	db			n_length+4,	oct_5+C_
	db			n_length+24,	oct_4+B_
	db			n_length+12,	n_cut
	db					oct_4+G_
	db					oct_4+F#
	db					oct_4+G_
	db			n_length+28,	oct_4+D_
	db			n_length+8,	n_cut
	db	n_multi+6,	n_length+4,	oct_4+A_
	db					oct_4+B_
	db					oct_5+C_
	db			n_length+8,	oct_4+B_
	db			n_length+4,	n_cut
	db					oct_4+G_
	db					oct_4+F#
	db					oct_4+G_
	db	n_multi+2,			oct_4+D_
	db					oct_4+D_
	db					oct_4+D_
	db					oct_4+D_
	db					oct_4+D_
	db					oct_4+D_
	db			n_length+8,	oct_4+E_
	db			n_length+4,	oct_4+D_
	db					oct_4+E_
	db					oct_4+F#
	db					oct_4+G_
	db					oct_4+F#
	db					oct_4+F#
	db					oct_4+F#
	db					oct_4+E_
	db					oct_4+E_
	db					oct_4+E_
	db	n_multi+6,	n_length+8,	oct_4+D_
	db			n_length+16,	n_cut
	db	sound_ret

Music_Train_TRI:
	db	lnr_ratio+11
	db	n_multi+6,	n_length+1,	oct_3+B_
	db					oct_4+D_
	db			n_length+6,	oct_4+G_
	db			n_length+1,	oct_3+B_
	db			n_length+3,	oct_4+D_
	db			n_length+1,	oct_3+B_
	db					oct_4+D_
	db			n_length+6,	oct_4+G_
	db			n_length+1,	oct_3+B_
	db					oct_4+D_
	db			n_length+2,	oct_4+G_
	db	sound_main_loop_set
	db	lnr_ratio+11
	db	n_multi+2,	n_length+4,	oct_3+B_
	db					oct_4+G_
	db					oct_4+B_
	db					oct_3+G_
	db					oct_4+G_
	db					oct_4+B_
	db					oct_3+B_
	db					oct_4+G_
	db					oct_4+B_
	db					oct_3+G_
	db					oct_4+F#
	db					oct_4+A_
	db					oct_3+D_
	db					oct_4+F#
	db					oct_4+A_
	db					oct_4+D_
	db					oct_4+F#
	db					oct_4+A_
	db	sound_ret

Music_Train_DPCM:
	db	n_multi+6,	n_length+4,	oct_2+G_
	db			n_length+8,	oct_2+D_
	db					oct_2+G_
	db	n_multi+2,			oct_1+B_
	db			n_length+4,	n_cut
	db	sound_main_loop_set
	db	n_multi+6,	n_length+4,	oct_1+G_
	db					oct_1+B_
	db			n_length+6,	oct_2+D_
	db					oct_1+D_
	db			n_length+4,	oct_1+F#
	db	sound_ret
