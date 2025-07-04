Music_Cave:
	channels_tempo PUL1, PUL2, TRI, NSE, DPCM, 225
	dw Music_Cave_PUL1
	dw Music_Cave_PUL2
	dw Music_Cave_TRI
	dw Music_Cave_NSE
	dw Music_Cave_DPCM

Music_Cave_PUL1:
	db	sound_main_loop_set
	db	instrument+i_sax1
	db	sound_loop+10
	db	n_multi+4,	n_length+24,	n_cut
	db	sound_loop_break
	db	sound_loop+4
	db	n_multi+4,	n_length+2,	oct_3+C_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_3+C_
	db			n_length+12,	n_cut
	db	sound_loop_break
	db	sound_loop+5
	db	n_multi+4,	n_length+2,	oct_3+E_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_3+E_
	db			n_length+12,	n_cut
	db	sound_loop_break
	db	n_multi+4,	n_length+2,	oct_3+F_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_3+F_
	db			n_length+12,	n_cut
	db			n_length+2,	oct_3+F#
	db			n_length+8,	n_cut
	db			n_length+2,	oct_3+F#
	db			n_length+12,	n_cut
	db			n_length+2,	oct_3+G_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_3+G_
	db			n_length+12,	n_cut
	db			n_length+2,	oct_3+E_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_3+E_
	db			n_length+12,	n_cut
	db			n_length+2,	oct_3+F_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_3+F_
	db			n_length+12,	n_cut
	db			n_length+2,	oct_3+F#
	db			n_length+8,	n_cut
	db			n_length+2,	oct_3+F#
	db			n_length+12,	n_cut
	db			n_length+2,	oct_3+G_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_3+G_
	db			n_length+12,	n_cut
	db	sound_loop+2
	db	n_multi+4,	n_length+2,	oct_3+E_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_3+E_
	db			n_length+12,	n_cut
	db			n_length+2,	oct_3+F_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_3+F#
	db			n_length+4,	n_cut
	db			n_length+2,	oct_3+G_
	db			n_length+10,	n_cut
	db	sound_loop_break
	db	n_multi+4,	n_length+2,	oct_3+E_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_3+F_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_3+F#
	db			n_length+4,	n_cut
	db			n_length+2,	oct_3+G_
	db			n_length+4,	n_cut
	db	sound_loop+4
	db	n_multi+4,	n_length+4,	oct_3+E_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_3+F_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_3+F#
	db			n_length+2,	n_cut
	db			n_length+4,	oct_3+G_
	db			n_length+2,	n_cut
	db	sound_loop_break
	db	n_multi+4,	n_length+4,	oct_3+G#
	db			n_length+2,	n_cut
	db			n_length+4,	oct_3+A_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_3+A#
	db			n_length+2,	n_cut
	db			n_length+4,	oct_3+B_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+20,	n_cut
	db	sound_loop+11
	db	lnr_ratio+31
	db	n_multi+6,	n_length+16,	n_cut
	db	sound_loop_break
	db	sound_ret

Music_Cave_PUL2:
	db	sound_main_loop_set
	db	instrument+i_sax1
	db	sound_loop+4
	db	n_multi+4,	n_length+2,	oct_2+C_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_2+C_
	db			n_length+12,	n_cut
	db	sound_loop_break
	db	n_multi+4,	n_length+2,	oct_2+C_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_2+D_
	db			n_length+12,	n_cut
	db			n_length+2,	oct_2+D_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_2+D_
	db			n_length+12,	n_cut
	db			n_length+2,	oct_2+E_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_2+E_
	db			n_length+12,	n_cut
	db			n_length+2,	oct_2+E_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_2+E_
	db			n_length+12,	n_cut
	db			n_length+2,	oct_2+F_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_2+F_
	db			n_length+12,	n_cut
	db			n_length+2,	oct_2+F_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_2+F_
	db			n_length+12,	n_cut
	db	sound_loop+4
	db	n_multi+4,	n_length+2,	oct_2+G_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_2+G_
	db			n_length+12,	n_cut
	db	sound_loop_break
	db	sound_loop+5
	db	n_multi+4,	n_length+2,	oct_3+C_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_3+C_
	db			n_length+12,	n_cut
	db	sound_loop_break
	db	n_multi+4,	n_length+2,	oct_2+B_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_2+B_
	db			n_length+12,	n_cut
	db			n_length+2,	oct_2+A#
	db			n_length+8,	n_cut
	db			n_length+2,	oct_2+A#
	db			n_length+12,	n_cut
	db			n_length+2,	oct_2+A_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_2+A_
	db			n_length+12,	n_cut
	db			n_length+2,	oct_3+C_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_3+C_
	db			n_length+12,	n_cut
	db			n_length+2,	oct_2+B_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_2+B_
	db			n_length+12,	n_cut
	db			n_length+2,	oct_2+A#
	db			n_length+8,	n_cut
	db			n_length+2,	oct_2+A#
	db			n_length+12,	n_cut
	db			n_length+2,	oct_2+A_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_2+A_
	db			n_length+12,	n_cut
	db	sound_loop+2
	db	n_multi+4,	n_length+2,	oct_3+C_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_3+C_
	db			n_length+12,	n_cut
	db			n_length+2,	oct_2+B_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_2+A#
	db			n_length+4,	n_cut
	db			n_length+2,	oct_2+A_
	db			n_length+10,	n_cut
	db	sound_loop_break
	db	n_multi+4,	n_length+2,	oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_2+B_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_2+A#
	db			n_length+4,	n_cut
	db			n_length+2,	oct_2+A_
	db			n_length+4,	n_cut
	db	sound_loop+4
	db	n_multi+4,	n_length+4,	oct_3+C_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_2+B_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_2+A#
	db			n_length+2,	n_cut
	db			n_length+4,	oct_2+A_
	db			n_length+2,	n_cut
	db	sound_loop_break
	db	n_multi+4,	n_length+4,	oct_2+G#
	db			n_length+2,	n_cut
	db			n_length+4,	oct_2+G_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_2+F#
	db			n_length+2,	n_cut
	db			n_length+4,	oct_2+F_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_2+E_
	db			n_length+20,	n_cut
	db	sound_loop+11
	db	lnr_ratio+31
	db	n_multi+6,	n_length+16,	n_cut
	db	sound_loop_break
	db	sound_ret

