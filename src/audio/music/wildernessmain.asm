Music_WildernessMain:
	channels_tempo PUL1, PUL2, TRI, 0, DPCM, 131 ; tempo
	dw Music_WildernessMain_PUL1
	dw Music_WildernessMain_PUL2
	dw Music_WildernessMain_TRI
	dw Music_WildernessMain_DPCM

Music_WildernessMain_PUL1:
	.db	instrument+i_banjo
	.db	n_multi+6,	n_length+28,	n_cut
	.db			n_length+4,	oct_2+G_
	.db	sound_loop+2
	.db	n_multi+6,	n_length+2,	oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db	sound_loop_break
	.db	n_multi+6,	n_length+2,	oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db			n_length+4,	oct_2+G_
	.db			n_length+2,	oct_3+E_
	.db					oct_3+G_
	.db					oct_2+F_
	.db					oct_3+F_
	.db					oct_3+A_
	.db					oct_3+F_
	.db					oct_2+A_
	.db					oct_3+F_
	.db					oct_3+A_
	.db					oct_3+F_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db			n_length+4,	oct_2+G_
	.db			n_length+2,	oct_3+E_
	.db					oct_3+G_
	.db	sound_loop+2
	.db	n_multi+6,	n_length+2,	oct_2+G_
	.db					oct_3+D_
	.db					oct_3+G_
	.db					oct_3+D_
	.db	sound_loop_break
	.db	n_multi+6,	n_length+4,	oct_2+G_
	.db			n_length+2,	oct_3+D_
	.db					oct_3+G_
	.db					oct_2+G_
	.db					oct_3+D_
	.db					oct_2+B_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db			n_length+4,	oct_2+G_
	.db			n_length+2,	oct_3+E_
	.db					oct_3+G_
	.db	sound_loop+2
	.db	n_multi+6,	n_length+2,	oct_2+F_
	.db					oct_3+F_
	.db					oct_3+A_
	.db					oct_3+F_
	.db					oct_2+A_
	.db					oct_3+F_
	.db					oct_3+A_
	.db					oct_3+F_
	.db	sound_loop_break
	.db	n_multi+6,	n_length+4,	oct_3+C_
	.db			n_length+2,	oct_3+E_
	.db					oct_3+G_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+D_
	.db					oct_3+G_
	.db					oct_3+D_
	.db			n_length+4,	oct_2+G_
	.db			n_length+2,	oct_3+D_
	.db					oct_3+G_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db			n_length+4,	oct_2+G_
	.db			n_length+2,	oct_3+E_
	.db					oct_3+G_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_2+A_
	.db					oct_3+E_
	.db					oct_2+B_
	.db					oct_3+F_
	.db	sound_loop+2
	.db	n_multi+6,	n_length+2,	oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db	sound_loop_break
	.db	sound_loop+2
	.db	n_multi+6,	n_length+2,	oct_2+F_
	.db					oct_3+F_
	.db					oct_3+A_
	.db					oct_3+F_
	.db					oct_2+A_
	.db					oct_3+F_
	.db					oct_3+A_
	.db					oct_3+F_
	.db	sound_loop_break
	.db	n_multi+6,	n_length+2,	oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db			n_length+4,	oct_2+G_
	.db			n_length+2,	oct_3+E_
	.db					oct_3+G_
	.db	sound_loop+2
	.db	n_multi+6,	n_length+2,	oct_2+G_
	.db					oct_3+D_
	.db					oct_3+G_
	.db					oct_3+D_
	.db	sound_loop_break
	.db	n_multi+6,	n_length+4,	oct_2+G_
	.db			n_length+2,	oct_3+D_
	.db					oct_3+G_
	.db					oct_2+G_
	.db					oct_3+D_
	.db					oct_2+B_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db			n_length+4,	oct_2+G_
	.db			n_length+2,	oct_3+E_
	.db					oct_3+G_
	.db	sound_loop+2
	.db	n_multi+6,	n_length+2,	oct_2+F_
	.db					oct_3+F_
	.db					oct_3+A_
	.db					oct_3+F_
	.db					oct_2+A_
	.db					oct_3+F_
	.db					oct_3+A_
	.db					oct_3+F_
	.db	sound_loop_break
	.db	n_multi+6,	n_length+4,	oct_3+C_
	.db			n_length+2,	oct_3+E_
	.db					oct_3+G_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+D_
	.db					oct_3+G_
	.db					oct_3+D_
	.db			n_length+4,	oct_2+G_
	.db			n_length+2,	oct_3+D_
	.db					oct_3+G_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db			n_length+4,	oct_2+G_
	.db			n_length+2,	oct_3+E_
	.db					oct_3+G_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_2+A_
	.db					oct_3+E_
	.db					oct_2+B_
	.db					oct_3+F_
	.db	sound_main_loop_set
	.db	sound_loop+2
	.db	n_multi+6,	n_length+2,	oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db			n_length+4,	oct_2+G_
	.db			n_length+2,	oct_3+E_
	.db					oct_3+G_
	.db					oct_2+F_
	.db					oct_3+F_
	.db					oct_3+A_
	.db					oct_3+F_
	.db					oct_2+A_
	.db					oct_3+F_
	.db					oct_3+A_
	.db					oct_3+F_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db			n_length+4,	oct_2+G_
	.db			n_length+2,	oct_3+E_
	.db					oct_3+G_
	.db					oct_2+G_
	.db					oct_3+D_
	.db					oct_3+G_
	.db					oct_3+D_
	.db					oct_2+G_
	.db					oct_3+D_
	.db					oct_3+G_
	.db					oct_3+D_
	.db			n_length+4,	oct_2+G_
	.db			n_length+2,	oct_3+D_
	.db					oct_3+G_
	.db					oct_2+G_
	.db					oct_3+D_
	.db					oct_2+B_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db			n_length+4,	oct_2+G_
	.db			n_length+2,	oct_3+E_
	.db					oct_3+G_
	.db					oct_2+F_
	.db					oct_3+F_
	.db					oct_3+A_
	.db					oct_3+F_
	.db					oct_2+A_
	.db					oct_3+F_
	.db					oct_3+A_
	.db					oct_3+F_
	.db					oct_2+F_
	.db					oct_3+F_
	.db					oct_3+A_
	.db					oct_3+F_
	.db					oct_2+A_
	.db					oct_3+F_
	.db					oct_3+A_
	.db					oct_3+F_
	.db			n_length+4,	oct_3+C_
	.db			n_length+2,	oct_3+E_
	.db					oct_3+G_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+D_
	.db					oct_3+G_
	.db					oct_3+D_
	.db			n_length+4,	oct_2+G_
	.db			n_length+2,	oct_3+D_
	.db					oct_3+G_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db			n_length+4,	oct_2+G_
	.db			n_length+2,	oct_3+E_
	.db					oct_3+G_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_2+A_
	.db					oct_3+E_
	.db					oct_2+B_
	.db					oct_3+F_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_2+F_
	.db					oct_3+F_
	.db					oct_3+A_
	.db					oct_3+F_
	.db					oct_2+A_
	.db					oct_3+F_
	.db					oct_3+A_
	.db					oct_3+F_
	.db					oct_2+F_
	.db					oct_3+F_
	.db					oct_3+A_
	.db					oct_3+F_
	.db					oct_2+A_
	.db					oct_3+F_
	.db					oct_3+A_
	.db					oct_3+F_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db			n_length+4,	oct_2+G_
	.db			n_length+2,	oct_3+E_
	.db					oct_3+G_
	.db					oct_2+G_
	.db					oct_3+D_
	.db					oct_3+G_
	.db					oct_3+D_
	.db					oct_2+G_
	.db					oct_3+D_
	.db					oct_3+G_
	.db					oct_3+D_
	.db			n_length+4,	oct_2+G_
	.db			n_length+2,	oct_3+D_
	.db					oct_3+G_
	.db					oct_2+G_
	.db					oct_3+D_
	.db					oct_2+B_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db			n_length+4,	oct_2+G_
	.db			n_length+2,	oct_3+E_
	.db					oct_3+G_
	.db					oct_2+F_
	.db					oct_3+F_
	.db					oct_3+A_
	.db					oct_3+F_
	.db					oct_2+A_
	.db					oct_3+F_
	.db					oct_3+A_
	.db					oct_3+F_
	.db					oct_2+F_
	.db					oct_3+F_
	.db					oct_3+A_
	.db					oct_3+F_
	.db					oct_2+A_
	.db					oct_3+F_
	.db					oct_3+A_
	.db					oct_3+F_
	.db			n_length+4,	oct_3+C_
	.db			n_length+2,	oct_3+E_
	.db					oct_3+G_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+D_
	.db					oct_3+G_
	.db					oct_3+D_
	.db			n_length+4,	oct_2+G_
	.db			n_length+2,	oct_3+D_
	.db					oct_3+G_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_2+A_
	.db					oct_3+E_
	.db					oct_2+B_
	.db					oct_3+F_
	.db					oct_3+C_
	.db					oct_3+E_
	.db			n_length+1,	oct_2+G_
	.db					oct_2+A_
	.db			n_length+2,	oct_2+B_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_2+A_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_2+A_
	.db					oct_3+E_
	.db					oct_2+B_
	.db					oct_3+E_
	.db			n_length+4,	oct_2+F_
	.db			n_length+2,	oct_2+A_
	.db					oct_3+C_
	.db					oct_2+F_
	.db					oct_3+F_
	.db					oct_2+G_
	.db					oct_2+A_
	.db			n_length+4,	oct_3+C_
	.db			n_length+2,	oct_2+F_
	.db					oct_3+C_
	.db					oct_2+G_
	.db					oct_3+C_
	.db					oct_2+A_
	.db					oct_3+D_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+G_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+G_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_2+B_
	.db					oct_3+D_
	.db					oct_2+G_
	.db					oct_3+G_
	.db					oct_2+A_
	.db					oct_2+B_
	.db					oct_3+D_
	.db					oct_3+D_
	.db					oct_2+G_
	.db					oct_3+G_
	.db					oct_2+G_
	.db					oct_3+D_
	.db					oct_2+G_
	.db					oct_2+A_
	.db					oct_2+B_
	.db					oct_3+D_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_2+G_
	.db					oct_2+A_
	.db					oct_2+B_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_2+G_
	.db					oct_2+A_
	.db					oct_2+B_
	.db					oct_2+F_
	.db					oct_3+C_
	.db					oct_2+A_
	.db					oct_3+C_
	.db					oct_2+F_
	.db					oct_2+G_
	.db					oct_2+A_
	.db					oct_2+B_
	.db					oct_2+F_
	.db					oct_3+C_
	.db					oct_2+A_
	.db					oct_3+C_
	.db					oct_2+F_
	.db					oct_2+G_
	.db					oct_2+A_
	.db					oct_2+B_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_2+G_
	.db					oct_2+A_
	.db					oct_2+B_
	.db					oct_2+G_
	.db					oct_3+D_
	.db					oct_2+B_
	.db					oct_3+D_
	.db			n_length+4,	oct_2+G_
	.db			n_length+2,	oct_2+A_
	.db					oct_2+B_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+G_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_2+A_
	.db					oct_3+E_
	.db					oct_2+B_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+E_
	.db			n_length+1,	oct_2+G_
	.db					oct_2+A_
	.db			n_length+2,	oct_2+B_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_2+A_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_2+A_
	.db					oct_3+E_
	.db					oct_2+B_
	.db					oct_3+E_
	.db			n_length+4,	oct_2+F_
	.db			n_length+2,	oct_2+A_
	.db					oct_3+C_
	.db					oct_2+F_
	.db					oct_3+F_
	.db					oct_2+G_
	.db					oct_2+A_
	.db			n_length+4,	oct_3+C_
	.db			n_length+2,	oct_2+F_
	.db					oct_3+C_
	.db					oct_2+G_
	.db					oct_3+C_
	.db					oct_2+A_
	.db					oct_3+D_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+G_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+G_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_2+B_
	.db					oct_3+D_
	.db					oct_2+G_
	.db					oct_3+G_
	.db					oct_2+A_
	.db					oct_2+B_
	.db					oct_3+D_
	.db					oct_3+D_
	.db					oct_2+G_
	.db					oct_3+G_
	.db					oct_2+G_
	.db					oct_3+D_
	.db					oct_2+G_
	.db					oct_2+A_
	.db					oct_2+B_
	.db					oct_3+D_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_2+G_
	.db					oct_2+A_
	.db					oct_2+B_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_2+G_
	.db					oct_2+A_
	.db					oct_2+B_
	.db					oct_2+F_
	.db					oct_3+C_
	.db					oct_2+A_
	.db					oct_3+C_
	.db					oct_2+F_
	.db					oct_2+G_
	.db					oct_2+A_
	.db					oct_2+B_
	.db					oct_2+F_
	.db					oct_3+C_
	.db					oct_2+A_
	.db					oct_3+C_
	.db					oct_2+F_
	.db					oct_2+G_
	.db					oct_2+A_
	.db					oct_2+B_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_2+G_
	.db					oct_2+A_
	.db					oct_2+B_
	.db					oct_2+G_
	.db					oct_3+D_
	.db					oct_2+B_
	.db					oct_3+D_
	.db			n_length+4,	oct_2+G_
	.db			n_length+2,	oct_2+A_
	.db					oct_2+B_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+G_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_2+A_
	.db					oct_3+E_
	.db					oct_2+B_
	.db					oct_3+E_
	.db	sound_loop_break
	.db	sound_loop+3
	.db	n_multi+6,	n_length+2,	oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+D_
	.db					oct_3+G_
	.db					oct_3+D_
	.db			n_length+4,	oct_2+G_
	.db			n_length+2,	oct_3+D_
	.db					oct_3+G_
	.db	sound_loop_break
	.db	n_multi+6,	n_length+2,	oct_3+C_
	.db					oct_3+E_
	.db					oct_3+G_
	.db					oct_3+E_
	.db			n_length+4,	oct_2+G_
	.db			n_length+2,	oct_3+E_
	.db					oct_3+G_
	.db					oct_3+C_
	.db					oct_3+E_
	.db					oct_2+G_
	.db					oct_3+E_
	.db					oct_2+A_
	.db			n_length+4,	oct_3+C_
	.db			n_length+2,	n_cut
	.db	sound_ret

