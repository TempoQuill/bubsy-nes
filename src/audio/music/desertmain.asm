Music_DesertMain:
	channels_tempo, PUL1, PUL2, TRI, NSE, DPCM, 140
	dw Music_DesertMain_PUL1
	dw Music_DesertMain_PUL2
	dw Music_DesertMain_TRI
	dw Music_DesertMain_NSE
	dw Music_DesertMain_DPCM

Music_DesertMain_PUL1:
	db	instrument+i_piano
	db	n_multi+8,	n_length+6,	n_cut
	db			n_length+2,	oct_2+A_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_2+A_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_2+A_
	db			n_length+22,	n_cut
	db			n_length+2,	oct_2+A_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_2+A_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_2+A_
	db			n_length+22,	n_cut
	db			n_length+2,	oct_2+A_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_2+A_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_2+A_
	db			n_length+22,	n_cut
	db			n_length+2,	oct_2+A_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_2+A_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_2+A_
	db			n_length+16,	n_cut
	db	sound_main_loop_set
	db	sound_loop+2
	db	instrument+i_piano
	db	n_multi+4,	n_length+12,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+20,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+20,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+16,	n_cut
	db			n_length+3,	oct_4+C_
	db			n_length+1,	n_cut
	db			n_length+4,	oct_4+D_
	db			n_length+3,	oct_4+C_
	db			n_length+1,	n_cut
	db			n_length+5,	oct_4+F_
	db			n_length+11,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+20,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+20,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+16,	n_cut
	db			n_length+3,	oct_3+C_
	db			n_length+1,	n_cut
	db			n_length+4,	oct_3+D_
	db			n_length+3,	oct_3+C_
	db			n_length+1,	n_cut
	db			n_length+5,	oct_3+F_
	db			n_length+11,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+20,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+20,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+16,	n_cut
	db			n_length+3,	oct_4+C_
	db			n_length+1,	n_cut
	db			n_length+4,	oct_4+D_
	db			n_length+3,	oct_4+C_
	db			n_length+1,	n_cut
	db			n_length+5,	oct_4+F_
	db			n_length+11,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+20,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+20,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+16,	n_cut
	db			n_length+3,	oct_4+C_
	db			n_length+1,	n_cut
	db			n_length+4,	oct_4+D_
	db			n_length+3,	oct_4+C_
	db			n_length+1,	n_cut
	db			n_length+4,	oct_4+F_
	db	sound_loop_break
	db	instrument+i_piano
	db	n_multi+8,	n_length+6,	n_cut
	db			n_length+2,	oct_3+D_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_3+D_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_3+D_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_3+D_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_3+E_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_3+G_
	db			n_length+10,	n_cut
	db			n_length+4,	oct_3+G_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_3+F_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_3+E_
	db			n_length+8,	n_cut
	db			n_length+2,	oct_3+D_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_3+D_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_3+D_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_3+D_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_3+E_
	db			n_length+10,	n_cut
	db			n_length+2,	oct_3+G_
	db			n_length+10,	n_cut
	db			n_length+4,	oct_3+G_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_3+F_
	db			n_length+2,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+2,	n_cut
	db	sound_ret