Music_Cave_TRI:
	db	sound_main_loop_set
	db	sound_loop+18
	db	lnr_ratio+31
	db	n_multi+6,	n_length+16,	n_cut
	db					n_cut
	db	sound_loop_break
	db	lnr_ratio+31
	db	sound_loop+16
	db	n_multi+6,	n_length+1,	oct_6+C_
	db					oct_5+G_
	db					oct_5+C_
	db					oct_5+G_
	db	sound_loop_break
	db	sound_loop+2
	db	n_multi+6,	n_length+1,	oct_6+C_
	db					oct_5+G_
	db					oct_5+C_
	db					oct_5+F_
	db					oct_6+C_
	db					oct_5+F_
	db					oct_5+C_
	db	sound_loop_break
	db	n_multi+6,	n_length+1,	oct_6+C_
	db					oct_5+G_
	db					oct_5+C_
	db					oct_5+G_
	db					oct_6+C_
	db					oct_5+C_
	db	sound_loop+2
	db	n_multi+6,	n_length+1,	oct_5+F_
	db					oct_6+C_
	db					oct_5+G_
	db					oct_5+C_
	db					oct_5+F_
	db					oct_6+C_
	db					oct_5+F_
	db					oct_5+C_
	db	sound_loop_break
	db	n_multi+6,	n_length+1,	oct_5+G_
	db					oct_6+C_
	db					oct_5+F_
	db					oct_5+C_
	db					oct_5+F_
	db					oct_6+C_
	db					oct_5+G_
	db					oct_5+F_
	db					oct_5+C_
	db					oct_5+F_
	db					oct_5+G_
	db					oct_6+C_
	db					oct_5+G_
	db					oct_5+F_
	db					oct_5+C_
	db					oct_5+F_
	db					oct_6+C_
	db					oct_5+F_
	db					oct_5+C_
	db					oct_5+F_
	db					oct_5+G_
	db					oct_6+C_
	db					oct_5+F_
	db					oct_5+C_
	db					oct_5+F_
	db					oct_5+G_
	db					oct_6+C_
	db					oct_5+G_
	db			n_length+12,	oct_6+C_
	db			n_length+4,	n_cut
	db			n_length+16,	n_cut
	db					n_cut
	db					n_cut
	db	sound_ret

Music_Cave_NSE:
	db	sound_main_loop_set
	db	sound_loop+15
	db	n_multi+4,	n_length+4,	$01
	db			n_length+2,	$03
	db			n_length+4,	$02
	db			n_length+2,	$03
	db	sound_loop_break
	db	n_multi+4,	n_length+4,	$01
	db			n_length+2,	$03
	db			n_length+4,	$02
	db			n_length+2,	$02
	db	sound_ret

Music_Cave_DPCM:
	db	sound_main_loop_set
	db	n_multi+2,	n_length+12,	oct_3+C_
	db					oct_2+C_
	db			n_length+20,	oct_3+C_
	db			n_length+16,	oct_2+A#
	db			n_length+20,	oct_3+C_
	db			n_length+15,	oct_2+C_
	db			n_length+1,	n_cut
	db			n_length+12,	oct_3+C_
	db					oct_2+A#
	db			n_length+20,	oct_3+C_
	db			n_length+16,	oct_2+C_
	db			n_length+20,	oct_3+C_
	db			n_length+15,	oct_2+A#
	db			n_length+1,	n_cut
	db	sound_ret
