Music_FairMain:
	channels_tempo PUL1, PUL2, TRI, NSE, DPCM, 112
	dw Music_FairMain_PUL1
	dw Music_FairMain_PUL2
	dw Music_FairMain_TRI
	dw Music_FairMain_NSE
	dw Music_FairMain_DPCM

Music_FairMain_PUL1:
	db	instrument+i_organ1
	db	sound_loop+2
	db	n_multi+6,	n_length+8,	n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+C_
	db					n_cut
	db					oct_4+C_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+C_
	db					n_cut
	db					oct_4+C_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+14,	n_cut
	db	sound_loop_break
	db	sound_main_loop_set
	db	instrument+i_organ1
	db	n_multi+6,	n_length+4,	oct_4+E_
	db					n_cut
	db					oct_4+E_
	db					oct_3+G_
	db			n_length+2,	oct_4+C_
	db					n_cut
	db			n_length+4,	oct_4+D_
	db					oct_4+E_
	db			n_length+2,	oct_3+G_
	db					n_cut
	db					oct_3+G_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_3+G_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db			n_length+4,	oct_4+E_
	db			n_length+2,	oct_3+G_
	db					n_cut
	db					oct_4+E_
	db					n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+2,	oct_4+D_
	db					n_cut
	db			n_length+2,	oct_4+E_
	db					n_cut
	db			n_length+4,	oct_4+F_
	db			n_length+2,	oct_3+G_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db			n_length+4,	oct_4+D_
	db			n_length+2,	oct_3+G_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db					oct_4+F_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db					oct_4+F_
	db					n_cut
	db			n_length+4,	oct_4+D_
	db			n_length+2,	oct_4+E_
	db					n_cut
	db			n_length+2,	oct_4+F_
	db					n_cut
	db			n_length+4,	oct_4+G_
	db			n_length+2,	oct_3+G_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db			n_length+4,	oct_4+G_
	db			n_length+2,	oct_3+G_
	db					n_cut
	db					oct_4+G_
	db					n_cut
	db			n_length+4,	oct_4+F_
	db					n_cut
	db					oct_4+F_
	db					oct_4+E_
	db					oct_4+F_
	db					oct_4+E_
	db			n_length+2,	oct_4+D_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db			n_length+2,	oct_3+G_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_3+G_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db			n_length+4,	oct_4+C_
	db					n_cut
	db					oct_4+E_
	db					oct_3+G_
	db			n_length+2,	oct_4+C_
	db					n_cut
	db			n_length+4,	oct_4+D_
	db					oct_4+E_
	db			n_length+2,	oct_3+G_
	db					n_cut
	db			n_length+2,	oct_3+G_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_3+G_
	db					n_cut
	db			n_length+2,	oct_3+G_
	db					n_cut
	db			n_length+4,	oct_4+E_
	db			n_length+2,	oct_3+G_
	db					n_cut
	db					oct_4+E_
	db					n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+2,	oct_4+D_
	db					n_cut
	db					oct_4+E_
	db					n_cut
	db			n_length+4,	oct_4+F_
	db			n_length+2,	oct_3+G_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db			n_length+4,	oct_4+D_
	db			n_length+2,	oct_3+G_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db					oct_4+F_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db					oct_4+F_
	db					n_cut
	db			n_length+4,	oct_4+D_
	db			n_length+2,	oct_4+E_
	db					n_cut
	db					oct_4+F_
	db					n_cut
	db			n_length+4,	oct_4+G_
	db			n_length+2,	oct_3+G_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db			n_length+4,	oct_4+A_
	db			n_length+2,	oct_3+G_
	db					n_cut
	db			n_length+2,	oct_4+G_
	db					n_cut
	db			n_length+4,	oct_4+F_
	db			n_length+2,	oct_3+F_
	db					n_cut
	db					oct_3+F_
	db					n_cut
	db			n_length+4,	oct_4+G_
	db			n_length+2,	oct_3+G_
	db					n_cut
	db					oct_4+E_
	db					n_cut
	db					oct_4+C_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db					oct_3+E_
	db					n_cut
	db	n_multi+4,	n_length+4,	oct_3+C_
	db			n_length+14,	n_cut
	db	instrument+i_organ1
	db	n_multi+6,	n_length+9,	oct_4+C_
	db			n_length+3,	n_cut
	db			n_length+9,	oct_4+E_
	db			n_length+3,	n_cut
	db			n_length+9,	oct_4+E_
	db			n_length+3,	n_cut
	db			n_length+9,	oct_3+B_
	db			n_length+3,	n_cut
	db			n_length+9,	oct_4+C#
	db			n_length+3,	n_cut
	db			n_length+9,	oct_4+F_
	db			n_length+3,	n_cut
	db			n_length+9,	oct_4+E_
	db			n_length+3,	n_cut
	db			n_length+9,	oct_3+A_
	db			n_length+3,	n_cut
	db			n_length+9,	oct_3+B_
	db			n_length+3,	n_cut
	db			n_length+9,	oct_4+F_
	db			n_length+3,	n_cut
	db			n_length+9,	oct_4+E_
	db			n_length+3,	n_cut
	db			n_length+9,	oct_4+C#
	db			n_length+3,	n_cut
	db			n_length+9,	oct_4+F#
	db			n_length+3,	n_cut
	db			n_length+9,	oct_4+F#
	db			n_length+3,	n_cut
	db			n_length+9,	oct_4+F_
	db			n_length+3,	n_cut
	db			n_length+2,	oct_4+F_
	db					n_cut
	db					oct_4+F_
	db					n_cut
	db					oct_4+F_
	db					n_cut
	db	instrument+i_organ1
	db	n_multi+2,	n_length+11,	oct_4+E_
	db			n_length+13,	n_cut
	db	n_multi+6,	n_length+4,	oct_4+E_
	db					oct_3+G_
	db			n_length+2,	oct_4+C_
	db					n_cut
	db			n_length+4,	oct_4+D_
	db					oct_4+E_
	db			n_length+2,	oct_3+G_
	db					n_cut
	db					oct_3+G_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_3+G_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db			n_length+4,	oct_4+E_
	db			n_length+2,	oct_3+G_
	db					n_cut
	db					oct_4+E_
	db					n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+2,	oct_4+D_
	db					n_cut
	db					oct_4+E_
	db					n_cut
	db			n_length+4,	oct_4+F_
	db			n_length+2,	oct_3+G_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db			n_length+4,	oct_4+D_
	db			n_length+2,	oct_3+G_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db					oct_4+F_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db					oct_4+F_
	db					n_cut
	db			n_length+4,	oct_4+D_
	db			n_length+2,	oct_4+E_
	db					n_cut
	db					oct_4+F_
	db					n_cut
	db			n_length+4,	oct_4+G_
	db			n_length+2,	oct_3+G_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db			n_length+4,	oct_4+A_
	db			n_length+2,	oct_3+F_
	db					n_cut
	db					oct_4+G_
	db					n_cut
	db			n_length+4,	oct_4+F_
	db			n_length+2,	oct_3+F_
	db					n_cut
	db					oct_4+F_
	db					n_cut
	db			n_length+4,	oct_4+G_
	db			n_length+2,	oct_3+G_
	db					n_cut
	db					oct_4+E_
	db					n_cut
	db					oct_4+C_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db					oct_3+E_
	db					n_cut
	db					oct_3+C_
	db			n_length+10,	n_cut
	db	instrument+i_organ1
	db	sound_loop+2
	db	n_multi+6,	n_length+8,	n_cut
	db			n_length+2,	oct_4+E_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+E_
	db					n_cut
	db					oct_4+E_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+E_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+E_
	db					n_cut
	db					oct_4+E_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+E_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+E_
	db					n_cut
	db					oct_4+E_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+E_
	db					n_cut
	db					oct_4+E_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+E_
	db					n_cut
	db					oct_4+E_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+D_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+D_
	db					n_cut
	db					oct_4+D_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+D_
	db					n_cut
	db					oct_4+D_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+D_
	db					n_cut
	db					oct_4+D_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+D_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+D_
	db					n_cut
	db					oct_4+D_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+D_
	db					n_cut
	db					oct_4+D_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+D_
	db					n_cut
	db					oct_4+D_
	db					n_cut
	db	sound_loop_break
	db	sound_ret