Music_DesertMain_PUL2:
	db	instrument+i_piano
	db	n_multi+4,	n_length+12,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+20,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+20,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+16,	n_cut
	db	n_multi+2,	n_length+6,	oct_4+C_
	db			n_length+2,	n_cut
	db			n_length+7,	oct_4+D_
	db			n_length+1,	n_cut
	db			n_length+6,	oct_4+C_
	db			n_length+2,	n_cut
	db			n_length+10,	oct_4+F_
	db	n_multi+4,	n_length+11,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+20,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+20,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+16,	n_cut
	db	n_multi+2,	n_length+6,	oct_3+C_
	db			n_length+2,	n_cut
	db			n_length+7,	oct_3+D_
	db			n_length+1,	n_cut
	db			n_length+6,	oct_3+C_
	db			n_length+2,	n_cut
	db			n_length+10,	oct_3+F_
	db	n_multi+4,	n_length+11,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+20,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+20,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+16,	n_cut
	db	n_multi+2,	n_length+6,	oct_4+C_
	db			n_length+2,	n_cut
	db			n_length+7,	oct_4+D_
	db			n_length+1,	n_cut
	db			n_length+6,	oct_4+C_
	db			n_length+2,	n_cut
	db			n_length+10,	oct_4+F_
	db	n_multi+4,	n_length+11,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+20,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+20,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+16,	n_cut
	db	n_multi+2,	n_length+6,	oct_4+C_
	db			n_length+2,	n_cut
	db			n_length+7,	oct_4+D_
	db			n_length+1,	n_cut
	db			n_length+6,	oct_4+C_
	db			n_length+2,	n_cut
	db			n_length+8,	oct_4+F_
	db	sound_main_loop_set
	db	sound_loop+2
	db	instrument+i_piano
	db	n_multi+8,	n_length+4,	n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+4,	oct_4+F_
	db			n_length+2,	oct_4+A_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_3+A_
	db			n_length+4,	oct_4+C_
	db			n_length+2,	oct_3+A#
	db			n_length+4,	oct_3+A_
	db			n_length+2,	oct_3+F_
	db			n_length+4,	oct_3+A_
	db			n_length+2,	oct_3+A#
	db			n_length+6,	n_cut
	db			n_length+4,	oct_3+F_
	db			n_length+2,	oct_4+F_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_3+A_
	db			n_length+4,	oct_4+C_
	db			n_length+2,	oct_3+A#
	db			n_length+4,	n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+4,	oct_4+D_
	db			n_length+2,	oct_4+F_
	db			n_length+4,	oct_4+D_
	db			n_length+2,	oct_4+C_
	db			n_length+4,	n_cut
	db			n_length+5,	oct_4+C_
	db			n_length+1,	n_cut
	db			n_length+2,	oct_3+A_
	db			n_length+4,	oct_4+C_
	db			n_length+2,	oct_4+F_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_4+C_
	db			n_length+4,	oct_4+D_
	db			n_length+2,	oct_4+F_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_3+F_
	db			n_length+4,	oct_3+A_
	db			n_length+2,	oct_4+C_
	db			n_length+4,	oct_3+A#
	db			n_length+2,	oct_3+A_
	db			n_length+4,	oct_3+A#
	db			n_length+2,	oct_4+C_
	db			n_length+4,	oct_3+A#
	db			n_length+2,	oct_3+A_
	db			n_length+4,	oct_3+G_
	db			n_length+2,	oct_3+A_
	db			n_length+4,	n_cut
	db			n_length+2,	oct_3+A_
	db			n_length+4,	oct_3+A#
	db			n_length+2,	oct_3+A_
	db			n_length+4,	oct_3+A#
	db			n_length+2,	oct_3+A_
	db					oct_3+G_
	db					n_cut
	db			n_length+6,	oct_3+F_
	db			n_length+2,	oct_3+A_
	db			n_length+4,	oct_4+C_
	db			n_length+2,	oct_4+F_
	db			n_length+12,	n_cut
	db	sound_loop_break
	db	instrument+i_piano
	db	n_multi+4,	n_length+8,	oct_3+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+G_
	db			n_length+4,	oct_3+F_
	db			n_length+8,	oct_3+D_
	db			n_length+4,	oct_3+C_
	db			n_length+8,	oct_2+A#
	db			n_length+4,	oct_2+G_
	db			n_length+8,	oct_2+A#
	db			n_length+4,	oct_3+C_
	db					oct_3+D_
	db					n_cut
	db			n_length+8,	oct_3+F_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+D_
	db			n_length+4,	n_cut
	db					oct_3+F_
	db			n_length+8,	oct_3+E_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+E_
	db			n_length+4,	oct_3+C_
	db			n_length+8,	oct_3+D_
	db			n_length+8,	oct_3+E_
	db			n_length+16,	n_cut
	db			n_length+8,	oct_2+A#
	db			n_length+4,	n_cut
	db					oct_2+G_
	db			n_length+8,	oct_2+A#
	db			n_length+8,	oct_3+C_
	db					n_cut
	db			n_length+4,	oct_3+A#
	db			n_length+8,	n_cut
	db					oct_3+G_
	db			n_length+4,	oct_3+F_
	db					oct_3+D_
	db					n_cut
	db					oct_3+C_
	db			n_length+8,	oct_2+A#
	db			n_length+4,	oct_2+G_
	db			n_length+8,	oct_2+A#
	db			n_length+4,	oct_3+C_
	db			n_length+8,	oct_3+D_
	db					oct_3+F_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+D_
	db			n_length+4,	n_cut
	db					oct_3+F_
	db			n_length+12,	oct_3+E_
	db					oct_3+C_
	db			n_length+15,	oct_2+G_
	db			n_length+5,	n_cut
	db			n_length+4,	oct_2+F_
	db					oct_2+G_
	db					oct_2+A#
	db					oct_3+C_
	db					oct_3+D_
	db					n_cut
	db			n_length+12,	oct_3+F_
	db			n_length+4,	oct_3+E_
	db			n_length+8,	oct_3+D_
	db			n_length+4,	oct_3+C_
	db	sound_ret

