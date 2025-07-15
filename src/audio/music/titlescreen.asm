Music_TitleScreen:
	channels_tempo PUL1, PUL2, TRI, NSE, DPCM, 225
	dw Music_TitleScreen_PUL1
	dw Music_TitleScreen_PUL2
	dw Music_TitleScreen_TRI
	dw Music_TitleScreen_NSE
	dw Music_TitleScreen_DPCM

Music_TitleScreen_PUL1:
	db	sound_main_loop_set
	db	instrument+i_brass_sctn
	db	n_multi+4,	n_length+18,	n_cut
	db			n_length+4,	oct_4+G_
	db			n_length+20,	n_cut
	db			n_length+4,	oct_4+E_
	db			n_length+8,	n_cut
	db			n_length+3,	oct_4+D#
	db					n_cut
	db			n_length+6,	oct_4+D#
	db			n_length+2,	n_cut
	db			n_length+4,	oct_4+D_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_4+D_
	db					oct_4+C_
	db			n_length+8,	n_cut
	db			n_length+4,	oct_4+G_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_4+D#
	db			n_length+2,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+14,	n_cut
	db			n_length+2,	oct_3+G_
	db			n_length+4,	oct_3+A#
	db			n_length+1,	oct_3+G_
	db					n_cut
	db			n_length+3,	oct_4+G_
	db			n_length+1,	n_cut
	db			n_length+4,	oct_4+E_
	db			n_length+14,	n_cut
	db			n_length+2,	oct_4+A#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_4+A#
	db			n_length+1,	oct_4+G_
	db					n_cut
	db			n_length+4,	oct_4+A#
	db			n_length+2,	n_cut
	db			n_length+4,	oct_4+B_
	db			n_length+5,	oct_5+C_
	db			n_length+31,	n_cut
	db			n_length+1,	oct_3+G_
	db					n_cut
	db			n_length+4,	oct_3+A#
	db			n_length+1,	oct_3+G_
	db					n_cut
	db			n_length+4,	oct_4+D#
	db					oct_4+C_
	db			n_length+14,	n_cut
	db			n_length+2,	oct_4+D_
	db			n_length+4,	n_cut
	db					oct_4+C_
	db			n_length+2,	n_cut
	db					oct_4+C_
	db			n_length+10,	n_cut
	db			n_length+3,	oct_3+G_
	db					n_cut
	db					oct_4+C_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db					oct_4+D#
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db					oct_4+E_
	db					n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+14,	n_cut
	db			n_length+1,	oct_3+G_
	db					n_cut
	db			n_length+4,	oct_3+A#
	db			n_length+1,	oct_4+C_
	db					n_cut
	db			n_length+3,	oct_4+D#
	db			n_length+1,	n_cut
	db			n_length+9,	oct_4+F_
	db			n_length+5,	n_cut
	db			n_length+4,	oct_4+E_
	db			n_length+2,	n_cut
	db			n_length+3,	oct_4+E_
	db					n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_4+D#
	db					oct_4+C_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_4+G_
	db			n_length+4,	n_cut
	db			n_length+1,	oct_4+D#
	db					n_cut
	db			n_length+3,	oct_4+D_
	db			n_length+1,	n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+10,	n_cut
	db			n_length+1,	oct_3+G_
	db					n_cut
	db			n_length+4,	oct_3+A#
	db			n_length+1,	oct_3+G_
	db					n_cut
	db			n_length+4,	oct_4+D#
	db					oct_4+C_
	db			n_length+14,	n_cut
	db			n_length+2,	oct_4+D_
	db			n_length+4,	n_cut
	db					oct_4+C_
	db			n_length+14,	n_cut
	db			n_length+1,	oct_3+G_
	db					n_cut
	db			n_length+4,	oct_3+A#
	db			n_length+1,	oct_3+G_
	db					n_cut
	db			n_length+4,	oct_4+D#
	db			n_length+2,	oct_4+C_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+G_
	db			n_length+4,	n_cut
	db			n_length+3,	oct_4+E_
	db					n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_3+G_
	db			n_length+4,	n_cut
	db			n_length+3,	oct_3+A#
	db					n_cut
	db					oct_4+D#
	db					n_cut
	db			n_length+10,	oct_4+G_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_4+G_
	db	n_multi+2,	n_length+3,	oct_4+A#
	db					n_cut
	db	n_multi+4,	n_length+1,	oct_4+A#
	db			n_length+2,	oct_4+G_
	db			n_length+3,	oct_5+D#
	db			n_length+1,	n_cut
	db			n_length+2,	oct_5+C_
	db					oct_5+D#
	db					n_cut
	db			n_length+4,	oct_5+C_
	db			n_length+22,	n_cut
	db			n_length+2,	oct_4+D#
	db			n_length+8,	n_cut
	db					oct_4+D#
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+4,	oct_4+D#
	db			n_length+1,	oct_4+C_
	db					n_cut
	db			n_length+3,	oct_4+F_
	db			n_length+1,	n_cut
	db			n_length+2,	oct_4+D#
	db			n_length+4,	oct_3+A#
	db			n_length+2,	oct_3+B_
	db					oct_4+D#
	db			n_length+8,	n_cut
	db			n_length+7,	oct_4+D#
	db					n_cut
	db	n_multi+2,	n_length+3,	oct_4+F_
	db			n_length+5,	n_cut
	db			n_length+3,	oct_4+A_
	db			n_length+9,	n_cut
	db			n_length+3,	oct_4+F_
	db			n_length+9,	n_cut
	db			n_length+3,	oct_5+C_
	db			n_length+9,	n_cut
	db			n_length+3,	oct_4+D#
	db			n_length+21,	n_cut
	db			n_length+16,	oct_4+D#
	db			n_length+8,	n_cut
	db			n_length+3,	oct_4+F_
	db			n_length+9,	n_cut
	db			n_length+3,	oct_4+G_
	db			n_length+1,	n_cut
	db			n_length+4,	oct_4+F_
	db					n_cut
	db			n_length+2,	oct_4+F_
	db					n_cut
	db			n_length+3,	oct_4+F_
	db			n_length+5,	n_cut
	db			n_length+2,	oct_3+A#
	db					n_cut
	db			n_length+6,	oct_4+C_
	db			n_length+2,	n_cut
	db					oct_4+D#
	db					n_cut
	db			n_length+4,	oct_3+G_
	db			n_length+2,	oct_3+A#
	db					n_cut
	db			n_length+4,	oct_3+B_
	db			n_length+6,	oct_4+C_
	db			n_length+2,	n_cut
	db					oct_4+D#
	db					n_cut
	db			n_length+8,	oct_4+G_
	db			n_length+6,	oct_4+D#
	db			n_length+18,	n_cut
	db			n_length+3,	oct_4+G_
	db			n_length+9,	n_cut
	db			n_length+3,	oct_4+G_
	db			n_length+9,	n_cut
	db			n_length+2,	oct_4+C_
	db					n_cut
	db			n_length+6,	oct_4+D_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_4+C_
	db	n_multi+4,	n_length+22,	n_cut
	db			n_length+2,	oct_3+G_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_3+G_
	db			n_length+4,	n_cut
	db					oct_3+A#
	db			n_length+2,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_4+D#
	db			n_length+2,	n_cut
	db					oct_4+C_
	db			n_length+18,	n_cut
	db			n_length+4,	oct_4+D#
	db			n_length+2,	n_cut
	db			n_length+4,	oct_4+G_
	db			n_length+4,	oct_4+D#
	db			n_length+2,	n_cut
	db			n_length+4,	oct_3+A#
	db			n_length+2,	n_cut
	db			n_length+3,	oct_4+C_
	db					n_cut
	db			n_length+2,	oct_3+G_
	db			n_length+16,	n_cut
	db			n_length+1,	oct_3+G_
	db					n_cut
	db			n_length+4,	oct_3+A#
	db			n_length+1,	oct_4+C_
	db					n_cut
	db			n_length+3,	oct_4+D#
	db			n_length+1,	n_cut
	db			n_length+9,	oct_4+F_
	db			n_length+5,	n_cut
	db			n_length+4,	oct_4+E_
	db			n_length+2,	n_cut
	db			n_length+3,	oct_4+E_
	db					n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_4+D#
	db					oct_4+C_
	db			n_length+32,	n_cut
	db			n_length+2,	oct_4+G_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+F_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+D#
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+D_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+G_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+F_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+D#
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+D_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+G_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+F_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+D#
	db			n_length+12,	n_cut
	db			n_length+3,	oct_4+G_
	db					n_cut
	db			n_length+3,	oct_4+F_
	db			n_length+1,	n_cut
	db			n_length+2,	oct_4+G_
	db			n_length+3,	oct_4+E_
	db			n_length+1,	n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+22,	n_cut
	db	sound_ret