Music_FairMain_PUL2:
	db	instrument+i_organ1
	db	sound_loop+2
	db	n_multi+6,	n_length+8,	oct_2+C_
	db			n_length+12,	n_cut
	db			n_length+4,	oct_1+G_
	db			n_length+8,	oct_2+C_
	db			n_length+12,	n_cut
	db			n_length+4,	oct_1+G_
	db			n_length+8,	oct_2+C_
	db			n_length+4,	oct_2+C_
	db					oct_1+G_
	db					n_cut
	db					oct_1+G_
	db			n_length+8,	oct_2+C_
	db			n_length+12,	n_cut
	db			n_length+4,	oct_1+G_
	db	sound_loop_break
	db	sound_main_loop_set
	db	instrument+i_organ1
	db	n_multi+4,	n_length+6,	oct_3+E_
	db					oct_2+G_
	db			n_length+3,	oct_2+A_
	db					n_cut
	db			n_length+6,	oct_2+B_
	db					oct_3+C_
	db					oct_3+D_
	db			n_length+18,	oct_3+E_
	db					n_cut
	db			n_length+6,	oct_2+G_
	db					oct_2+A_
	db					oct_2+B_
	db					oct_3+C_
	db					oct_3+D_
	db					oct_3+E_
	db			n_length+16,	oct_3+F_
	db			n_length+2,	n_cut
	db			n_length+16,	oct_2+B_
	db			n_length+2,	n_cut
	db			n_length+6,	oct_3+F_
	db			n_length+3,	oct_3+E_
	db					n_cut
	db					oct_3+D_
	db					n_cut
	db			n_length+6,	oct_3+D_
	db					oct_3+C_
	db			n_length+3,	oct_2+B_
	db					n_cut
	db			n_length+8,	oct_3+E_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_3+E_
	db			n_length+8,	oct_3+G_
	db			n_length+4,	n_cut
	db			n_length+3,	oct_3+E_
	db					oct_3+D_
	db			n_length+6,	oct_3+E_
	db			n_length+3,	oct_3+D_
	db					n_cut
	db					oct_3+C_
	db					n_cut
	db			n_length+6,	oct_2+B_
	db					oct_3+C_
	db			n_length+3,	oct_3+D_
	db			n_length+9,	n_cut
	db			n_length+3,	oct_4+F#
	db					n_cut
	db			n_length+3,	oct_4+F#
	db					n_cut
	db			n_length+8,	oct_3+G_
	db			n_length+4,	n_cut
	db			n_length+3,	oct_3+D_
	db					n_cut
	db			n_length+6,	oct_3+E_
	db					n_cut
	db					oct_3+E_
	db					oct_2+G_
	db			n_length+3,	oct_3+C_
	db					n_cut
	db					oct_3+D_
	db					n_cut
	db	n_multi+8,	n_length+17,	oct_3+E_
	db			n_length+1,	n_cut
	db			n_length+3,	oct_3+E_
	db	n_multi+4,			oct_2+G_
	db					n_cut
	db			n_length+6,	oct_2+A_
	db					oct_2+B_
	db					oct_3+C_
	db					oct_3+D_
	db			n_length+18,	oct_3+F_
	db			n_length+12,	oct_2+B_
	db			n_length+6,	n_cut
	db					oct_3+F_
	db			n_length+3,	oct_3+E_
	db					n_cut
	db					oct_3+D_
	db					n_cut
	db			n_length+6,	oct_3+D_
	db					oct_3+C_
	db			n_length+3,	oct_3+D_
	db					n_cut
	db			n_length+8,	oct_3+G_
	db			n_length+4,	n_cut
	db			n_length+3,	oct_3+E_
	db					n_cut
	db			n_length+12,	oct_5+C_
	db			n_length+3,	oct_3+B_
	db					n_cut
	db			n_length+8,	oct_3+A_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_3+A_
	db			n_length+8,	oct_3+B_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_3+B_
	db			n_length+3,	oct_5+C_
	db					n_cut
	db					oct_5+C_
	db					oct_5+C_
	db					oct_5+C_
	db					n_cut
	db			n_length+4,	oct_5+C_
	db			n_length+14,	n_cut
	db	instrument+i_organ1
	db	n_multi+7,	n_length+14,	oct_3+F_
	db	n_multi+2,	n_length+11,	n_cut
	db	n_multi+4,	n_length+3,	oct_3+F_
	db					n_cut
	db					oct_3+G#
	db			n_length+9,	n_cut
	db			n_length+6,	oct_3+G#
	db					n_cut
	db			n_length+3,	oct_3+G#
	db			n_length+15,	n_cut
	db			n_length+3,	oct_3+G_
	db					n_cut
	db			n_length+8,	oct_3+G_
	db			n_length+4,	n_cut
	db			n_length+3,	oct_3+G_
	db					n_cut
	db					oct_3+G_
	db			n_length+9,	n_cut
	db			n_length+3,	oct_3+F#
	db			n_length+9,	n_cut
	db			n_length+11,	oct_3+F#
	db			n_length+7,	n_cut
	db			n_length+3,	oct_3+F_
	db			n_length+9,	n_cut
	db			n_length+3,	oct_3+F_
	db			n_length+9,	n_cut
	db			n_length+3,	oct_3+F_
	db			n_length+9,	n_cut
	db			n_length+6,	oct_3+G_
	db					n_cut
	db			n_length+3,	oct_4+C_
	db					n_cut
	db			n_length+12,	oct_3+A_
	db			n_length+3,	oct_3+A_
	db					n_cut
	db					oct_3+A_
	db					n_cut
	db					oct_3+A_
	db					n_cut
	db					oct_3+A_
	db					n_cut
	db					oct_3+A_
	db					n_cut
	db					oct_3+A_
	db					n_cut
	db					oct_3+A_
	db					n_cut
	db					oct_3+A_
	db					n_cut
	db					oct_3+A_
	db					n_cut
	db					oct_3+A_
	db					n_cut
	db			n_length+6,	oct_3+A_
	db			n_length+12,	n_cut
	db	instrument+i_organ1
	db	n_multi+4,	n_length+8,	oct_3+G_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_4+G_
	db			n_length+11,	oct_4+E_
	db			n_length+7,	n_cut
	db			n_length+8,	oct_3+G_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_4+G_
	db			n_length+11,	oct_4+E_
	db			n_length+7,	n_cut
	db			n_length+8,	oct_4+G_
	db			n_length+4,	n_cut
	db			n_length+12,	oct_4+G_
	db			n_length+3,	oct_4+A_
	db					n_cut
	db					oct_4+G_
	db					n_cut
	db			n_length+8,	oct_4+F_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_4+F_
	db			n_length+8,	oct_4+D_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_4+D_
	db			n_length+3,	oct_3+E_
	db					n_cut
	db					oct_3+F_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db			n_length+6,	oct_3+A_
	db			n_length+3,	oct_3+G_
	db					n_cut
	db					oct_3+F_
	db					n_cut
	db			n_length+6,	oct_3+E_
	db			n_length+3,	oct_3+D_
	db					n_cut
	db					oct_3+E_
	db					n_cut
	db			n_length+8,	oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+3,	oct_4+C_
	db					n_cut
	db					oct_4+D_
	db					oct_4+E_
	db					oct_4+D_
	db					oct_4+E_
	db					oct_4+F_
	db					oct_4+E_
	db					oct_4+F_
	db					oct_4+E_
	db					oct_4+F_
	db					oct_4+E_
	db					oct_4+F_
	db					oct_4+E_
	db					oct_4+G_
	db					n_cut
	db					oct_4+E_
	db					n_cut
	db					oct_4+C_
	db					n_cut
	db					oct_4+C_
	db			n_length+15,	n_cut
	db	instrument+i_organ1
	db	sound_loop+2
	db	n_multi+6,	n_length+2,	oct_5+C_
	db					oct_4+B_
	db					oct_4+A_
	db					oct_4+G_
	db					oct_4+F_
	db					n_cut
	db			n_length+31,	oct_4+E_
	db			n_length+5,	n_cut
	db			n_length+2,	oct_5+C_
	db					oct_4+B_
	db					oct_4+A_
	db					oct_4+G_
	db					oct_4+F_
	db					n_cut
	db			n_length+9,	oct_4+E_
	db			n_length+3,	n_cut
	db			n_length+2,	oct_5+C_
	db					oct_4+B_
	db					oct_4+A_
	db					oct_4+G_
	db					oct_4+F_
	db					n_cut
	db			n_length+9,	oct_4+E_
	db			n_length+3,	n_cut
	db			n_length+2,	oct_4+A_
	db					oct_4+G_
	db					oct_4+F_
	db					oct_4+E_
	db					oct_4+D_
	db					n_cut
	db			n_length+31,	oct_3+A#
	db			n_length+5,	n_cut
	db			n_length+2,	oct_3+A#
	db					oct_4+C_
	db					oct_3+A#
	db					oct_4+C_
	db					oct_3+A#
	db					oct_4+C_
	db					oct_4+C_
	db					oct_4+D_
	db					oct_4+C_
	db					oct_4+D_
	db					oct_4+C_
	db					oct_4+D_
	db					oct_4+D_
	db					oct_4+E_
	db					oct_4+D_
	db					oct_4+E_
	db					oct_4+D_
	db					oct_4+E_
	db					oct_4+E_
	db					oct_4+F_
	db					oct_4+E_
	db					oct_4+F_
	db					oct_4+E_
	db					oct_4+F_
	db	sound_loop_break
	db	sound_ret