Music_DesertMain_TRI:
	db	lnr_ratio+31
	db	n_multi+8,	n_length+24,	n_cut
	db					n_cut
	db					n_cut
	db					n_cut
	db					n_cut
	db					n_cut
	db					n_cut
	db			n_length+22,	n_cut
	db			n_length+2,	oct_6+C_
	db	sound_main_loop_set
	db	sound_loop+2
	db	lnr_ratio+31
	db	n_multi+8,	n_length+2,	oct_5+F_
	db					n_cut
	db			n_length+16,	oct_6+C_
	db			n_length+2,	n_cut
	db					oct_5+F_
	db			n_length+3,	oct_5+G_
	db			n_length+1,	n_cut
	db			n_length+5,	oct_5+A_
	db			n_length+13,	n_cut
	db			n_length+2,	oct_5+C_
	db					oct_5+F_
	db					n_cut
	db			n_length+17,	oct_6+C_
	db	n_multi+4,	n_length+2,	n_cut
	db			n_length+4,	oct_5+A_
	db			n_length+6,	oct_5+G_
	db			n_length+2,	n_cut
	db			n_length+10,	oct_5+F_
	db			n_length+26,	n_cut
	db			n_length+4,	oct_5+C_
	db					oct_5+F_
	db					n_cut
	db			n_length+32,	oct_6+C_
	db			n_length+4,	n_cut
	db					oct_5+F_
	db			n_length+6,	oct_5+G_
	db			n_length+2,	n_cut
	db			n_length+10,	oct_5+A_
	db			n_length+14,	n_cut
	db			n_length+4,	oct_5+C_
	db					oct_5+F_
	db			n_length+3,	n_cut
	db			n_length+4,	oct_5+G_
	db			n_length+1,	n_cut
	db			n_length+4,	oct_5+G#
	db					oct_5+G_
	db			n_length+16,	oct_5+F_
	db			n_length+10,	oct_5+D_
	db			n_length+2,	n_cut
	db			n_length+8,	oct_5+E_
	db			n_length+12,	oct_5+F_
	db			n_length+12,	n_cut
	db					n_cut
	db					n_cut
	db			n_length+4,	oct_5+C_
	db	sound_loop_break
	db	lnr_ratio+31
	db	n_multi+4,	n_length+23,	oct_4+A#
	db			n_length+1,	n_cut
	db			n_length+8,	oct_5+D_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+D_
	db			n_length+4,	n_cut
	db			n_length+24,	oct_5+F_
	db	n_multi+2,	n_length+23,	oct_5+D_
	db			n_length+3,	n_cut
	db			n_length+20,	oct_5+F_
	db			n_length+2,	n_cut
	db	n_multi+8,	n_length+11,	oct_5+E_
	db			n_length+1,	n_cut
	db			n_length+17,	oct_5+C_
	db			n_length+1,	n_cut
	db			n_length+6,	oct_4+A#
	db					oct_4+A_
	db					oct_4+G_
	db	n_multi+4,	n_length+23,	oct_4+A#
	db			n_length+1,	n_cut
	db			n_length+8,	oct_5+D_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+D_
	db			n_length+4,	n_cut
	db			n_length+24,	oct_5+F_
	db	n_multi+2,	n_length+23,	oct_5+E_
	db			n_length+3,	n_cut
	db			n_length+20,	oct_5+F_
	db			n_length+2,	n_cut
	db	n_multi+8,	n_length+11,	oct_5+G_
	db			n_length+1,	n_cut
	db			n_length+17,	oct_5+E_
	db			n_length+1,	n_cut
	db			n_length+6,	oct_4+A#
	db					oct_4+A_
	db			n_length+4,	oct_5+C_
	db			n_length+2,	n_cut
	db	sound_ret