Music_TitleScreen_PUL2:
	db	sound_main_loop_set
	db	instrument+i_sax1
	db	n_multi+4,	n_length+18,	n_cut
	db			n_length+4,	oct_3+G_
	db			n_length+20,	n_cut
	db			n_length+4,	oct_3+E_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_3+G_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_3+G_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_3+F_
	db			n_length+2,	n_cut
	db			n_length+3,	oct_3+F_
	db			n_length+1,	n_cut
	db			n_length+4,	oct_3+E_
	db			n_length+32,	n_cut
	db			n_length+3,	oct_3+G_
	db			n_length+21,	n_cut
	db			n_length+4,	oct_3+E_
	db			n_length+8,	n_cut
	db			n_length+3,	oct_3+G_
	db					n_cut
	db			n_length+6,	oct_3+G_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_3+F_
	db			n_length+2,	n_cut
	db			n_length+3,	oct_3+F_
	db			n_length+1,	n_cut
	db			n_length+3,	oct_3+E_
	db			n_length+27,	n_cut
	db			n_length+1,	oct_3+G_
	db			n_length+5,	n_cut
	db			n_length+2,	oct_3+G_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_3+F_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+C_
	db					n_cut
	db			n_length+1,	oct_3+D#
	db			n_length+5,	n_cut
	db			n_length+4,	oct_3+B_
	db			n_length+2,	n_cut
	db					oct_3+G_
	db			n_length+10,	n_cut
	db			n_length+1,	oct_3+G_
	db			n_length+5,	n_cut
	db			n_length+1,	oct_3+G_
	db			n_length+5,	n_cut
	db			n_length+2,	oct_3+F_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+D#
	db			n_length+4,	n_cut
	db			n_length+2,	oct_3+D#
	db					n_cut
	db			n_length+4,	oct_4+D_
	db			n_length+2,	n_cut
	db					oct_3+D_
	db			n_length+4,	n_cut
	db			n_length+3,	oct_4+C_
	db					n_cut
	db			n_length+1,	oct_3+G_
	db			n_length+5,	n_cut
	db			n_length+2,	oct_3+G_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_3+F_
	db			n_length+6,	n_cut
	db			n_length+3,	oct_4+C_
	db			n_length+1,	n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_4+C_
	db			n_length+3,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+2,	n_cut
	db			n_length+2,	oct_3+D_
	db			n_length+6,	n_cut
	db			n_length+5,	oct_3+G_
	db			n_length+1,	n_cut
	db			n_length+4,	oct_3+G_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_3+F_
	db			n_length+2,	n_cut
	db			n_length+3,	oct_3+G_
	db			n_length+1,	n_cut
	db			n_length+4,	oct_3+E_
	db			n_length+26,	n_cut
	db	n_multi+2,	n_length+2,	oct_3+G_
	db			n_length+10,	n_cut
	db			n_length+4,	oct_3+G_
	db			n_length+8,	n_cut
	db			n_length+4,	oct_3+F_
	db			n_length+12,	n_cut
	db			n_length+4,	oct_4+C_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+10,	n_cut
	db			n_length+8,	oct_3+B_
	db			n_length+4,	n_cut
	db					oct_3+D_
	db			n_length+20,	n_cut
	db			n_length+2,	oct_3+G_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_3+G_
	db			n_length+10,	n_cut
	db			n_length+4,	oct_3+F_
	db			n_length+12,	n_cut
	db			n_length+4,	oct_4+D#
	db					n_cut
	db					oct_3+D#
	db			n_length+8,	n_cut
	db					oct_4+D_
	db			n_length+4,	n_cut
	db					oct_3+D_
	db			n_length+8,	n_cut
	db			n_length+6,	oct_4+C_
	db					n_cut
	db			n_length+3,	oct_3+G_
	db			n_length+9,	n_cut
	db			n_length+4,	oct_3+G_
	db			n_length+8,	n_cut
	db			n_length+4,	oct_3+F_
	db			n_length+12,	n_cut
	db			n_length+3,	oct_4+C_
	db			n_length+5,	n_cut
	db			n_length+4,	oct_3+D#
	db			n_length+3,	oct_4+C_
	db			n_length+5,	n_cut
	db			n_length+8,	oct_4+C_
	db			n_length+4,	n_cut
	db					oct_3+D_
	db			n_length+12,	n_cut
	db			n_length+10,	oct_3+G_
	db			n_length+2,	n_cut
	db			n_length+8,	oct_3+G_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+F_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_3+G_
	db			n_length+2,	n_cut
	db			n_length+8,	oct_3+E_
	db	n_multi+4,	n_length+22,	n_cut
	db			n_length+3,	oct_3+A_
	db			n_length+7,	n_cut
	db			n_length+9,	oct_3+A_
	db			n_length+3,	n_cut
	db			n_length+6,	oct_3+A#
	db			n_length+2,	n_cut
	db			n_length+4,	oct_3+A#
	db			n_length+2,	n_cut
	db					oct_3+A#
	db			n_length+4,	n_cut
	db			n_length+2,	oct_3+A_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_3+A_
	db			n_length+8,	n_cut
	db					oct_3+A_
	db			n_length+6,	n_cut
	db			n_length+4,	oct_3+G#
	db			n_length+2,	n_cut
	db			n_length+3,	oct_3+A_
	db			n_length+1,	n_cut
	db	n_multi+2,	n_length+8,	oct_3+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+A_
	db			n_length+4,	n_cut
	db					oct_3+A_
	db			n_length+20,	n_cut
	db					oct_3+A_
	db			n_length+4,	n_cut
	db			n_length+12,	oct_3+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+A#
	db			n_length+4,	n_cut
	db					oct_3+A#
	db					n_cut
	db			n_length+6,	oct_3+A_
	db					n_cut
	db			n_length+2,	oct_3+A_
	db			n_length+22,	n_cut
	db			n_length+18,	oct_3+A_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+D#
	db					n_cut
	db			n_length+4,	oct_4+E_
	db					oct_4+G_
	db					oct_4+D#
	db					oct_4+E_
	db					oct_4+G_
	db					oct_4+D#
	db					oct_3+D#
	db					oct_3+E_
	db					oct_3+G_
	db			n_length+8,	oct_3+A_
	db					n_cut
	db			n_length+3,	oct_3+G_
	db			n_length+9,	n_cut
	db			n_length+4,	oct_3+G_
	db			n_length+8,	n_cut
	db			n_length+4,	oct_3+F_
	db			n_length+12,	n_cut
	db			n_length+4,	oct_4+C_
	db					n_cut
	db			n_length+3,	oct_3+D#
	db			n_length+9,	n_cut
	db			n_length+8,	oct_4+C_
	db			n_length+4,	n_cut
	db					oct_3+G_
	db			n_length+20,	n_cut
	db			n_length+3,	oct_3+G_
	db			n_length+9,	n_cut
	db			n_length+3,	oct_3+G_
	db			n_length+9,	n_cut
	db			n_length+4,	oct_3+F_
	db			n_length+12,	n_cut
	db			n_length+4,	oct_4+D#
	db			n_length+8,	n_cut
	db			n_length+4,	oct_3+D#
	db					n_cut
	db			n_length+8,	oct_4+D_
	db			n_length+4,	n_cut
	db					oct_3+D_
	db			n_length+8,	n_cut
	db			n_length+6,	oct_4+C_
	db					n_cut
	db			n_length+2,	oct_3+G_
	db			n_length+10,	n_cut
	db			n_length+4,	oct_3+G_
	db			n_length+8,	n_cut
	db			n_length+4,	oct_3+F_
	db			n_length+12,	n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+6,	n_cut
	db			n_length+4,	oct_3+D#
	db			n_length+3,	oct_4+C_
	db			n_length+5,	n_cut
	db			n_length+8,	oct_4+C_
	db			n_length+4,	n_cut
	db					oct_3+D_
	db			n_length+12,	n_cut
	db			n_length+10,	oct_3+G_
	db			n_length+2,	n_cut
	db			n_length+8,	oct_3+G_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+F_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_3+G_
	db			n_length+2,	n_cut
	db			n_length+8,	oct_3+E_
	db	n_multi+4,	n_length+32,	n_cut
	db	n_multi+2,	n_length+3,	oct_3+C_
	db			n_length+21,	n_cut
	db			n_length+4,	oct_2+A#
	db			n_length+20,	n_cut
	db			n_length+4,	oct_2+G#
	db			n_length+20,	n_cut
	db			n_length+3,	oct_2+G_
	db			n_length+21,	n_cut
	db			n_length+3,	oct_3+C_
	db			n_length+21,	n_cut
	db			n_length+4,	oct_2+A#
	db			n_length+20,	n_cut
	db			n_length+4,	oct_2+G#
	db			n_length+20,	n_cut
	db			n_length+3,	oct_2+G_
	db			n_length+21,	n_cut
	db			n_length+3,	oct_3+C_
	db			n_length+21,	n_cut
	db			n_length+4,	oct_2+A#
	db			n_length+20,	n_cut
	db			n_length+4,	oct_2+G#
	db			n_length+24,	n_cut
	db			n_length+4,	oct_2+G_
	db	n_multi+4,	n_length+22,	n_cut
	db			n_length+16,	n_cut
	db	sound_ret