Music_FairMain_TRI:
	db	lnr_ratio+31
	db	sound_loop+2
	db	n_multi+6,	n_length+8,	n_cut
	db			n_length+2,	oct_4+E_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+E_
	db					n_cut
	db					oct_4+E_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+E_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+E_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+E_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+E_
	db					n_cut
	db					oct_4+E_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+E_
	db			n_length+14,	n_cut
	db	sound_loop_break
	db	sound_main_loop_set
	db	lnr_ratio+24
	db	sound_loop+13
	db	n_multi+6,	n_length+24,	n_cut
	db	sound_loop_break
	db	n_multi+6,	n_length+12,	n_cut
	db			n_length+8,	oct_5+E_
	db			n_length+4,	oct_5+E_
	db	n_multi+4,	n_length+8,	oct_5+F_
	db			n_length+4,	n_cut
	db			n_length+3,	oct_5+F_
	db					n_cut
	db			n_length+6,	oct_5+G_
	db					n_cut
	db			n_length+3,	oct_5+G_
	db					n_cut
	db					oct_5+G_
	db					n_cut
	db					oct_5+G_
	db					oct_5+G_
	db					oct_5+G_
	db					n_cut
	db			n_length+12,	oct_5+G_
	db			n_length+6,	n_cut
	db	lnr_ratio+24
	db	n_multi+6,	n_length+11,	oct_5+C_
	db			n_length+1,	n_cut
	db			n_length+2,	oct_5+E_
	db					n_cut
	db					oct_4+A_
	db					n_cut
	db					oct_5+C_
	db					n_cut
	db					oct_5+E_
	db					n_cut
	db					oct_4+B_
	db					n_cut
	db					oct_5+E_
	db			n_length+10,	n_cut
	db			n_length+4,	oct_5+E_
	db			n_length+2,	oct_5+C#
	db			n_length+6,	n_cut
	db			n_length+4,	oct_5+E_
	db					n_cut
	db			n_length+2,	oct_5+C#
	db					n_cut
	db			n_length+4,	oct_5+E_
	db			n_length+2,	oct_5+D_
	db			n_length+6,	n_cut
	db			n_length+16,	oct_5+D_
	db			n_length+2,	oct_4+B_
	db					n_cut
	db					oct_4+F_
	db					n_cut
	db			n_length+4,	oct_5+D_
	db			n_length+2,	oct_4+F_
	db					n_cut
	db					oct_5+D_
	db					n_cut
	db					oct_4+F_
	db					n_cut
	db					oct_5+E_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_5+E_
	db					n_cut
	db			n_length+8,	oct_5+E_
	db			n_length+4,	oct_5+C#
	db			n_length+2,	oct_5+F#
	db			n_length+6,	n_cut
	db			n_length+2,	oct_5+F#
	db					n_cut
	db					oct_5+F#
	db					n_cut
	db					oct_5+F#
	db					n_cut
	db					oct_5+F#
	db					n_cut
	db					oct_5+F_
	db					n_cut
	db					oct_5+F_
	db					n_cut
	db					oct_5+F_
	db					n_cut
	db					oct_5+F_
	db					n_cut
	db			n_length+4,	oct_5+E_
	db			n_length+2,	oct_5+D_
	db					n_cut
	db	sound_loop+8
	db	n_multi+6,	n_length+24,	n_cut
	db	sound_loop_break
	db	lnr_ratio+31
	db	sound_loop+2
	db	n_multi+6,	n_length+8,	n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+C_
	db					n_cut
	db					oct_4+C_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+C_
	db					n_cut
	db					oct_4+C_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+C_
	db					n_cut
	db					oct_4+C_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+C_
	db					n_cut
	db					oct_4+C_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_4+C_
	db					n_cut
	db					oct_4+C_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_3+A#
	db			n_length+6,	n_cut
	db			n_length+2,	oct_3+A#
	db					n_cut
	db					oct_3+A#
	db			n_length+6,	n_cut
	db			n_length+2,	oct_3+A#
	db					n_cut
	db					oct_3+A#
	db			n_length+6,	n_cut
	db			n_length+2,	oct_3+A#
	db					n_cut
	db					oct_3+A#
	db			n_length+10,	n_cut
	db			n_length+2,	oct_3+A#
	db			n_length+6,	n_cut
	db			n_length+2,	oct_3+A#
	db					n_cut
	db					oct_3+A#
	db			n_length+6,	n_cut
	db			n_length+2,	oct_3+A#
	db					n_cut
	db					oct_3+A#
	db			n_length+6,	n_cut
	db			n_length+2,	oct_3+A#
	db					n_cut
	db					oct_3+A#
	db					n_cut
	db	sound_loop_break
	db	sound_ret
