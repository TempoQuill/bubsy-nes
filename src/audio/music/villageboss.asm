Music_VillageBoss:
	channels_tempo PUL1, PUL2, TRI, NSE, DPCM, 136
	dw Music_VillageBoss_PUL1
	dw Music_VillageBoss_PUL2
	dw Music_VillageBoss_TRI
	dw Music_VillageBoss_NSE
	dw Music_VillageBoss_DPCM

Music_VillageBoss_PUL1:
	db	sound_main_loop_set
	db	instrument+i_sax1
	db	n_multi+16,	n_length+2,	oct_2+A#
	db			n_length+1,	oct_1+A#
	db			n_length+2,	n_cut
	db			n_length+1,	oct_1+A#
	db	sound_ret

Music_VillageBoss_PUL2:
	db	sound_main_loop_set
	db	instrument+i_sax1
	db	n_multi+16,	n_length+1,	oct_2+A#
	db					n_cut
	db					oct_2+A#
	db					oct_2+G#
	db					n_cut
	db					oct_2+G#
	db					oct_2+G_
	db					oct_2+G_
	db					oct_2+G_
	db			n_length+3,	n_cut
	db			n_length+1,	oct_2+F_
	db					oct_2+G_
	db					oct_2+A#
	db					oct_2+A#
	db					n_cut
	db					oct_2+G_
	db					oct_2+A#
	db					oct_3+C_
	db					oct_3+C#
	db			n_length+2,	oct_3+D_
	db			n_length+1,	n_cut
	db					oct_2+A#
	db					n_cut
	db					oct_2+A#
	db					oct_2+G#
	db					n_cut
	db					oct_2+G#
	db					oct_2+G_
	db					oct_2+G_
	db					oct_2+G_
	db			n_length+3,	n_cut
	db			n_length+1,	oct_3+D#
	db					oct_3+C#
	db					oct_2+A#
	db					oct_2+A#
	db			n_length+2,	n_cut
	db			n_length+1,	oct_3+D#
	db					oct_3+C#
	db					oct_2+G#
	db			n_length+2,	oct_2+A#
	db			n_length+1,	n_cut
	db	sound_ret

Music_VillageBoss_TRI:
	db	sound_main_loop_set
	db	lnr_ratio+31
	db	n_multi+16,	n_length+1,	oct_5+F_
	db			n_length+2,	n_cut
	db					oct_5+F_
	db					oct_5+D_
	db			n_length+4,	n_cut
	db			n_length+3,	oct_5+G_
	db			n_length+1,	oct_5+F_
	db			n_length+2,	oct_5+G_
	db					oct_5+F_
	db			n_length+1,	n_cut
	db			n_length+3,	oct_5+D_
	db			n_length+1,	oct_5+C_
	db					oct_5+F_
	db			n_length+2,	n_cut
	db					oct_5+F_
	db					oct_5+D_
	db			n_length+4,	n_cut
	db			n_length+3,	oct_5+D#
	db			n_length+1,	oct_5+D_
	db					oct_5+D#
	db					n_cut
	db					oct_5+E_
	db			n_length+2,	oct_5+F_
	db			n_length+1,	oct_5+D#
	db					oct_5+D_
	db					n_cut
	db					oct_5+C_
	db					oct_5+F_
	db			n_length+2,	n_cut
	db			n_length+1,	oct_5+F_
	db					n_cut
	db			n_length+2,	oct_5+D_
	db			n_length+4,	n_cut
	db			n_length+3,	oct_5+G_
	db			n_length+1,	oct_5+F_
	db					oct_5+G_
	db					n_cut
	db					oct_5+F_
	db			n_length+2,	n_cut
	db					oct_5+D_
	db			n_length+1,	n_cut
	db			n_length+11,	oct_4+A#
	db			n_length+2,	n_cut
	db			n_length+1,	oct_4+F_
	db					oct_4+G_
	db					oct_4+A#
	db					oct_5+C_
	db					n_cut
	db					oct_4+G_
	db					oct_4+A#
	db					oct_5+C_
	db					oct_5+D#
	db			n_length+2,	oct_5+F_
	db			n_length+1,	n_cut
	db	sound_ret

Music_VillageBoss_NSE:
	db	sound_main_loop_set
	db	sound_loop+2
	db	n_multi+16,	n_length+2,	$01
	db			n_length+1,	$01
	db					$02
	db					$03
	db					$03
	db	sound_loop_break
	db	n_multi+16,	n_length+2,	$01
	db			n_length+1,	$01
	db					$02
	db					$03
	db					$02
	db			n_length+2,	$01
	db			n_length+1,	$01
	db					$02
	db					$01
	db					$02
	db	sound_ret

Music_VillageBoss_DPCM:
	db	sound_main_loop_set
	db	n_multi+16,	n_length+1,	oct_1+A#
	db					n_cut
	db					oct_1+A#
	db					n_cut
	db					oct_1+A#
	db					oct_1+F_
	db					oct_1+G#
	db					oct_1+G#
	db					oct_1+G#
	db					oct_1+G#
	db					n_cut
	db					oct_1+F_
	db					oct_1+A#
	db					n_cut
	db					oct_1+A#
	db					n_cut
	db					oct_1+A#
	db					oct_1+F_
	db					oct_1+D#
	db					n_cut
	db					oct_1+D#
	db					oct_1+D#
	db					oct_1+F_
	db					oct_1+G#
	db					oct_1+A#
	db					n_cut
	db					oct_1+A#
	db					n_cut
	db					oct_1+A#
	db					oct_1+F_
	db					oct_1+G#
	db					oct_1+G#
	db					oct_1+G#
	db					oct_1+G#
	db					n_cut
	db					oct_1+F_
	db					oct_1+A#
	db					n_cut
	db					oct_1+A#
	db					n_cut
	db					oct_1+A#
	db					oct_1+F_
	db					oct_1+D#
	db					oct_1+F_
	db					oct_1+F_
	db					oct_1+F_
	db					n_cut
	db					oct_1+F_
	db	sound_ret