Music_TitleScreen_TRI:
	db	sound_main_loop_set
	db	lnr_ratio+31
	db	n_multi+4,	n_length+2,	oct_3+G_
	db			n_length+4,	oct_3+A_
	db			n_length+1,	oct_3+G_
	db					n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+6,	n_cut
	db			n_length+4,	oct_4+D#
	db			n_length+2,	n_cut
	db			n_length+2,	oct_3+G_
	db			n_length+4,	oct_3+A_
	db			n_length+1,	oct_3+G_
	db					n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+6,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_4+C_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+2,	n_cut
	db			n_length+3,	oct_4+C_
	db			n_length+1,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+14,	n_cut
	db			n_length+2,	oct_3+G_
	db			n_length+4,	oct_3+A_
	db					oct_4+C_
	db			n_length+8,	n_cut
	db			n_length+4,	oct_4+D#
	db			n_length+2,	n_cut
	db			n_length+1,	oct_3+G_
	db					n_cut
	db			n_length+4,	oct_3+A_
	db			n_length+1,	oct_3+G_
	db					n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+6,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_4+C_
	db			n_length+4,	oct_4+C_
	db					n_cut
	db			n_length+3,	oct_4+C_
	db			n_length+1,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+26,	n_cut
	db	n_multi+5,	n_length+1,	oct_4+G_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+2,	oct_4+A_
	db					oct_5+C_
	db					oct_4+G_
	db					oct_5+D#
	db					n_cut
	db					oct_5+C_
	db	n_multi+4,	n_length+4,	n_cut
	db	n_multi+5,	n_length+1,	oct_4+G_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+3,	oct_5+D#
	db			n_length+7,	n_cut
	db			n_length+10,	oct_5+D_
	db			n_length+8,	n_cut
	db	n_multi+5,	n_length+1,	oct_4+G_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+2,	oct_4+A_
	db					oct_5+C_
	db					oct_4+G_
	db					oct_5+D#
	db					n_cut
	db					oct_5+C_
	db	n_multi+4,	n_length+4,	n_cut
	db	n_multi+5,	n_length+1,	oct_4+G_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+4,	oct_5+G_
	db			n_length+6,	n_cut
	db					oct_5+G_
	db					n_cut
	db	n_multi+4,	n_length+3,	oct_5+E_
	db					n_cut
	db	n_multi+5,	n_length+1,	oct_4+G_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+2,	oct_4+A_
	db					oct_5+C_
	db					oct_4+G_
	db					oct_5+D#
	db					n_cut
	db					oct_5+C_
	db	n_multi+4,	n_length+4,	n_cut
	db	n_multi+5,	n_length+1,	oct_4+G_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+2,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+2,	oct_5+D#
	db					n_cut
	db			n_length+11,	oct_5+F_
	db			n_length+3,	n_cut
	db	n_multi+2,	n_length+1,	oct_5+D#
	db			n_length+7,	oct_5+E_
	db			n_length+4,	oct_5+G_
	db			n_length+1,	oct_5+D#
	db			n_length+7,	oct_5+E_
	db			n_length+4,	oct_5+G_
	db			n_length+1,	oct_5+D#
	db			n_length+7,	oct_5+E_
	db	n_multi+5,	n_length+1,	oct_5+C_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+3,	oct_4+A#
	db			n_length+1,	n_cut
	db			n_length+3,	oct_5+C_
	db			n_length+27,	n_cut
	db	n_multi+5,	n_length+1,	oct_4+G_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+2,	oct_4+A_
	db					oct_5+C_
	db					oct_4+G_
	db					oct_5+D#
	db					n_cut
	db					oct_5+C_
	db			n_length+4,	n_cut
	db	n_multi+5,	n_length+1,	oct_4+G_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+3,	oct_5+D#
	db			n_length+7,	n_cut
	db			n_length+10,	oct_5+D_
	db			n_length+8,	n_cut
	db	n_multi+5,	n_length+1,	oct_4+G_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+2,	oct_4+A_
	db					oct_5+C_
	db					oct_4+G_
	db					oct_5+D#
	db					n_cut
	db					oct_5+C_
	db	n_multi+4,	n_length+4,	n_cut
	db	n_multi+5,	n_length+1,	oct_4+G_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+4,	oct_5+G_
	db			n_length+6,	n_cut
	db					oct_5+G_
	db					n_cut
	db			n_length+3,	oct_5+E_
	db					n_cut
	db	n_multi+5,	n_length+1,	oct_4+G_
	db	n_multi+3,	n_length+1,	n_cut
	db	n_multi+4,	n_length+2,	oct_4+A_
	db					oct_5+C_
	db					oct_4+G_
	db					oct_5+D#
	db					n_cut
	db					oct_5+C_
	db			n_length+4,	n_cut
	db	n_multi+5,	n_length+1,	oct_4+G_
	db	n_multi+3,	n_length+1,	n_cut
	db	n_multi+4,	n_length+2,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+2,	oct_5+D#
	db					n_cut
	db			n_length+11,	oct_5+F_
	db			n_length+3,	n_cut
	db	n_multi+2,	n_length+1,	oct_5+D#
	db			n_length+7,	oct_5+E_
	db			n_length+4,	oct_5+G_
	db			n_length+1,	oct_5+D#
	db			n_length+7,	oct_5+E_
	db			n_length+4,	oct_5+G_
	db			n_length+1,	oct_5+D#
	db			n_length+7,	oct_5+E_
	db	n_multi+5,	n_length+1,	oct_5+C_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+3,	oct_4+A#
	db			n_length+1,	n_cut
	db			n_length+3,	oct_5+C_
	db			n_length+11,	n_cut
	db	n_multi+3,	n_length+1,	oct_4+C_
	db					oct_4+D_
	db					oct_4+E_
	db					oct_4+F_
	db					oct_4+G_
	db					oct_4+A_
	db					oct_4+B_
	db					oct_5+C_
	db					oct_5+D_
	db					oct_5+E_
	db					oct_5+F_
	db					oct_5+G_
	db					oct_5+A_
	db					oct_5+B_
	db					oct_6+C_
	db					oct_6+D_
	db	n_multi+4,	n_length+25,	oct_5+G_
	db			n_length+3,	n_cut
	db			n_length+2,	oct_5+C_
	db			n_length+4,	oct_5+D#
	db			n_length+2,	oct_5+C_
	db			n_length+4,	oct_5+F_
	db			n_length+2,	oct_5+D#
	db			n_length+4,	oct_5+C_
	db			n_length+2,	oct_4+A#
	db			n_length+3,	oct_5+C_
	db			n_length+1,	n_cut
	db	n_multi+5,			oct_5+C_
	db	n_multi+19,			n_cut
	db	n_multi+4,	n_length+3,	oct_5+C_
	db					n_cut
	db			n_length+4,	oct_5+A#
	db					n_cut
	db					n_cut
	db	n_multi+5,	n_length+1,	oct_5+C_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+4,	oct_5+A_
	db			n_length+6,	n_cut
	db	n_multi+5,	n_length+1,	oct_5+C_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+4,	oct_5+G_
	db			n_length+6,	n_cut
	db	n_multi+5,	n_length+1,	oct_5+C_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+4,	oct_5+F_
	db			n_length+6,	n_cut
	db	n_multi+5,	n_length+1,	oct_5+C_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+4,	oct_5+D#
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+G_
	db			n_length+4,	oct_4+A#
	db			n_length+1,	oct_5+C_
	db					n_cut
	db			n_length+4,	oct_5+D#
	db	n_multi+2,	n_length+3,	oct_5+D_
	db			n_length+9,	n_cut
	db			n_length+4,	oct_5+C_
	db			n_length+2,	oct_5+D#
	db					n_cut
	db					oct_5+D#
	db					n_cut
	db					oct_5+D#
	db					n_cut
	db			n_length+4,	oct_5+D#
	db					n_cut
	db			n_length+2,	oct_4+A#
	db					n_cut
	db			n_length+4,	oct_5+C_
	db					n_cut
	db			n_length+6,	oct_5+C_
	db			n_length+18,	n_cut
	db			n_length+3,	oct_5+A#
	db			n_length+9,	n_cut
	db			n_length+4,	oct_5+A#
	db			n_length+8,	n_cut
	db			n_length+2,	oct_5+A#
	db					n_cut
	db			n_length+8,	oct_5+B_
	db			n_length+4,	oct_6+C_
	db			n_length+8,	n_cut
	db	n_multi+5,	n_length+1,	oct_4+G_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+2,	oct_4+A_
	db					oct_5+C_
	db					oct_4+G_
	db					oct_5+D#
	db					n_cut
	db					oct_5+C_
	db			n_length+4,	n_cut
	db	n_multi+5,	n_length+1,	oct_4+G_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+3,	oct_5+D#
	db			n_length+7,	n_cut
	db			n_length+10,	oct_5+D_
	db			n_length+8,	n_cut
	db	n_multi+5,	n_length+1,	oct_4+G_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+2,	oct_4+A_
	db					oct_5+C_
	db					oct_4+G_
	db					oct_5+D#
	db					n_cut
	db					oct_5+C_
	db	n_multi+4,	n_length+4,	n_cut
	db	n_multi+5,	n_length+1,	oct_4+G_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+4,	oct_5+G_
	db			n_length+6,	n_cut
	db					oct_5+G_
	db					n_cut
	db			n_length+3,	oct_5+E_
	db					n_cut
	db	n_multi+5,	n_length+1,	oct_4+G_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+2,	oct_4+A_
	db					oct_5+C_
	db					oct_4+G_
	db					oct_5+D#
	db					n_cut
	db					oct_5+C_
	db			n_length+4,	n_cut
	db	n_multi+5,	n_length+1,	oct_4+G_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+2,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+2,	oct_5+D#
	db					n_cut
	db			n_length+11,	oct_5+F_
	db			n_length+3,	n_cut
	db	n_multi+2,	n_length+1,	oct_5+D#
	db			n_length+7,	oct_5+E_
	db			n_length+4,	oct_5+G_
	db			n_length+1,	oct_5+D#
	db			n_length+7,	oct_5+E_
	db			n_length+4,	oct_5+G_
	db			n_length+1,	oct_5+D#
	db			n_length+7,	oct_5+E_
	db	n_multi+5,	n_length+1,	oct_5+C_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+3,	oct_4+A#
	db			n_length+1,	n_cut
	db			n_length+3,	oct_5+C_
	db			n_length+23,	n_cut
	db			n_length+16,	n_cut
	db	n_multi+5,	n_length+1,	oct_5+C_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+4,	oct_5+D#
	db			n_length+2,	n_cut
	db			n_length+4,	oct_5+F_
	db			n_length+3,	oct_5+C_
	db			n_length+9,	n_cut
	db	n_multi+5,	n_length+1,	oct_5+C_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+4,	oct_5+D#
	db			n_length+2,	n_cut
	db			n_length+4,	oct_5+G_
	db			n_length+3,	oct_5+C_
	db			n_length+9,	n_cut
	db	n_multi+5,	n_length+1,	oct_4+G_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+4,	oct_4+A#
	db			n_length+2,	n_cut
	db			n_length+4,	oct_4+A#
	db			n_length+2,	n_cut
	db			n_length+4,	oct_4+A#
	db					oct_5+C_
	db			n_length+2,	n_cut
	db	n_multi+5,	n_length+1,	oct_4+G_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+3,	oct_4+A#
	db			n_length+1,	n_cut
	db	n_multi+5,			oct_4+G_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+4,	oct_5+D#
	db			n_length+3,	oct_5+C_
	db			n_length+9,	n_cut
	db			n_length+2,	oct_4+G_
	db			n_length+4,	oct_4+A#
	db			n_length+2,	n_cut
	db			n_length+4,	oct_5+G_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_5+G_
	db			n_length+7,	oct_5+F_
	db					n_cut
	db	n_multi+5,	n_length+1,	oct_5+D#
	db	n_multi+3,			n_cut
	db	n_multi+5,			oct_5+E_
	db	n_multi+3,			n_cut
	db	n_multi+8,			oct_5+G_
	db	n_multi+5,			oct_5+D#
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+2,	oct_5+E_
	db					oct_5+G_
	db			n_length+1,	oct_5+D#
	db					n_cut
	db			n_length+2,	oct_5+E_
	db	n_multi+5,	n_length+1,	oct_5+C_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+4,	oct_4+A#
	db	n_multi+5,	n_length+1,	oct_4+G_
	db	n_multi+3,			n_cut
	db	n_multi+4,	n_length+4,	oct_4+A#
	db			n_length+2,	n_cut
	db			n_length+4,	oct_4+B_
	db			n_length+6,	oct_5+C_
	db	sound_ret