Music_FairMain_NSE:
	db	n_multi+6,	n_length+8,	$06
	db			n_length+4,	$08
	db			n_length+8,	$06
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db			n_length+8,	$07
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db					$07
	db					$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db			n_length+8,	$07
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db			n_length+8,	$06
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db			n_length+8,	$07
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db					$07
	db					$08
	db					$08
	db			n_length+8,	$06
	db			n_length+2,	$08
	db					$08
	db			n_length+4,	$07
	db					$07
	db			n_length+2,	$07
	db					$08
	db	sound_main_loop_set
	db	n_multi+6,	n_length+8,	$06
	db			n_length+4,	$08
	db			n_length+8,	$07
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db			n_length+8,	$07
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db					$07
	db					$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db			n_length+8,	$07
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db			n_length+8,	$07
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db			n_length+8,	$07
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db			n_length+8,	$07
	db			n_length+2,	$08
	db					$08
	db			n_length+4,	$06
	db					$06
	db					$06
	db					$06
	db					$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db			n_length+8,	$07
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db			n_length+8,	$07
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db					$07
	db					$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db			n_length+8,	$07
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db			n_length+8,	$07
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db			n_length+8,	$07
	db			n_length+2,	$08
	db					$08
	db			n_length+4,	$06
	db					$08
	db					$08
	db			n_length+2,	$07
	db					$08
	db			n_length+4,	$08
	db					$08
	db					$06
	db					$06
	db					$06
	db			n_length+8,	$06
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$08
	db			n_length+4,	$08
	db			n_length+8,	$08
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$08
	db			n_length+4,	$08
	db			n_length+8,	$08
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$08
	db			n_length+4,	$08
	db			n_length+4,	$08
	db					$08
	db					$08
	db			n_length+8,	$08
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$08
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$08
	db			n_length+4,	$08
	db			n_length+8,	$08
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$08
	db			n_length+4,	$08
	db			n_length+8,	$08
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$08
	db			n_length+4,	$08
	db	n_multi+4,	n_length+5,	$08
	db			n_length+7,	$08
	db	n_multi+6,	n_length+4,	$08
	db			n_length+8,	$08
	db			n_length+2,	$08
	db					$08
	db			n_length+4,	$08
	db					$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db			n_length+8,	$07
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db			n_length+8,	$07
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db			n_length+4,	$07
	db					$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db			n_length+8,	$07
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db			n_length+8,	$07
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$06
	db			n_length+4,	$08
	db			n_length+8,	$07
	db			n_length+2,	$08
	db					$08
	db			n_length+4,	$06
	db					$08
	db					$08
	db			n_length+2,	$07
	db					$08
	db			n_length+4,	$08
	db					$08
	db					$06
	db					$06
	db					$06
	db			n_length+12,	$06
	db			n_length+24,	n_cut
	db					n_cut
	db					n_cut
	db					n_cut
	db					n_cut
	db			n_length+12,	n_cut
	db			n_length+8,	$08
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$08
	db			n_length+4,	$08
	db					$08
	db			n_length+4,	$08
	db					$08
	db			n_length+8,	$08
	db			n_length+2,	$08
	db			n_length+2,	$08
	db			n_length+8,	$08
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$08
	db			n_length+4,	$08
	db			n_length+8,	$08
	db			n_length+4,	$08
	db			n_length+8,	$08
	db			n_length+4,	$08
	db			n_length+8,	$08
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$08
	db			n_length+4,	$08
	db					$08
	db					$08
	db					$08
	db			n_length+8,	$08
	db			n_length+4,	$08
	db			n_length+8,	$08
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$08
	db			n_length+4,	$08
	db			n_length+8,	$08
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$08
	db			n_length+4,	$08
	db			n_length+8,	$08
	db			n_length+2,	$08
	db					$08
	db			n_length+8,	$08
	db			n_length+4,	$08
	db					$08
	db					$08
	db					$08
	db			n_length+8,	$08
	db			n_length+4,	$08
	db			n_length+8,	$08
	db			n_length+2,	$08
	db					$08
	db	sound_ret