Music_DesertMain_NSE:
	db	n_multi+8,	n_length+24,	n_cut
	db					n_cut
	db					n_cut
	db			n_length+6,	n_cut
	db			n_length+1,	$03
	db			n_length+11,	n_cut
	db			n_length+1,	$03
	db			n_length+5,	n_cut
	db			n_length+6,	n_cut
	db			n_length+1,	$03
	db			n_length+11,	n_cut
	db			n_length+1,	$03
	db			n_length+5,	n_cut
	db			n_length+6,	n_cut
	db			n_length+1,	$03
	db			n_length+11,	n_cut
	db			n_length+1,	$03
	db			n_length+5,	n_cut
	db			n_length+6,	n_cut
	db			n_length+1,	$03
	db			n_length+11,	n_cut
	db			n_length+1,	$03
	db			n_length+5,	n_cut
	db			n_length+6,	n_cut
	db			n_length+1,	$03
	db			n_length+5,	n_cut
	db			n_length+2,	$02
	db					$02
	db					$02
	db					$02
	db					$02
	db					$02
	db	sound_main_loop_set
	db	sound_loop+2
	db	n_multi+8,	n_length+4,	$01
	db			n_length+2,	$05
	db			n_length+4,	$05
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$05
	db			n_length+4,	$05
	db			n_length+2,	$02
	db			n_length+4,	$01
	db			n_length+2,	$05
	db			n_length+4,	$05
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$05
	db					$02
	db					$02
	db					$02
	db			n_length+4,	$01
	db			n_length+2,	$05
	db			n_length+4,	$05
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$05
	db			n_length+4,	$05
	db			n_length+2,	$02
	db			n_length+4,	$01
	db			n_length+2,	$05
	db			n_length+4,	$05
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$05
	db			n_length+4,	$02
	db			n_length+2,	$02
	db			n_length+4,	$01
	db			n_length+2,	$05
	db			n_length+4,	$05
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$05
	db			n_length+4,	$05
	db			n_length+2,	$02
	db			n_length+4,	$01
	db			n_length+2,	$05
	db			n_length+4,	$05
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$05
	db			n_length+4,	$02
	db			n_length+2,	$02
	db			n_length+4,	$01
	db			n_length+2,	$05
	db			n_length+4,	$05
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$05
	db			n_length+4,	$05
	db			n_length+2,	$02
	db			n_length+4,	$01
	db			n_length+2,	$05
	db			n_length+4,	$05
	db			n_length+2,	$01
	db			n_length+4,	$02
	db			n_length+2,	$05
	db					$02
	db					$02
	db					$02
	db	sound_loop_break
	db	n_multi+4,	n_length+8,	$01
	db			n_length+4,	$05
	db			n_length+8,	$05
	db			n_length+4,	$01
	db			n_length+12,	$02
	db			n_length+4,	$05
	db					$05
	db					$02
	db					$01
	db					$05
	db					$05
	db					$05
	db					$05
	db					$01
	db			n_length+8,	$02
	db			n_length+3,	$02
	db			n_length+1,	$05
	db			n_length+4,	$02
	db			n_length+3,	$02
	db			n_length+1,	$05
	db			n_length+3,	$02
	db			n_length+1,	$05
	db			n_length+7,	$01
	db			n_length+4,	$05
	db			n_length+8,	$05
	db			n_length+1,	$05
	db			n_length+3,	$01
	db			n_length+1,	$05
	db			n_length+11,	$02
	db			n_length+4,	$05
	db					$05
	db			n_length+1,	$05
	db			n_length+3,	$02
	db			n_length+1,	$05
	db			n_length+7,	$01
	db			n_length+4,	$05
	db			n_length+8,	$05
	db			n_length+1,	$05
	db			n_length+3,	$01
	db			n_length+1,	$05
	db			n_length+7,	$02
	db			n_length+4,	$05
	db			n_length+1,	$05
	db			n_length+4,	$02
	db			n_length+3,	$02
	db			n_length+1,	$05
	db			n_length+3,	$02
	db			n_length+1,	$05
	db			n_length+3,	$01
	db			n_length+4,	$05
	db					$05
	db					$05
	db					$05
	db			n_length+1,	$05
	db			n_length+3,	$01
	db			n_length+1,	$05
	db			n_length+7,	$02
	db			n_length+12,	$05
	db			n_length+1,	$05
	db			n_length+3,	$02
	db			n_length+1,	$05
	db			n_length+7,	$01
	db			n_length+4,	$05
	db			n_length+8,	$05
	db			n_length+1,	$05
	db			n_length+3,	$01
	db			n_length+1,	$05
	db			n_length+7,	$02
	db			n_length+5,	$05
	db			n_length+7,	$02
	db			n_length+1,	$05
	db			n_length+3,	$02
	db			n_length+1,	$05
	db			n_length+7,	$01
	db			n_length+4,	$05
	db					$05
	db					$05
	db			n_length+1,	$05
	db			n_length+3,	$01
	db			n_length+1,	$05
	db			n_length+7,	$02
	db			n_length+4,	$05
	db					$05
	db					$05
	db			n_length+1,	$05
	db			n_length+3,	$02
	db			n_length+1,	$05
	db			n_length+4,	$02
	db					$02
	db			n_length+3,	$02
	db			n_length+1,	$05
	db			n_length+4,	$02
	db					$02
	db			n_length+3,	$02
	db			n_length+1,	$05
	db			n_length+4,	$02
	db					$02
	db			n_length+3,	$02
	db			n_length+1,	$05
	db			n_length+4,	$02
	db					$02
	db					$02
	db	sound_ret

