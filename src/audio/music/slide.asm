Music_Slide:
	channels_tempo PUL1, PUL2, TRI, NSE, DPCM, 224
	dw Music_Slide_PUL1
	dw Music_Slide_PUL2
	dw Music_Slide_TRI
	dw Music_Slide_NSE
	dw Music_Slide_DPCM

Music_Slide_PUL1:
	db	sound_main_loop_set
	db	instrument+i_organ1
	db	n_multi+1,	n_length+24,	oct_4+E_
	db					oct_4+D#
	db					oct_4+D_
	db					oct_4+C#
	db					oct_4+C_
	db					oct_3+B_
	db					oct_3+A#
	db					oct_3+A_
	db					oct_3+G#
	db					oct_3+G_
	db					oct_3+F#
	db					oct_3+F_
	db					oct_3+E_
	db					oct_3+D#
	db					oct_3+D_
	db					oct_3+C#
	db					oct_3+C_
	db					oct_2+B_
	db					oct_2+A#
	db					oct_2+A_
	db					oct_2+G#
	db					oct_2+G_
	db					oct_2+F#
	db					oct_2+F_
	db					oct_2+E_
	db					oct_2+D#
	db					oct_2+D_
	db					oct_2+C#
	db					oct_2+C_
	db					oct_1+B_
	db					oct_1+A#
	db					oct_1+A_
	db	sound_ret

Music_Slide_PUL2:
	db	sound_main_loop_set
	db	instrument+i_organ1
	db	n_multi+1,	n_length+24,	oct_3+A#
	db					oct_3+A_
	db					oct_3+G#
	db					oct_3+G_
	db					oct_3+F#
	db					oct_3+F_
	db					oct_3+E_
	db					oct_3+D#
	db					oct_3+D_
	db					oct_3+C#
	db					oct_3+C_
	db					oct_2+B_
	db					oct_2+A#
	db					oct_2+A_
	db					oct_2+G#
	db					oct_2+G_
	db					oct_2+F#
	db					oct_2+F_
	db					oct_2+E_
	db					oct_2+D#
	db					oct_2+D_
	db					oct_2+C#
	db					oct_2+C_
	db					oct_1+B_
	db					oct_1+A#
	db					oct_1+A_
	db					oct_1+G#
	db					oct_1+G_
	db					oct_1+F#
	db					oct_1+F_
	db					oct_1+E_
	db					oct_1+D#
	db	sound_ret

Music_Slide_TRI:
	db	sound_main_loop_set
	db	lnr_ratio+20
	db	n_multi+1,	n_length+32,	n_cut
	db			n_length+15,	n_cut
	db			n_length+4,	oct_5+G#
	db					oct_5+G_
	db					oct_5+F_
	db			n_length+4,	oct_5+D#
	db					oct_5+D_
	db					oct_5+C#
	db					oct_5+C_
	db			n_length+5,	oct_4+B_
	db					oct_4+A#
	db					oct_4+A_
	db					oct_4+G#
	db			n_length+4,	oct_4+G_
	db					oct_4+F#
	db					oct_4+F_
	db			n_length+5,	oct_4+E_
	db			n_length+4,	oct_4+D#
	db					oct_4+D_
	db					oct_4+C#
	db					oct_4+C_
	db			n_length+5,	oct_3+B_
	db					oct_3+A#
	db			n_length+4,	oct_5+G#
	db					oct_5+G_
	db					oct_5+F#
	db					oct_5+F_
	db			n_length+5,	oct_5+E_
	db					oct_5+D#
	db			n_length+4,	oct_5+D_
	db					oct_5+C#
	db					oct_5+C_
	db			n_length+5,	oct_4+B_
	db			n_length+4,	oct_4+A#
	db			n_length+5,	oct_5+F#
	db			n_length+4,	oct_5+F_
	db					oct_5+E_
	db			n_length+3,	oct_5+D#
	db			n_length+4,	oct_5+D_
	db					oct_5+C#
	db			n_length+3,	oct_5+C_
	db			n_length+4,	oct_4+B_
	db			n_length+3,	oct_4+A#
	db			n_length+4,	oct_4+A_
	db			n_length+3,	oct_5+F#
	db					oct_5+F_
	db			n_length+4,	oct_5+E_
	db			n_length+3,	oct_5+D#
	db					oct_5+D_
	db			n_length+4,	oct_5+C#
	db			n_length+3,	oct_5+C_
	db			n_length+2,	oct_4+B_
	db					oct_4+A#
	db					oct_4+A_
	db					oct_4+G#
	db			n_length+4,	oct_4+G_
	db					oct_5+F_
	db			n_length+2,	oct_5+E_
	db					oct_5+D#
	db					oct_5+D_
	db					oct_5+C#
	db					oct_5+C_
	db			n_length+4,	oct_4+B_
	db			n_length+2,	oct_4+A#
	db					oct_4+A_
	db					oct_4+G#
	db			n_length+1,	oct_4+G_
	db			n_length+3,	oct_4+F#
	db			n_length+1,	oct_4+F_
	db			n_length+2,	oct_4+E_
	db					oct_4+D#
	db			n_length+2,	oct_4+D_
	db					oct_4+C#
	db					oct_4+C_
	db					oct_3+B_
	db					oct_3+A#
	db					oct_3+A_
	db			n_length+3,	oct_3+G#
	db					oct_3+G_
	db					oct_3+F#
	db			n_length+4,	oct_3+F_
	db			n_length+3,	oct_3+E_
	db					oct_3+D#
	db			n_length+2,	oct_3+D_
	db			n_length+3,	oct_3+C#
	db			n_length+2,	oct_3+C_
	db					oct_2+B_
	db					oct_2+A#
	db					oct_2+A_
	db					oct_2+G#
	db			n_length+3,	oct_2+G_
	db					oct_2+F#
	db			n_length+4,	oct_2+F_
	db			n_length+3,	oct_2+E_
	db					oct_2+D#
	db			n_length+2,	oct_2+D_
	db			n_length+3,	oct_2+C#
	db			n_length+2,	oct_2+C_
	db					oct_1+B_
	db					oct_1+A#
	db					oct_1+A_
	db					oct_1+G#
	db	sound_ret

Music_Slide_NSE:
	db	sound_main_loop_set
	db	n_multi+1,	n_length+3,	$09
	db	sound_ret

Music_Slide_DPCM:
	db	sound_main_loop_set
	db	n_multi+1,	n_length+24,	oct_3+B_
	db					oct_3+A#
	db					oct_3+A_
	db					oct_3+G#
	db					oct_3+G_
	db					oct_3+F#
	db					oct_3+F_
	db					oct_3+E_
	db					oct_3+D#
	db					oct_3+D_
	db					oct_3+C#
	db					oct_3+C_
	db					oct_2+B_
	db					oct_2+A#
	db					oct_2+A_
	db					oct_2+G#
	db					oct_2+G_
	db					oct_2+F#
	db					oct_2+F_
	db					oct_2+E_
	db					oct_2+D#
	db					oct_2+D_
	db					oct_2+C#
	db					oct_2+C_
	db					oct_1+B_
	db					oct_1+A#
	db					oct_1+A_
	db					oct_1+G#
	db					oct_1+G_
	db					oct_1+F#
	db					oct_1+F_
	db					oct_1+E_
	db	sound_ret