Music_FairMain_DPCM:
	db	sound_loop+4
	db	n_multi+6,	n_length+4,	oct_2+C_
	db			n_length+8,	n_cut
	db			n_length+4,	oct_1+G_
	db			n_length+8,	n_cut
	db			n_length+4,	oct_2+C_
	db			n_length+8,	n_cut
	db			n_length+6,	oct_1+G_
	db					n_cut
	db	sound_loop_break
	db	sound_main_loop_set
	db	n_multi+4,	n_length+8,	oct_2+C_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+C_
	db			n_length+8,	oct_1+G_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_1+G_
	db			n_length+8,	oct_2+C_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+C_
	db			n_length+8,	oct_1+G_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_1+G_
	db			n_length+8,	oct_2+C_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+C_
	db			n_length+8,	oct_1+G_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_1+G_
	db			n_length+8,	oct_2+D_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D_
	db			n_length+8,	oct_1+G_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_1+G_
	db					oct_2+D_
	db					n_cut
	db					oct_2+D_
	db			n_length+8,	oct_1+G_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_1+G_
	db			n_length+8,	oct_2+E_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+E_
	db			n_length+8,	oct_1+A_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_1+A_
	db			n_length+8,	oct_2+D_
	db			n_length+4,	n_cut
	db					oct_2+D_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_2+D_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_2+D_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_2+D_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_1+G_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_1+G_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_1+G_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_1+G_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_1+A_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_1+B_
	db			n_length+2,	n_cut
	db			n_length+8,	oct_2+C_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+C_
	db			n_length+8,	oct_1+G_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_1+G_
	db			n_length+8,	oct_2+C_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+C_
	db			n_length+8,	oct_1+G_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_1+G_
	db			n_length+8,	oct_2+C_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+C_
	db			n_length+8,	oct_1+G_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_1+G_
	db			n_length+8,	oct_2+D_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D_
	db			n_length+8,	oct_1+G_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_1+G_
	db			n_length+8,	oct_2+D_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D_
	db			n_length+8,	oct_1+G_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_1+G_
	db			n_length+8,	oct_2+E_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+E_
	db			n_length+8,	oct_1+E_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_1+E_
	db			n_length+8,	oct_1+F_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_1+F_
	db			n_length+8,	oct_1+G_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_1+G_
	db			n_length+4,	oct_2+C_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_2+C_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_2+C_
	db			n_length+2,	n_cut
	db			n_length+6,	oct_2+C_
	db			n_length+12,	n_cut
	db			n_length+8,	oct_2+F_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+F_
	db			n_length+8,	oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_3+C_
	db			n_length+8,	oct_2+E_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+E_
	db			n_length+8,	oct_2+B_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+B_
	db			n_length+8,	oct_2+A_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+A_
	db					n_cut
	db			n_length+3,	oct_2+A_
	db					n_cut
	db					oct_2+A_
	db					n_cut
	db			n_length+8,	oct_2+D_
	db			n_length+4,	n_cut
	db			n_length+3,	oct_2+D_
	db					n_cut
	db			n_length+8,	oct_2+D_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D_
	db			n_length+8,	oct_2+G_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+G_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+G_
	db					n_cut
	db			n_length+8,	oct_2+C_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+C_
	db			n_length+8,	oct_1+A_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_1+A_
	db			n_length+8,	oct_2+D_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D_
	db					n_cut
	db			n_length+3,	oct_2+D_
	db					n_cut
	db					oct_2+D_
	db					n_cut
	db					oct_1+G_
	db					n_cut
	db					oct_1+G_
	db					n_cut
	db					oct_1+G_
	db					n_cut
	db					oct_1+G_
	db					n_cut
	db					oct_1+A_
	db					n_cut
	db			n_length+6,	oct_1+B_
	db			n_length+6,	oct_2+C_
	db					n_cut
	db					oct_2+C_
	db			n_length+8,	oct_1+G_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_1+G_
	db					oct_2+C_
	db					n_cut
	db					oct_2+C_
	db					oct_1+G_
	db					oct_1+A_
	db					oct_1+B_
	db					oct_2+C_
	db					n_cut
	db					oct_2+C_
	db					oct_1+G_
	db					oct_1+A_
	db					oct_1+B_
	db					oct_2+D_
	db					n_cut
	db					oct_2+D_
	db			n_length+8,	oct_1+G_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_1+G_
	db					oct_2+D_
	db					n_cut
	db					oct_2+D_
	db			n_length+8,	oct_1+G_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D_
	db					oct_2+E_
	db					n_cut
	db					oct_2+E_
	db			n_length+8,	oct_1+A_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_1+A_
	db					oct_2+F_
	db					n_cut
	db					oct_2+F_
	db					oct_1+G_
	db					n_cut
	db					oct_1+G_
	db			n_length+3,	oct_2+C_
	db					n_cut
	db					oct_2+C_
	db					n_cut
	db					oct_2+C_
	db					n_cut
	db	n_multi+6,	n_length+9,	oct_2+C_
	db			n_length+3,	n_cut
	db	sound_loop+2
	db	n_multi+4,	n_length+11,	oct_2+C_
	db			n_length+7,	n_cut
	db			n_length+11,	oct_1+G_
	db			n_length+7,	n_cut
	db			n_length+11,	oct_2+C_
	db			n_length+7,	n_cut
	db			n_length+11,	oct_1+G_
	db			n_length+7,	n_cut
	db			n_length+11,	oct_2+C_
	db			n_length+7,	n_cut
	db			n_length+11,	oct_1+G_
	db			n_length+7,	n_cut
	db			n_length+11,	oct_2+C_
	db			n_length+7,	n_cut
	db			n_length+11,	oct_1+G_
	db			n_length+7,	n_cut
	db			n_length+11,	oct_1+A#
	db			n_length+7,	n_cut
	db			n_length+11,	oct_1+G_
	db			n_length+7,	n_cut
	db			n_length+11,	oct_1+A#
	db			n_length+7,	n_cut
	db			n_length+11,	oct_1+G_
	db			n_length+7,	n_cut
	db			n_length+11,	oct_1+A#
	db			n_length+7,	n_cut
	db			n_length+11,	oct_1+G_
	db			n_length+7,	n_cut
	db			n_length+11,	oct_1+A#
	db			n_length+7,	n_cut
	db			n_length+11,	oct_1+G_
	db			n_length+7,	n_cut
	db	sound_loop_break
	db	sound_ret
