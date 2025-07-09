Music_SpaceshipBoss:
	channels_tempo PUL1, PUL2, TRI, 0, DPCM, 151
	dw Music_SpaceshipBoss_PUL1
	dw Music_SpaceshipBoss_PUL2
	dw Music_SpaceshipBoss_TRI
	dw Music_SpaceshipBoss_DPCM

Music_SpaceshipBoss_PUL1:
	db	sound_main_loop_set
	db	instrument+i_piano
	db	n_multi+4,	n_length+30,	n_cut
	db			n_length+2,	oct_2+G_
	db					oct_2+A_
	db					oct_2+B_
	db					oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_3+G_
	db					oct_3+A_
	db					oct_3+B_
	db					oct_4+C_
	db			n_length+28,	n_cut
	db			n_length+2,	oct_2+G_
	db					oct_2+A_
	db					oct_2+B_
	db					oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_3+G_
	db					oct_3+A_
	db					oct_3+B_
	db	sound_loop+2
	db	n_multi+4,	n_length+2,	oct_4+C_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_2+G_
	db					oct_2+A_
	db					oct_2+B_
	db					oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_3+G_
	db					oct_3+A_
	db					oct_3+B_
	db	sound_loop_break
	db	sound_loop+3
	db	n_multi+4,	n_length+2,	oct_4+C_
	db			n_length+28,	n_cut
	db			n_length+2,	oct_2+G_
	db					oct_2+A_
	db					oct_2+B_
	db					oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_3+G_
	db					oct_3+A_
	db					oct_3+B_
	db	sound_loop_break
	db	sound_loop+2
	db	n_multi+4,	n_length+2,	oct_4+C_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_2+G_
	db					oct_2+A_
	db					oct_2+B_
	db					oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_3+G_
	db					oct_3+A_
	db					oct_3+B_
	db	sound_loop_break
	db	n_multi+4,	n_length+2,	oct_4+C_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_3+A_
	db					oct_3+G_
	db					oct_3+F_
	db					oct_3+G_
	db					oct_3+F_
	db					oct_3+E_
	db					oct_3+F_
	db					oct_3+E_
	db					oct_3+D_
	db					oct_3+E_
	db					oct_3+D_
	db					oct_3+C_
	db					oct_3+D_
	db					oct_3+C_
	db					oct_2+B_
	db					oct_3+C_
	db					oct_2+B_
	db					oct_2+A_
	db					oct_2+B_
	db					oct_2+A_
	db					oct_2+G_
	db			n_length+3,	oct_3+C_
	db	instrument+i_fiddle
	db	n_multi+6,	n_length+2,	oct_5+C_
	db					oct_4+G_
	db					n_cut
	db					oct_5+C_
	db					n_cut
	db					oct_4+F_
	db					n_cut
	db					oct_5+C_
	db					n_cut
	db					oct_4+E_
	db					n_cut
	db					oct_5+C_
	db					n_cut
	db					oct_4+F_
	db					n_cut
	db					oct_5+C_
	db					n_cut
	db					oct_4+G_
	db					n_cut
	db					oct_5+C_
	db					n_cut
	db					oct_4+F_
	db					n_cut
	db					oct_5+C_
	db					n_cut
	db					oct_4+E_
	db					n_cut
	db					oct_5+C_
	db					n_cut
	db					oct_4+D_
	db					n_cut
	db					oct_5+C_
	db					n_cut
	db					oct_4+G_
	db					n_cut
	db					oct_5+C_
	db					n_cut
	db					oct_4+F_
	db					n_cut
	db					oct_5+C_
	db					n_cut
	db					oct_4+E_
	db					n_cut
	db					oct_5+C_
	db					n_cut
	db					oct_4+F_
	db					n_cut
	db					oct_5+C_
	db					n_cut
	db					oct_4+G_
	db					n_cut
	db					oct_5+C_
	db					n_cut
	db					oct_4+E_
	db					n_cut
	db					oct_5+C_
	db					oct_4+B_
	db					oct_4+A_
	db					oct_4+G_
	db					oct_4+A_
	db					oct_4+B_
	db					oct_5+C_
	db					n_cut
	db	sound_ret