Music_WildernessMain_PUL2:
	.db	instrument+i_harmonica_s
	.db	sound_loop+8
	.db	n_multi+6,	n_length+32,	n_cut
	.db	sound_loop_break
	.db	n_multi+6,	n_length+28,	n_cut
	.db			n_length+4,	oct_4+C_
	.db			n_length+24,	oct_4+E_
	.db			n_length+4,	oct_4+D_
	.db					oct_4+C_
	.db			n_length+16,	oct_4+D_
	.db					oct_4+C_
	.db			n_length+24,	oct_4+E_
	.db			n_length+4,	oct_4+D_
	.db					oct_4+C_
	.db			n_length+16,	oct_4+D_
	.db					oct_3+B_
	.db			n_length+24,	oct_4+E_
	.db			n_length+6,	oct_4+D_
	.db			n_length+2,	oct_4+C_
	.db			n_length+16,	oct_4+G_
	.db					oct_4+F_
	.db					oct_4+E_
	.db					oct_4+D_
	.db			n_length+20,	oct_4+C_
	.db			n_length+12,	n_cut
	.db	sound_main_loop_set
	.db	sound_loop+2
	.db	instrument+i_harmonica_l
	.db	n_multi+6,	n_length+28,	oct_4+G_
	.db			n_length+4,	oct_4+E_
	.db			n_length+16,	oct_4+E_
	.db			n_length+14,	oct_4+C_
	.db			n_length+2,	oct_4+C_
	.db			n_length+20,	oct_4+G_
	.db			n_length+4,	n_cut
	.db					oct_4+A_
	.db					oct_4+G_
	.db	n_multi+8,	n_length+10,	oct_4+G_
	.db			n_length+2,	n_cut
	.db	n_multi+6,	n_length+14,	oct_4+D_
	.db			n_length+2,	oct_4+C_
	.db			n_length+24,	oct_4+G_
	.db	n_multi+8,	n_length+2,	oct_4+F_
	.db			n_length+1,	n_cut
	.db			n_length+2,	oct_4+E_
	.db			n_length+1,	n_cut
	.db	n_multi+6,	n_length+8,	oct_4+D_
	.db					oct_3+B_
	.db			n_length+16,	oct_4+C_
	.db			n_length+8,	oct_4+E_
	.db					oct_4+E_
	.db					oct_4+D_
	.db					oct_4+D_
	.db					oct_4+C_
	.db					oct_3+G_
	.db	n_multi+4,	n_length+17,	oct_4+C_
	.db			n_length+4,	n_cut
	.db	n_multi+6,	n_length+2,	oct_4+C_
	.db			n_length+8,	oct_4+G_
	.db			n_length+16,	oct_4+G_
	.db			n_length+4,	oct_4+F_
	.db	n_multi+8,	n_length+2,	oct_4+E_
	.db			n_length+1,	n_cut
	.db	n_multi+6,	n_length+8,	oct_4+D_
	.db			n_length+20,	oct_4+C_
	.db			n_length+2,	n_cut
	.db					oct_4+C_
	.db			n_length+8,	oct_4+G_
	.db			n_length+16,	oct_4+G_
	.db			n_length+4,	oct_4+A_
	.db					oct_4+G_
	.db			n_length+8,	oct_4+F_
	.db			n_length+20,	oct_4+D_
	.db			n_length+2,	n_cut
	.db					oct_4+C_
	.db			n_length+8,	oct_4+G_
	.db			n_length+16,	oct_4+G_
	.db			n_length+4,	oct_4+E_
	.db					oct_4+C_
	.db			n_length+8,	oct_5+C_
	.db					oct_4+B_
	.db					oct_4+A_
	.db			n_length+4,	oct_4+G_
	.db					oct_4+E_
	.db			n_length+8,	oct_4+G_
	.db					oct_4+G_
	.db					oct_4+D_
	.db					oct_4+D_
	.db	n_multi+4,	n_length+23,	oct_4+C_
	.db			n_length+7,	n_cut
	.db			n_length+3,	oct_4+G_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_4+G_
	.db					n_cut
	.db			n_length+4,	oct_4+G_
	.db					oct_4+E_
	.db					oct_4+C_
	.db			n_length+6,	oct_4+G_
	.db					n_cut
	.db			n_length+4,	oct_4+G_
	.db					oct_4+E_
	.db					oct_4+C_
	.db			n_length+6,	oct_4+G_
	.db					n_cut
	.db			n_length+4,	oct_4+A_
	.db					oct_4+F_
	.db					oct_4+C_
	.db			n_length+6,	oct_4+A_
	.db					n_cut
	.db			n_length+4,	oct_4+A_
	.db					oct_4+F_
	.db					oct_4+C_
	.db			n_length+6,	oct_4+A_
	.db					n_cut
	.db			n_length+4,	oct_4+G_
	.db					oct_4+E_
	.db					oct_4+C_
	.db			n_length+6,	oct_4+G_
	.db					n_cut
	.db			n_length+4,	oct_4+E_
	.db					oct_4+G_
	.db					oct_4+E_
	.db			n_length+9,	oct_4+E_
	.db			n_length+3,	n_cut
	.db	n_multi+6,	n_length+4,	oct_4+D_
	.db					oct_3+B_
	.db			n_length+8,	oct_4+D_
	.db			n_length+16,	oct_4+G_
	.db			n_length+8,	oct_4+E_
	.db			n_length+6,	oct_4+C_
	.db			n_length+2,	n_cut
	.db			n_length+8,	oct_4+E_
	.db					oct_4+E_
	.db					oct_4+F_
	.db			n_length+6,	oct_4+D_
	.db			n_length+2,	n_cut
	.db			n_length+8,	oct_4+F_
	.db					oct_4+D_
	.db					oct_4+E_
	.db			n_length+6,	oct_4+E_
	.db			n_length+2,	n_cut
	.db					oct_4+D_
	.db					n_cut
	.db					oct_4+D_
	.db					n_cut
	.db			n_length+6,	oct_4+D_
	.db			n_length+7,	n_cut
	.db			n_length+3,	oct_3+G_
	.db			n_length+4,	oct_3+A_
	.db					oct_3+B_
	.db			n_length+5,	oct_4+C_
	.db			n_length+3,	oct_3+G_
	.db			n_length+4,	oct_3+A_
	.db					oct_3+B_
	.db			n_length+8,	oct_4+C_
	.db			n_length+4,	oct_3+G_
	.db					oct_3+A_
	.db			n_length+8,	oct_4+C_
	.db			n_length+4,	oct_3+A_
	.db					oct_3+B_
	.db			n_length+8,	oct_4+E_
	.db			n_length+14,	oct_4+D_
	.db			n_length+2,	n_cut
	.db			n_length+8,	oct_4+C_
	.db			n_length+24,	oct_4+E_
	.db			n_length+6,	oct_4+D_
	.db			n_length+2,	oct_4+C_
	.db			n_length+16,	oct_4+D_
	.db					oct_3+B_
	.db			n_length+24,	oct_4+E_
	.db			n_length+6,	oct_4+D_
	.db			n_length+2,	oct_4+C_
	.db			n_length+16,	oct_4+G_
	.db			n_length+14,	oct_4+F_
	.db			n_length+2,	n_cut
	.db			n_length+16,	oct_4+E_
	.db					oct_4+D_
	.db			n_length+20,	oct_4+C_
	.db			n_length+12,	n_cut
	.db	sound_loop_break
	.db	n_multi+6,	n_length+8,	oct_4+E_
	.db					oct_4+E_
	.db					oct_4+D_
	.db					oct_4+D_
	.db					oct_4+E_
	.db					oct_4+E_
	.db					oct_4+D_
	.db					oct_4+D_
	.db					oct_4+E_
	.db					oct_4+E_
	.db					oct_4+D_
	.db					oct_4+D_
	.db					oct_4+C_
	.db					oct_3+G_
	.db	n_multi+4,	n_length+17,	oct_4+C_
	.db	n_multi+2,	n_length+5,	n_cut
	.db	n_multi+6,	n_length+2,	oct_4+C_
	.db			n_length+1,	oct_4+E_
	.db	sound_ret