Music_TitleScreen_NSE:
	db	sound_main_loop_set
	db	n_multi+4,	n_length+2,	n_cut
	db			n_length+6,	$03
	db	sound_loop+3
	db	n_multi+4,	n_length+2,	$03
	db					$04
	db					$03
	db			n_length+4,	$04
	db			n_length+2,	$03
	db					$04
	db					$03
	db					$04
	db			n_length+4,	$03
	db			n_length+2,	$04
	db			n_length+4,	$03
	db			n_length+2,	$04
	db			n_length+4,	$03
	db			n_length+2,	$04
	db			n_length+4,	$03
	db			n_length+2,	$04
	db			n_length+4,	$03
	db			n_length+2,	$04
	db	sound_loop_break
	db	n_multi+4,	n_length+2,	$03
	db					$04
	db					$03
	db			n_length+4,	$04
	db			n_length+2,	$03
	db					$04
	db					$03
	db					$04
	db			n_length+4,	$03
	db			n_length+14,	$04
	db	sound_loop+6
	db	n_multi+4,	n_length+2,	$02
	db	sound_loop_break
	db	sound_loop+2
	db	n_multi+4,	n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$04
	db			n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$02
	db	sound_loop_break
	db	sound_loop+2
	db	n_multi+4,	n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$02
	db	sound_loop_break
	db	sound_loop+3
	db	n_multi+4,	n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$04
	db			n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$02
	db	sound_loop_break
	db	n_multi+4,	n_length+6,	$02
	db	sound_loop+2
	db	n_multi+4,	n_length+4,	$02
	db			n_length+2,	$04
	db					$02
	db					$02
	db					$02
	db	sound_loop_break
	db	n_multi+4,	n_length+2,	$02
	db					$02
	db					$02
	db			n_length+4,	$02
	db			n_length+2,	$02
	db			n_length+4,	$02
	db			n_length+2,	$01
	db	sound_loop+2
	db	n_multi+4,	n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$02
	db			n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$04
	db			n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$02
	db			n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$02
	db	sound_loop_break
	db	sound_loop+3
	db	n_multi+4,	n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$02
	db	sound_loop_break
	db	n_multi+4,	n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$04
	db	sound_loop+2
	db	n_multi+4,	n_length+4,	$01
	db			n_length+2,	$02
	db			n_length+4,	$02
	db			n_length+2,	$02
	db	sound_loop_break
	db	sound_loop+6
	db	n_multi+4,	n_length+2,	$02
	db	sound_loop_break
	db	n_multi+4,	n_length+12,	$02
	db			n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$02
	db	sound_loop+2
	db	n_multi+4,	n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$04
	db	sound_loop_break
	db	sound_loop+2
	db	n_multi+4,	n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$02
	db	sound_loop_break
	db	sound_loop+3
	db	n_multi+4,	n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$04
	db	sound_loop_break
	db	n_multi+4,	n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$02
	db	sound_loop+3
	db	n_multi+4,	n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$04
	db	sound_loop_break
	db	n_multi+4,	n_length+4,	$02
	db			n_length+2,	$02
	db			n_length+4,	$02
	db			n_length+2,	$02
	db			n_length+4,	$02
	db			n_length+6,	$02
	db			n_length+2,	$04
	db					$02
	db					$02
	db					$02
	db			n_length+4,	$02
	db			n_length+2,	$02
	db			n_length+4,	$03
	db			n_length+2,	$04
	db			n_length+4,	$03
	db			n_length+2,	$04
	db	sound_loop+2
	db	n_multi+4,	n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$04
	db			n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$02
	db	sound_loop_break
	db	sound_loop+2
	db	n_multi+4,	n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$02
	db	sound_loop_break
	db	sound_loop+3
	db	n_multi+4,	n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$04
	db			n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$02
	db	sound_loop_break
	db	n_multi+4,	n_length+4,	$02
	db			n_length+2,	$02
	db			n_length+4,	$02
	db			n_length+2,	$04
	db					$02
	db					$02
	db					$02
	db			n_length+4,	$02
	db			n_length+14,	$04
	db	sound_loop+6
	db	n_multi+4,	n_length+2,	$02
	db	sound_loop_break
	db	sound_loop+2
	db	n_multi+4,	n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$02
	db	sound_loop_break
	db	n_multi+4,	n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+6,	$02
	db	sound_loop+9
	db	n_multi+4,	n_length+4,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$02
	db	sound_loop_break
	db	n_multi+4,	n_length+4,	$02
	db			n_length+2,	$02
	db			n_length+4,	$02
	db			n_length+2,	$02
	db			n_length+4,	$02
	db			n_length+8,	$02
	db			n_length+2,	$02
	db					$02
	db					$02
	db					$02
	db					$02
	db					$04
	db			n_length+4,	$02
	db	sound_ret