Music_SpaceshipBoss_PUL2:
	db	sound_main_loop_set
	db	instrument+i_fiddle
	db	n_multi+6,	n_length+4,	n_cut
	db			n_length+4,	oct_3+C_
	db					oct_4+C_
	db			n_length+16,	n_cut
	db			n_length+4,	oct_4+C_
	db					n_cut
	db					oct_3+C_
	db					n_cut
	db					oct_3+C_
	db			n_length+6,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+10,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+16,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+8,	n_cut
	db			n_length+4,	oct_3+C_
	db					oct_4+C_
	db					oct_3+C_
	db					n_cut
	db					oct_4+C_
	db					n_cut
	db					oct_3+C_
	db					n_cut
	db					oct_3+C_
	db					oct_4+C_
	db			n_length+8,	n_cut
	db			n_length+4,	oct_4+C_
	db					n_cut
	db					oct_4+C_
	db					n_cut
	db					oct_3+C_
	db					n_cut
	db					oct_3+C_
	db					n_cut
	db					oct_3+C_
	db					oct_4+C_
	db					oct_3+C_
	db					n_cut
	db					oct_4+C_
	db					oct_3+C_
	db					oct_3+C_
	db					oct_3+C_
	db					oct_4+C_
	db					oct_3+C_
	db					n_cut
	db					oct_3+C_
	db					oct_4+C_
	db					oct_3+C_
	db					n_cut
	db					oct_4+C_
	db					n_cut
	db					oct_3+C_
	db					n_cut
	db					oct_4+C_
	db					oct_5+C_
	db					oct_4+C_
	db					n_cut
	db					oct_4+C_
	db					oct_5+C_
	db					oct_4+C_
	db					n_cut
	db					oct_3+A#
	db					oct_4+A#
	db					oct_3+A#
	db					n_cut
	db					oct_3+A#
	db					oct_4+A#
	db					oct_3+A#
	db					n_cut
	db					oct_3+A_
	db					oct_4+A_
	db					oct_3+A_
	db					n_cut
	db					oct_3+A_
	db					oct_4+A_
	db					oct_3+A_
	db					n_cut
	db					oct_3+A_
	db					oct_4+A_
	db					oct_3+A_
	db					n_cut
	db					oct_3+A_
	db					oct_4+A_
	db					oct_3+A_
	db					n_cut
	db	sound_ret

Music_SpaceshipBoss_TRI:
	db	sound_main_loop_set
	db	lnr_ratio+24
	db	sound_loop+16
	db	n_multi+6,	n_length+2,	oct_5+C_
	db	sound_loop_break
	db	sound_loop+2
	db	n_multi+6,	n_length+2,	oct_5+C_
	db					n_cut
	db					oct_5+C_
	db					oct_5+C_
	db					oct_5+C_
	db					oct_5+C_
	db					oct_5+C_
	db					oct_5+C_
	db	sound_loop_break
	db	n_multi+6,	n_length+2,	oct_5+G_
	db					n_cut
	db					oct_5+G_
	db					oct_5+G_
	db					oct_5+G_
	db					n_cut
	db					oct_5+G_
	db					oct_5+G_
	db					oct_5+G_
	db					oct_5+G_
	db					oct_5+G_
	db					oct_5+G_
	db					oct_5+G_
	db					n_cut
	db					oct_5+G_
	db					n_cut
	db					oct_6+C_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_6+C_
	db					oct_6+C_
	db					n_cut
	db					oct_6+C_
	db					oct_6+C_
	db					oct_6+C_
	db					n_cut
	db					oct_6+C_
	db					n_cut
	db					oct_6+C_
	db					n_cut
	db					oct_6+C_
	db					n_cut
	db	sound_loop+4
	db	n_multi+6,	n_length+2,	oct_6+F_
	db					oct_6+F_
	db					oct_6+E_
	db					oct_6+E_
	db					oct_6+D_
	db					oct_6+D_
	db					oct_6+C_
	db					oct_6+C_
	db	sound_loop_break
	db	n_multi+6,	n_length+2,	oct_5+B_
	db					oct_5+B_
	db					oct_6+C_
	db					oct_6+C_
	db					oct_5+G_
	db					oct_5+G_
	db					oct_5+A_
	db					oct_5+A_
	db					oct_5+B_
	db					oct_5+B_
	db					oct_6+C_
	db					oct_6+C_
	db					oct_6+D_
	db					oct_6+D_
	db					oct_6+E_
	db					oct_6+E_
	db					oct_6+D_
	db					oct_6+D_
	db					oct_6+C_
	db					oct_6+C_
	db					oct_5+B_
	db					oct_5+B_
	db					oct_5+A_
	db					oct_5+A_
	db					oct_5+B_
	db					oct_5+B_
	db					oct_5+A_
	db					oct_5+A_
	db					oct_5+G_
	db					oct_5+G_
	db					oct_5+F_
	db					oct_5+F_
	db	sound_loop+4
	db	n_multi+6,	n_length+2,	oct_5+E_
	db					n_cut
	db					oct_5+E_
	db					oct_5+E_
	db	sound_loop_break
	db	n_multi+6,	n_length+2,	oct_5+E_
	db					oct_5+E_
	db					oct_5+E_
	db					oct_5+E_
	db					oct_5+E_
	db					n_cut
	db					oct_5+E_
	db					n_cut
	db					oct_5+E_
	db					oct_5+E_
	db					oct_5+E_
	db					oct_5+E_
	db					oct_5+E_
	db					oct_5+E_
	db					oct_5+E_
	db					oct_5+E_
	db					oct_5+C_
	db					oct_5+C_
	db					oct_5+C_
	db					oct_5+C_
	db					oct_5+C_
	db					oct_5+C_
	db					oct_5+C_
	db					oct_5+C_
	db	sound_loop+2
	db	n_multi+6,	n_length+2,	oct_5+C_
	db					n_cut
	db					oct_5+C_
	db					oct_5+C_
	db					oct_5+C_
	db					oct_5+C_
	db					oct_5+C_
	db					oct_5+C_
	db	sound_loop_break
	db	n_multi+6,	n_length+2,	oct_5+C_
	db	n_multi+2,	n_length+13,	n_cut
	db					oct_5+C_
	db					oct_5+C_
	db	n_multi+6,	n_length+1,	n_cut
	db	sound_ret