Music_WildernessMain_TRI:
	.db	sound_loop+11
	.db	lnr_ratio+31
	.db	n_multi+2,	n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db	sound_loop_break
	.db	n_multi+2,	n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_4+G_
	.db			n_length+5,	n_cut
	.db	sound_loop+3
	.db	n_multi+2,	n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db	sound_loop_break
	.db	n_multi+2,	n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_4+G_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_4+B_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_4+B_
	.db					n_cut
	.db					oct_4+B_
	.db					n_cut
	.db			n_length+7,	oct_4+A_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_4+A_
	.db					n_cut
	.db					oct_4+A_
	.db					n_cut
	.db	sound_loop+2
	.db	n_multi+2,	n_length+7,	oct_4+G_
	.db			n_length+5,	n_cut
	.db	sound_loop_break
	.db	sound_loop+7
	.db	n_multi+2,	n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db	sound_loop_break
	.db	n_multi+2,	n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_4+G_
	.db			n_length+5,	n_cut
	.db	sound_loop+11
	.db	n_multi+2,	n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db	sound_loop_break
	.db	n_multi+2,	n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_4+G_
	.db			n_length+5,	n_cut
	.db	sound_loop+3
	.db	n_multi+2,	n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db	sound_loop_break
	.db	n_multi+2,	n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_4+G_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_4+B_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_4+B_
	.db					n_cut
	.db					oct_4+B_
	.db					n_cut
	.db			n_length+7,	oct_4+A_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_4+A_
	.db					n_cut
	.db					oct_4+A_
	.db					n_cut
	.db	sound_loop+2
	.db	n_multi+2,	n_length+7,	oct_4+G_
	.db			n_length+5,	n_cut
	.db	sound_loop_break
	.db	sound_loop+4
	.db	n_multi+2,	n_length+7,	oct_4+B_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_4+B_
	.db					n_cut
	.db					oct_4+B_
	.db					n_cut
	.db	sound_loop_break
	.db	sound_loop+3
	.db	n_multi+2,	n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db	sound_loop_break
	.db	n_multi+2,	n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_4+G_
	.db			n_length+5,	n_cut
	.db	sound_loop+2
	.db	n_multi+2,	n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db	sound_loop_break
	.db	sound_loop+3
	.db	n_multi+2,	n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_4+G_
	.db			n_length+5,	n_cut
	.db	sound_loop_break
	.db	sound_loop+3
	.db	n_multi+2,	n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db	sound_loop_break
	.db	n_multi+2,	n_length+7,	oct_5+E_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_5+D_
	.db			n_length+5,	n_cut
	.db	sound_main_loop_set
	.db	sound_loop+2
	.db	n_multi+2,	n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_4+B_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_5+D_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_4+B_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_5+D_
	.db					n_cut
	.db			n_length+7,	oct_5+E_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db			n_length+7,	oct_5+G_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+E_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_5+G_
	.db					n_cut
	.db					oct_5+A_
	.db					n_cut
	.db					oct_5+G_
	.db					n_cut
	.db					oct_5+A_
	.db					n_cut
	.db					oct_5+G_
	.db					n_cut
	.db					oct_5+F_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db			n_length+1,	oct_5+D_
	.db			n_length+2,	n_cut
	.db			n_length+1,	oct_5+E_
	.db			n_length+2,	n_cut
	.db			n_length+7,	oct_5+F_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_5+D_
	.db			n_length+5,	n_cut
	.db			n_length+10,	oct_5+F_
	.db			n_length+2,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_5+D_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_4+B_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_5+D_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_4+B_
	.db					n_cut
	.db			n_length+7,	oct_5+E_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+D_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_5+D_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db			n_length+7,	oct_5+F_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_5+G_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+1,	oct_5+G_
	.db			n_length+2,	oct_5+A_
	.db					n_cut
	.db			n_length+1,	oct_5+G_
	.db			n_length+2,	n_cut
	.db			n_length+1,	oct_5+D_
	.db			n_length+2,	n_cut
	.db			n_length+7,	oct_5+G_
	.db			n_length+3,	oct_4+B_
	.db			n_length+2,	n_cut
	.db			n_length+3,	oct_6+C_
	.db					n_cut
	.db					oct_5+B_
	.db					n_cut
	.db					oct_5+A_
	.db					n_cut
	.db					oct_5+G_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_4+A_
	.db					n_cut
	.db					oct_4+G_
	.db					n_cut
	.db			n_length+7,	oct_4+G_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_4+E_
	.db					n_cut
	.db					oct_4+G_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db					oct_5+G_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db			n_length+7,	oct_5+A_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+G_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_4+A_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db			n_length+6,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_4+G_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db					oct_5+G_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db			n_length+7,	oct_6+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+B_
	.db					n_cut
	.db					oct_5+A_
	.db					n_cut
	.db					oct_5+G_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db					oct_5+D_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+6,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_4+B_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_5+D_
	.db					n_cut
	.db					oct_5+F_
	.db					n_cut
	.db					oct_5+G_
	.db					n_cut
	.db					oct_5+G_
	.db					n_cut
	.db					oct_5+F_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db					oct_5+D_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_4+B_
	.db					n_cut
	.db					oct_4+A_
	.db					n_cut
	.db					oct_4+G_
	.db					n_cut
	.db			n_length+7,	oct_4+A_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_4+G_
	.db			n_length+5,	n_cut
	.db			n_length+1,	oct_4+E_
	.db			n_length+2,	n_cut
	.db			n_length+3,	oct_4+G_
	.db					n_cut
	.db			n_length+1,	oct_4+A_
	.db			n_length+2,	n_cut
	.db			n_length+3,	oct_4+B_
	.db					n_cut
	.db					oct_4+G_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+6,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db			n_length+2,	n_cut
	.db			n_length+1,	oct_5+C_
	.db			n_length+2,	n_cut
	.db			n_length+3,	oct_5+E_
	.db					n_cut
	.db					oct_5+G_
	.db			n_length+1,	n_cut
	.db			n_length+2,	oct_5+C_
	.db			n_length+5,	oct_5+G_
	.db			n_length+4,	n_cut
	.db			n_length+7,	oct_5+G_
	.db			n_length+6,	n_cut
	.db			n_length+3,	oct_5+C_
	.db			n_length+2,	n_cut
	.db			n_length+3,	oct_5+E_
	.db					n_cut
	.db			n_length+7,	oct_6+C_
	.db			n_length+6,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db			n_length+2,	n_cut
	.db			n_length+3,	oct_4+G_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_5+D_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db			n_length+7,	oct_6+C_
	.db			n_length+6,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db			n_length+2,	n_cut
	.db			n_length+3,	oct_5+E_
	.db					n_cut
	.db					oct_5+G_
	.db					n_cut
	.db			n_length+7,	oct_6+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+G_
	.db					n_cut
	.db			n_length+2,	oct_6+C_
	.db					n_cut
	.db			n_length+5,	oct_5+G_
	.db			n_length+4,	n_cut
	.db			n_length+3,	oct_5+C_
	.db			n_length+2,	n_cut
	.db			n_length+3,	oct_5+A_
	.db					n_cut
	.db					oct_5+G_
	.db					n_cut
	.db					oct_5+F_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db			n_length+7,	oct_5+D_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db			n_length+6,	n_cut
	.db			n_length+3,	oct_5+G_
	.db					n_cut
	.db					oct_6+C_
	.db					n_cut
	.db					oct_5+G_
	.db					n_cut
	.db					oct_5+G_
	.db					n_cut
	.db			n_length+7,	oct_6+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+G_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db					oct_5+F_
	.db					n_cut
	.db					oct_5+G_
	.db					n_cut
	.db					oct_5+F_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db					oct_5+D_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db					oct_5+D_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_4+G_
	.db			n_length+4,	n_cut
	.db			n_length+3,	oct_5+C_
	.db			n_length+2,	n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_4+B_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_4+A_
	.db			n_length+5,	n_cut
	.db			n_length+13,	oct_4+G_
	.db			n_length+7,	oct_4+G_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_4+G_
	.db			n_length+4,	n_cut
	.db			n_length+3,	oct_5+G_
	.db					n_cut
	.db					oct_6+C_
	.db					n_cut
	.db					oct_5+G_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db					oct_5+F_
	.db					n_cut
	.db					oct_5+G_
	.db					n_cut
	.db					oct_5+F_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db					oct_5+D_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db					oct_5+D_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_4+B_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_5+D_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db					oct_5+G_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db					oct_5+F_
	.db					n_cut
	.db					oct_5+D_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_5+G_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db					oct_6+C_
	.db					n_cut
	.db					oct_5+B_
	.db					n_cut
	.db					oct_5+A_
	.db					n_cut
	.db					oct_5+G_
	.db					n_cut
	.db					oct_5+F_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db					oct_5+D_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+1,	oct_5+D_
	.db			n_length+2,	oct_5+C_
	.db			n_length+1,	oct_5+E_
	.db			n_length+2,	n_cut
	.db			n_length+1,	oct_5+D_
	.db			n_length+2,	n_cut
	.db			n_length+1,	oct_5+C_
	.db			n_length+2,	n_cut
	.db			n_length+7,	oct_4+B_
	.db			n_length+3,	oct_5+C_
	.db			n_length+2,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+D_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_4+B_
	.db					n_cut
	.db			n_length+7,	oct_4+A_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_4+G_
	.db					n_cut
	.db					oct_4+A_
	.db					n_cut
	.db					oct_4+B_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_5+D_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_4+G_
	.db			n_length+3,	oct_5+C_
	.db			n_length+2,	n_cut
	.db			n_length+7,	oct_4+E_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_4+D_
	.db			n_length+3,	oct_5+C_
	.db			n_length+2,	n_cut
	.db			n_length+7,	oct_4+C_
	.db			n_length+6,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_4+G_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_4+G_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_4+B_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_4+B_
	.db					n_cut
	.db					oct_4+B_
	.db					n_cut
	.db			n_length+7,	oct_4+A_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_4+A_
	.db					n_cut
	.db					oct_4+A_
	.db					n_cut
	.db			n_length+7,	oct_4+G_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_4+G_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_4+G_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_4+G_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db	n_multi+6,	n_length+32,	n_cut
	.db					n_cut
	.db					n_cut
	.db					n_cut
	.db					n_cut
	.db					n_cut
	.db					n_cut
	.db					n_cut
	.db	sound_loop_break
	.db	sound_loop+3
	.db	n_multi+2,	n_length+3,	oct_5+C_
	.db					n_cut
	.db					oct_5+D_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_4+B_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_5+D_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db					oct_5+G_
	.db					n_cut
	.db					oct_5+G_
	.db					n_cut
	.db					oct_5+F_
	.db					n_cut
	.db					oct_5+E_
	.db					n_cut
	.db					oct_5+D_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db					oct_4+B_
	.db					n_cut
	.db					oct_4+A_
	.db					n_cut
	.db					oct_4+G_
	.db					n_cut
	.db	sound_loop_break
	.db	n_multi+2,	n_length+7,	oct_4+A_
	.db			n_length+5,	n_cut
	.db			n_length+7,	oct_4+G_
	.db			n_length+2,	n_cut
	.db			n_length+3,	n_cut
	.db					oct_4+E_
	.db					n_cut
	.db					oct_4+G_
	.db					n_cut
	.db					oct_4+B_
	.db					n_cut
	.db					oct_4+G_
	.db					n_cut
	.db			n_length+7,	oct_5+C_
	.db			n_length+5,	n_cut
	.db			n_length+3,	oct_5+G_
	.db					n_cut
	.db					oct_5+C_
	.db					n_cut
	.db			n_length+7,	oct_6+C_
	.db			n_length+17,	n_cut
	.db	sound_ret