Music_TitleScreen_DPCM:
	db	sound_main_loop_set
	db	n_multi+4,	n_length+18,	n_cut
	db			n_length+3,	oct_2+C_
	db			n_length+21,	n_cut
	db			n_length+3,	oct_2+C_
	db			n_length+9,	n_cut
	db			n_length+2,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+2,	n_cut
	db			n_length+5,	oct_2+D_
	db			n_length+1,	n_cut
	db			n_length+3,	oct_2+G_
	db			n_length+1,	n_cut
	db			n_length+4,	oct_2+C_
	db			n_length+32,	n_cut
	db			n_length+3,	oct_2+C_
	db			n_length+21,	n_cut
	db			n_length+3,	oct_2+C_
	db			n_length+9,	n_cut
	db			n_length+3,	oct_2+D#
	db					n_cut
	db			n_length+4,	oct_2+D#
	db			n_length+2,	n_cut
	db			n_length+1,	oct_2+D#
	db					n_cut
	db			n_length+5,	oct_2+D_
	db			n_length+1,	n_cut
	db			n_length+3,	oct_2+G_
	db			n_length+1,	n_cut
	db			n_length+4,	oct_2+C_
	db			n_length+22,	n_cut
	db			n_length+2,	oct_2+C_
	db					n_cut
	db			n_length+4,	oct_2+C_
	db			n_length+2,	n_cut
	db					oct_2+C_
	db			n_length+4,	oct_1+A#
	db			n_length+6,	n_cut
	db			n_length+2,	oct_1+A#
	db			n_length+4,	oct_1+G#
	db			n_length+6,	n_cut
	db			n_length+2,	oct_1+G#
	db			n_length+4,	oct_1+G_
	db			n_length+2,	oct_1+A_
	db			n_length+3,	oct_1+B_
	db			n_length+1,	n_cut
	db			n_length+3,	oct_2+C_
	db					n_cut
	db					oct_2+C_
	db					n_cut
	db			n_length+1,	oct_2+C_
	db					n_cut
	db			n_length+5,	oct_1+A#
	db					n_cut
	db			n_length+2,	oct_1+A#
	db			n_length+4,	oct_1+G#
	db			n_length+6,	n_cut
	db			n_length+2,	oct_1+G#
	db			n_length+4,	oct_1+G_
	db			n_length+2,	n_cut
	db					oct_1+G_
	db			n_length+1,	oct_1+A_
	db					n_cut
	db			n_length+2,	oct_1+B_
	db					oct_2+C_
	db					n_cut
	db					oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_2+C_
	db			n_length+4,	oct_1+A#
	db			n_length+6,	n_cut
	db			n_length+2,	oct_1+A#
	db			n_length+3,	oct_1+G#
	db			n_length+7,	n_cut
	db			n_length+2,	oct_1+G#
	db			n_length+5,	oct_1+G_
	db					n_cut
	db			n_length+1,	oct_1+G_
	db					n_cut
	db			n_length+3,	oct_1+G_
	db					n_cut
	db			n_length+5,	oct_1+G_
	db			n_length+1,	n_cut
	db			n_length+4,	oct_1+F_
	db			n_length+2,	n_cut
	db			n_length+3,	oct_1+G_
	db			n_length+1,	n_cut
	db			n_length+4,	oct_2+C_
	db			n_length+8,	n_cut
	db			n_length+4,	oct_1+G_
	db			n_length+2,	n_cut
	db					oct_1+A_
	db			n_length+3,	oct_1+B_
	db			n_length+1,	n_cut
	db			n_length+2,	oct_2+C_
	db			n_length+4,	n_cut
	db			n_length+4,	oct_2+C_
	db			n_length+2,	n_cut
	db					oct_2+C_
	db			n_length+4,	oct_1+A#
	db			n_length+6,	n_cut
	db			n_length+2,	oct_1+A#
	db			n_length+4,	oct_1+G#
	db			n_length+6,	n_cut
	db			n_length+2,	oct_1+G#
	db			n_length+4,	oct_1+G_
	db			n_length+2,	oct_1+A_
	db			n_length+3,	oct_1+B_
	db			n_length+1,	n_cut
	db			n_length+3,	oct_2+C_
	db					n_cut
	db					oct_2+C_
	db					n_cut
	db			n_length+1,	oct_2+C_
	db					n_cut
	db			n_length+5,	oct_1+A#
	db					n_cut
	db			n_length+2,	oct_1+A#
	db			n_length+4,	oct_1+G#
	db			n_length+6,	n_cut
	db			n_length+2,	oct_1+G#
	db			n_length+4,	oct_1+G_
	db			n_length+2,	n_cut
	db					oct_1+G_
	db			n_length+1,	oct_1+A_
	db					n_cut
	db			n_length+2,	oct_1+B_
	db					oct_2+C_
	db					n_cut
	db					oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_2+C_
	db			n_length+4,	oct_1+A#
	db			n_length+6,	n_cut
	db			n_length+2,	oct_1+A#
	db			n_length+3,	oct_1+G#
	db			n_length+7,	n_cut
	db			n_length+2,	oct_1+G#
	db			n_length+5,	oct_1+G_
	db					n_cut
	db			n_length+1,	oct_1+G_
	db					n_cut
	db			n_length+3,	oct_1+D#
	db					n_cut
	db			n_length+5,	oct_1+D#
	db			n_length+1,	n_cut
	db			n_length+4,	oct_1+D_
	db			n_length+2,	n_cut
	db			n_length+3,	oct_1+G_
	db			n_length+1,	n_cut
	db			n_length+4,	oct_2+C_
	db			n_length+22,	n_cut
	db			n_length+4,	oct_1+F_
	db			n_length+2,	oct_2+F_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_1+E_
	db			n_length+4,	oct_1+F_
	db			n_length+3,	oct_2+F_
	db					n_cut
	db			n_length+2,	oct_1+F#
	db			n_length+4,	oct_1+G_
	db			n_length+2,	oct_2+G_
	db			n_length+3,	oct_1+C_
	db			n_length+1,	n_cut
	db			n_length+2,	oct_2+C_
	db			n_length+4,	oct_1+D#
	db			n_length+2,	oct_2+D#
	db			n_length+4,	oct_1+E_
	db			n_length+2,	oct_2+E_
	db			n_length+4,	oct_1+F_
	db			n_length+2,	oct_2+F_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_1+E_
	db			n_length+4,	oct_1+F_
	db			n_length+2,	oct_2+F_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_1+E_
	db			n_length+3,	oct_1+G_
	db			n_length+1,	n_cut
	db			n_length+2,	oct_2+G_
	db			n_length+2,	oct_1+C_
	db					n_cut
	db					oct_2+C_
	db			n_length+4,	oct_1+D#
	db			n_length+2,	oct_2+D#
	db			n_length+4,	oct_1+E_
	db			n_length+2,	oct_2+E_
	db			n_length+4,	oct_1+F_
	db			n_length+2,	oct_2+F_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_1+E_
	db			n_length+4,	oct_1+F_
	db			n_length+2,	oct_2+F_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_1+F#
	db			n_length+4,	oct_1+G_
	db			n_length+2,	oct_2+G_
	db			n_length+3,	oct_1+C_
	db			n_length+1,	n_cut
	db			n_length+2,	oct_2+C_
	db			n_length+3,	oct_1+D#
	db			n_length+1,	n_cut
	db			n_length+2,	oct_2+D#
	db			n_length+4,	oct_1+E_
	db			n_length+2,	oct_2+E_
	db			n_length+4,	oct_1+F_
	db			n_length+2,	oct_2+F_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_1+F_
	db			n_length+3,	oct_2+F_
	db			n_length+1,	n_cut
	db			n_length+4,	oct_1+F_
	db			n_length+2,	n_cut
	db					oct_1+F#
	db			n_length+4,	oct_1+G_
	db			n_length+2,	oct_2+G_
	db			n_length+4,	n_cut
	db			n_length+3,	oct_2+G_
	db			n_length+3,	n_cut
	db			n_length+2,	oct_1+G_
	db			n_length+3,	oct_1+A#
	db			n_length+1,	n_cut
	db			n_length+2,	oct_1+B_
	db			n_length+2,	oct_2+C_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_2+C_
	db			n_length+2,	n_cut
	db					oct_2+C_
	db			n_length+4,	oct_1+A#
	db			n_length+6,	n_cut
	db			n_length+2,	oct_1+A#
	db			n_length+4,	oct_1+G#
	db			n_length+6,	n_cut
	db			n_length+2,	oct_1+G#
	db			n_length+4,	oct_1+G_
	db			n_length+2,	oct_1+A_
	db			n_length+3,	oct_1+B_
	db			n_length+1,	n_cut
	db			n_length+3,	oct_2+C_
	db					n_cut
	db					oct_2+C_
	db					n_cut
	db			n_length+1,	oct_2+C_
	db					n_cut
	db			n_length+5,	oct_1+A#
	db					n_cut
	db			n_length+2,	oct_1+A#
	db			n_length+4,	oct_1+G#
	db			n_length+6,	n_cut
	db			n_length+2,	oct_1+G#
	db			n_length+4,	oct_1+G_
	db			n_length+2,	n_cut
	db					oct_1+G_
	db			n_length+1,	oct_1+A_
	db					n_cut
	db			n_length+2,	oct_1+B_
	db					oct_2+C_
	db					n_cut
	db					oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_2+C_
	db			n_length+4,	oct_1+A#
	db			n_length+6,	n_cut
	db			n_length+2,	oct_1+A#
	db			n_length+3,	oct_1+G#
	db			n_length+7,	n_cut
	db			n_length+2,	oct_1+G#
	db			n_length+5,	oct_1+G_
	db					n_cut
	db			n_length+1,	oct_1+G_
	db					n_cut
	db			n_length+3,	oct_1+D#
	db					n_cut
	db			n_length+5,	oct_1+D#
	db			n_length+1,	n_cut
	db			n_length+4,	oct_1+D_
	db			n_length+2,	n_cut
	db			n_length+3,	oct_1+G_
	db			n_length+1,	n_cut
	db			n_length+4,	oct_2+C_
	db			n_length+22,	n_cut
	db			n_length+4,	oct_2+C_
	db			n_length+2,	oct_3+C_
	db			n_length+4,	oct_2+C_
	db			n_length+2,	oct_3+C_
	db			n_length+4,	oct_1+A#
	db			n_length+2,	oct_2+A#
	db			n_length+4,	oct_1+A#
	db			n_length+2,	oct_2+A#
	db			n_length+4,	oct_1+G#
	db			n_length+2,	oct_2+G#
	db			n_length+4,	oct_1+G#
	db			n_length+2,	oct_2+G#
	db			n_length+4,	oct_1+G_
	db			n_length+2,	oct_2+G_
	db			n_length+4,	oct_1+G_
	db			n_length+2,	oct_2+G_
	db			n_length+4,	oct_2+C_
	db			n_length+2,	oct_3+C_
	db			n_length+4,	oct_2+C_
	db			n_length+2,	oct_3+C_
	db			n_length+4,	oct_1+A#
	db			n_length+2,	oct_2+A#
	db			n_length+4,	oct_1+A#
	db			n_length+2,	oct_2+A#
	db			n_length+4,	oct_1+G#
	db			n_length+2,	oct_2+G#
	db			n_length+4,	oct_1+G#
	db			n_length+2,	oct_2+G#
	db			n_length+4,	oct_1+G_
	db			n_length+2,	oct_2+G_
	db			n_length+4,	oct_1+G_
	db			n_length+2,	oct_2+G_
	db			n_length+4,	oct_2+C_
	db			n_length+2,	oct_3+C_
	db			n_length+4,	oct_2+C_
	db			n_length+2,	oct_3+C_
	db			n_length+4,	oct_1+A#
	db			n_length+2,	oct_2+A#
	db			n_length+4,	oct_1+A#
	db			n_length+2,	oct_2+A#
	db			n_length+4,	oct_1+G#
	db			n_length+2,	oct_2+G#
	db			n_length+4,	oct_1+G#
	db			n_length+2,	oct_2+G#
	db			n_length+4,	oct_1+G_
	db			n_length+2,	oct_2+G_
	db			n_length+5,	oct_1+G_
	db			n_length+1,	n_cut
	db			n_length+3,	oct_2+G_
	db					n_cut
	db					oct_2+F_
	db			n_length+1,	n_cut
	db					oct_2+G_
	db					n_cut
	db			n_length+2,	oct_2+E_
	db					n_cut
	db			n_length+3,	oct_2+C_
	db			n_length+5,	n_cut
	db			n_length+3,	oct_2+A_
	db					n_cut
	db			n_length+4,	oct_2+B_
	db					oct_3+C_
	db			n_length+2,	n_cut
	db	sound_ret