Music_SpaceshipBoss_DPCM:
	db	sound_main_loop_set
	db	n_multi+6,	n_length+4,	oct_2+C_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_2+C_
	db					oct_2+C_
	db					oct_2+C_
	db			n_length+4,	oct_2+C_
	db			n_length+8,	n_cut
	db			n_length+4,	oct_2+C_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_2+C_
	db			n_length+4,	oct_2+C_
	db			n_length+2,	n_cut
	db					oct_2+C_
	db			n_length+4,	oct_2+C_
	db					oct_2+C_
	db					oct_2+C_
	db			n_length+8,	n_cut
	db			n_length+4,	oct_2+C_
	db					oct_2+C_
	db					oct_2+C_
	db					n_cut
	db					oct_2+C_
	db			n_length+4,	oct_2+C_
	db			n_length+2,	n_cut
	db					oct_2+C_
	db					oct_2+C_
	db					oct_2+C_
	db			n_length+4,	oct_2+C_
	db					oct_2+C_
	db			n_length+8,	n_cut
	db			n_length+4,	oct_2+C_
	db			n_length+2,	oct_2+C_
	db					oct_2+C_
	db			n_length+4,	oct_2+C_
	db					n_cut
	db					oct_2+C_
	db			n_length+2,	oct_2+C_
	db					oct_2+C_
	db			n_length+4,	oct_2+C_
	db					n_cut
	db					oct_2+C_
	db					oct_2+C_
	db			n_length+2,	n_cut
	db					oct_2+C_
	db			n_length+4,	oct_2+C_
	db					oct_2+C_
	db			n_length+2,	oct_2+C_
	db					oct_2+C_
	db			n_length+4,	oct_2+C_
	db					oct_2+C_
	db			n_length+2,	n_cut
	db					oct_2+C_
	db			n_length+4,	oct_2+C_
	db					n_cut
	db					oct_2+C_
	db			n_length+2,	n_cut
	db					oct_2+C_
	db			n_length+6,	oct_2+C_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_2+C_
	db			n_length+2,	n_cut
	db					oct_2+C_
	db	n_multi+4,	n_length+4,	oct_2+C_
	db					n_cut
	db					oct_2+C_
	db	n_multi+6,	n_length+4,	oct_2+C_
	db					oct_2+C_
	db			n_length+2,	oct_2+C_
	db					oct_2+C_
	db					oct_2+C_
	db					oct_2+C_
	db			n_length+4,	oct_2+C_
	db					oct_2+C_
	db					oct_2+C_
	db					n_cut
	db					oct_2+C_
	db			n_length+2,	n_cut
	db					oct_2+C_
	db					oct_2+C_
	db					oct_2+C_
	db			n_length+4,	oct_2+C_
	db					n_cut
	db					oct_2+C_
	db					oct_2+C_
	db					oct_2+C_
	db					n_cut
	db					oct_2+C_
	db			n_length+2,	oct_2+C_
	db					oct_2+C_
	db			n_length+4,	oct_2+C_
	db					oct_2+C_
	db					oct_2+C_
	db					oct_2+C_
	db					oct_2+C_
	db					n_cut
	db					oct_2+C_
	db			n_length+2,	oct_2+C_
	db					oct_2+C_
	db			n_length+4,	oct_2+C_
	db			n_length+6,	n_cut
	db			n_length+2,	oct_2+C_
	db			n_length+4,	oct_2+C_
	db					oct_2+C_
	db			n_length+2,	oct_2+C_
	db					oct_2+C_
	db			n_length+4,	oct_2+C_
	db					oct_2+C_
	db			n_length+2,	oct_2+C_
	db					oct_2+C_
	db			n_length+4,	oct_2+C_
	db					oct_2+C_
	db	sound_ret