Music_WildernessMain_DPCM:
	.db	sound_loop+16
	.db	n_multi+6,	n_length+32,	n_cut
	.db	sound_loop_break
	.db	n_multi+6,	n_length+24,	n_cut
	.db			n_length+4,	oct_1+G_
	.db					oct_1+B_
	.db	sound_main_loop_set
	.db	sound_loop+2
	.db	n_multi+4,	n_length+6,	oct_2+C_
	.db			n_length+2,	oct_3+C_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_2+C_
	.db			n_length+2,	oct_3+C_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_2+C_
	.db			n_length+2,	oct_3+C_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_2+C_
	.db			n_length+2,	oct_3+C_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_2+C_
	.db			n_length+2,	oct_3+C_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_2+C_
	.db			n_length+2,	oct_3+C_
	.db			n_length+4,	n_cut
	.db			n_length+8,	oct_2+F_
	.db			n_length+4,	n_cut
	.db			n_length+2,	oct_2+F_
	.db			n_length+4,	n_cut
	.db			n_length+2,	oct_2+E_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_2+C_
	.db			n_length+2,	oct_3+C_
	.db			n_length+4,	n_cut
	.db			n_length+8,	oct_1+G_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_2+C_
	.db			n_length+2,	oct_3+C_
	.db			n_length+4,	n_cut
	.db			n_length+8,	oct_2+C_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_1+G_
	.db			n_length+2,	oct_3+C_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_1+G_
	.db					n_cut
	.db			n_length+9,	oct_1+G_
	.db			n_length+2,	oct_1+G_
	.db			n_length+1,	n_cut
	.db			n_length+6,	oct_1+A_
	.db					oct_1+B_
	.db			n_length+9,	oct_2+C_
	.db			n_length+3,	oct_3+C_
	.db			n_length+9,	oct_1+G_
	.db			n_length+3,	oct_3+C_
	.db			n_length+6,	oct_2+C_
	.db					oct_1+B_
	.db					oct_1+A_
	.db					oct_1+G_
	.db			n_length+9,	oct_1+F_
	.db			n_length+3,	oct_3+C_
	.db			n_length+9,	oct_1+F_
	.db			n_length+3,	oct_3+C_
	.db			n_length+9,	oct_1+F_
	.db			n_length+3,	oct_1+F_
	.db			n_length+6,	oct_1+G_
	.db					oct_1+A_
	.db			n_length+9,	oct_2+C_
	.db			n_length+3,	oct_2+E_
	.db			n_length+9,	oct_2+C_
	.db			n_length+3,	oct_2+E_
	.db			n_length+9,	oct_1+G_
	.db			n_length+3,	oct_1+G_
	.db			n_length+6,	oct_1+A_
	.db					oct_1+B_
	.db			n_length+9,	oct_2+C_
	.db			n_length+2,	oct_3+C_
	.db			n_length+1,	n_cut
	.db			n_length+8,	oct_1+G_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_2+C_
	.db			n_length+2,	oct_2+G_
	.db			n_length+4,	n_cut
	.db			n_length+2,	oct_2+F_
	.db			n_length+4,	n_cut
	.db			n_length+2,	oct_2+E_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_2+C_
	.db					oct_1+G_
	.db					oct_2+C_
	.db			n_length+2,	oct_3+C_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_2+C_
	.db					oct_1+G_
	.db					oct_2+C_
	.db			n_length+2,	oct_3+C_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_2+C_
	.db					oct_1+G_
	.db					oct_2+C_
	.db			n_length+2,	oct_2+A_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_1+F_
	.db					oct_1+G_
	.db					oct_1+A_
	.db					oct_1+B_
	.db					oct_2+C_
	.db			n_length+2,	oct_3+C_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_2+C_
	.db			n_length+2,	oct_3+C_
	.db			n_length+4,	n_cut
	.db			n_length+9,	oct_2+C_
	.db			n_length+2,	oct_2+C_
	.db			n_length+1,	n_cut
	.db			n_length+6,	oct_1+B_
	.db					oct_1+A_
	.db					oct_1+G_
	.db			n_length+2,	oct_2+B_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_1+B_
	.db			n_length+2,	oct_2+B_
	.db			n_length+4,	n_cut
	.db			n_length+9,	oct_1+G_
	.db			n_length+3,	oct_1+A_
	.db			n_length+6,	oct_1+B_
	.db					oct_2+G_
	.db			n_length+9,	oct_2+C_
	.db			n_length+3,	oct_3+C_
	.db			n_length+9,	oct_1+G_
	.db			n_length+3,	oct_3+C_
	.db			n_length+6,	oct_2+C_
	.db					oct_1+B_
	.db					oct_1+A_
	.db					oct_1+G_
	.db			n_length+9,	oct_1+F_
	.db			n_length+3,	oct_3+C_
	.db			n_length+9,	oct_1+F_
	.db			n_length+3,	oct_3+C_
	.db			n_length+9,	oct_1+F_
	.db			n_length+3,	oct_1+F_
	.db			n_length+6,	oct_1+G_
	.db					oct_1+A_
	.db			n_length+9,	oct_2+C_
	.db			n_length+3,	oct_3+C_
	.db			n_length+9,	oct_1+G_
	.db			n_length+3,	oct_3+C_
	.db			n_length+9,	oct_1+G_
	.db			n_length+3,	oct_2+G_
	.db			n_length+6,	oct_1+A_
	.db					oct_1+B_
	.db			n_length+9,	oct_2+C_
	.db			n_length+3,	oct_2+G_
	.db			n_length+8,	oct_1+G_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_2+C_
	.db					oct_1+G_
	.db					oct_1+A_
	.db					oct_1+B_
	.db					oct_2+C_
	.db			n_length+2,	oct_2+E_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_1+G_
	.db			n_length+3,	oct_1+A_
	.db					oct_1+B_
	.db			n_length+6,	oct_2+C_
	.db			n_length+2,	oct_2+E_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_1+G_
	.db			n_length+3,	oct_1+A_
	.db					oct_1+B_
	.db			n_length+6,	oct_2+C_
	.db			n_length+2,	oct_2+E_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_1+G_
	.db			n_length+3,	oct_1+A_
	.db					oct_1+B_
	.db			n_length+6,	oct_2+C_
	.db			n_length+2,	oct_2+E_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_1+G_
	.db			n_length+3,	oct_1+A_
	.db					oct_1+B_
	.db			n_length+6,	oct_2+C_
	.db			n_length+2,	oct_2+E_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_1+G_
	.db			n_length+3,	oct_1+A_
	.db					oct_1+B_
	.db			n_length+12,	oct_2+C_
	.db			n_length+6,	oct_1+G_
	.db			n_length+6,	oct_1+A_
	.db			n_length+6,	oct_1+G_
	.db			n_length+2,	oct_2+B_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_1+G_
	.db			n_length+2,	oct_2+B_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_1+G_
	.db			n_length+2,	oct_2+B_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_1+G_
	.db			n_length+2,	oct_2+B_
	.db			n_length+4,	n_cut
	.db			n_length+9,	oct_2+C_
	.db			n_length+3,	oct_3+C_
	.db			n_length+9,	oct_1+G_
	.db			n_length+3,	oct_3+C_
	.db			n_length+6,	oct_2+C_
	.db			n_length+3,	oct_1+B_
	.db					n_cut
	.db					oct_1+A_
	.db					n_cut
	.db					oct_1+G_
	.db					n_cut
	.db			n_length+6,	oct_1+F_
	.db			n_length+3,	oct_2+A_
	.db					n_cut
	.db					oct_1+F_
	.db					n_cut
	.db					oct_1+F_
	.db					n_cut
	.db			n_length+6,	oct_1+F_
	.db					oct_1+G_
	.db					oct_1+A_
	.db					oct_1+B_
	.db			n_length+9,	oct_2+C_
	.db			n_length+3,	oct_3+C_
	.db			n_length+9,	oct_1+G_
	.db			n_length+3,	oct_3+C_
	.db			n_length+9,	oct_1+G_
	.db			n_length+3,	oct_1+G_
	.db			n_length+6,	oct_1+A_
	.db					oct_1+B_
	.db			n_length+9,	oct_2+C_
	.db			n_length+3,	oct_3+C_
	.db			n_length+8,	oct_1+G_
	.db			n_length+4,	n_cut
	.db			n_length+6,	oct_2+C_
	.db					oct_3+C_
	.db			n_length+12,	n_cut
	.db	n_multi+6,	n_length+32,	n_cut
	.db					n_cut
	.db					n_cut
	.db					n_cut
	.db					n_cut
	.db					n_cut
	.db					n_cut
	.db			n_length+24,	n_cut
	.db			n_length+4,	oct_1+G_
	.db					oct_1+B_
	.db	sound_loop_break
	.db	sound_loop+3
	.db	n_multi+4,	n_length+9,	oct_2+C_
	.db			n_length+3,	oct_2+E_
	.db			n_length+9,	oct_2+C_
	.db			n_length+3,	oct_2+E_
	.db			n_length+9,	oct_1+G_
	.db			n_length+3,	oct_1+G_
	.db			n_length+6,	oct_1+A_
	.db					oct_1+B_
	.db	sound_loop_break
	.db	n_multi+4,	n_length+9,	oct_2+C_
	.db			n_length+3,	oct_3+C_
	.db			n_length+12,	oct_1+G_
	.db			n_length+6,	oct_2+C_
	.db					oct_1+G_
	.db					oct_2+C_
	.db					n_cut
	.db	sound_ret