Music_DesertMain_DPCM:
	db	sound_loop+8
	db	n_multi+8,	n_length+2,	oct_1+F_
	db					n_cut
	db					oct_1+A_
	db			n_length+4,	oct_2+C_
	db			n_length+8,	oct_2+D_
	db			n_length+4,	oct_2+C_
	db			n_length+2,	oct_2+D_
	db	sound_loop_break
	db	sound_main_loop_set
	db	sound_loop+8
	db	n_multi+4,	n_length+4,	oct_1+F_
	db					n_cut
	db					oct_1+F_
	db					oct_2+C_
	db					n_cut
	db					oct_2+C_
	db					oct_1+A#
	db					n_cut
	db					oct_1+A#
	db					oct_2+C_
	db					oct_1+C_
	db					oct_2+D_
	db					oct_1+F_
	db					n_cut
	db					oct_1+F_
	db					oct_2+C_
	db					n_cut
	db					oct_2+C_
	db					oct_1+A#
	db					n_cut
	db					oct_1+A#
	db					oct_2+D_
	db			n_length+1,	n_cut
	db			n_length+3,	oct_1+C_
	db			n_length+4,	oct_2+C_
	db	sound_loop_break
	db	sound_loop+2
	db	n_multi+2,	n_length+13,	oct_1+A#
	db			n_length+3,	n_cut
	db					oct_2+A#
	db			n_length+5,	n_cut
	db			n_length+13,	oct_1+G#
	db			n_length+3,	n_cut
	db					oct_2+G#
	db			n_length+5,	n_cut
	db			n_length+13,	oct_1+G_
	db			n_length+3,	n_cut
	db					oct_2+G_
	db			n_length+5,	n_cut
	db			n_length+13,	oct_1+F_
	db			n_length+3,	n_cut
	db					oct_2+F_
	db			n_length+5,	n_cut
	db			n_length+13,	oct_1+A#
	db			n_length+3,	n_cut
	db					oct_2+A#
	db			n_length+5,	n_cut
	db			n_length+13,	oct_1+G#
	db			n_length+3,	n_cut
	db					oct_2+G#
	db			n_length+5,	n_cut
	db			n_length+13,	oct_1+A#
	db			n_length+3,	n_cut
	db					oct_2+A#
	db			n_length+5,	n_cut
	db			n_length+13,	oct_1+B_
	db			n_length+3,	n_cut
	db					oct_2+B_
	db			n_length+5,	n_cut
	db			n_length+13,	oct_2+C_
	db			n_length+3,	n_cut
	db					oct_3+C_
	db			n_length+5,	n_cut
	db			n_length+13,	oct_1+A#
	db			n_length+3,	n_cut
	db					oct_2+A#
	db			n_length+5,	n_cut
	db			n_length+13,	oct_2+C_
	db			n_length+3,	n_cut
	db					oct_3+C_
	db			n_length+5,	n_cut
	db			n_length+13,	oct_1+G_
	db			n_length+3,	n_cut
	db					oct_2+G_
	db			n_length+5,	n_cut
	db			n_length+13,	oct_2+C_
	db			n_length+3,	n_cut
	db					oct_3+C_
	db			n_length+5,	n_cut
	db			n_length+13,	oct_1+A#
	db			n_length+3,	n_cut
	db					oct_2+A#
	db			n_length+5,	n_cut
	db			n_length+13,	oct_1+A_
	db			n_length+3,	n_cut
	db					oct_2+A_
	db			n_length+5,	n_cut
	db			n_length+13,	oct_1+G_
	db			n_length+3,	n_cut
	db					oct_2+G_
	db			n_length+5,	n_cut
	db	sound_loop_break
	db	sound_ret
