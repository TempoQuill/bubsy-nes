Music_TreetopsMain:
	channels_tempo PUL1, PUL2, TRI, NSE, DPCM, 218
	dw Music_TreetopsMain_PUL1
	dw Music_TreetopsMain_PUL2
	dw Music_TreetopsMain_TRI
	dw Music_TreetopsMain_NSE
	dw Music_TreetopsMain_DPCM

Music_TreetopsBoss:
	channels_tempo PUL1, PUL2, TRI, NSE, DPCM, 218
	dw Music_TreetopsBoss_PUL1
	dw Music_TreetopsBoss_PUL2
	dw Music_TreetopsBoss_TRI
	dw Music_TreetopsBoss_NSE
	dw Music_TreetopsBoss_DPCM

Music_TreetopsMain_PUL1:
	db	instrument+i_sax1
	db	sound_loop+4
	db	n_multi+6,	n_length+4,	oct_1+D#
	db	n_multi+2,	n_length+26,	oct_2+D#
	db			n_length+4,	n_cut
	db	n_multi+6,	n_length+6,	oct_1+D#
	db			n_length+12,	oct_2+D#
	db	sound_loop_break
	db	sound_main_loop_set
	db	instrument+i_sax1
	db	sound_loop+8
	db	n_multi+6,	n_length+16,	n_cut
	db	sound_loop_break
	db	n_multi+2,	n_length+12,	n_cut
	db			n_length+6,	oct_3+G#
	db					n_cut
	db			n_length+18,	oct_3+F#
	db			n_length+6,	oct_3+G#
	db					n_cut
	db					oct_3+G#
	db					n_cut
	db			n_length+3,	oct_3+G#
	db					n_cut
	db			n_length+12,	oct_3+F#
	db					oct_3+A#
	db					n_cut
	db			n_length+6,	oct_3+G#
	db					n_cut
	db			n_length+18,	oct_3+F#
	db			n_length+6,	oct_3+G#
	db					n_cut
	db					oct_3+G#
	db					n_cut
	db			n_length+3,	oct_3+G#
	db					n_cut
	db			n_length+12,	oct_3+F#
	db					oct_3+F_
	db					n_cut
	db			n_length+6,	oct_3+A#
	db					n_cut
	db			n_length+12,	oct_3+A#
	db			n_length+6,	n_cut
	db					oct_4+C#
	db					n_cut
	db					oct_4+C#
	db					n_cut
	db			n_length+3,	oct_4+C#
	db					n_cut
	db			n_length+8,	oct_3+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_4+C_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+G#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+G#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_3+G_
	db					oct_3+G#
	db					n_cut
	db			n_length+6,	oct_3+G_
	db	n_multi+6,	n_length+16,	n_cut
	db			n_length+10,	n_cut
	db			n_length+1,	oct_3+C_
	db			n_length+3,	n_cut
	db			n_length+1,	oct_3+D#
	db			n_length+11,	n_cut
	db			n_length+1,	oct_3+C_
	db					n_cut
	db					oct_3+D#
	db					n_cut
	db					oct_3+G_
	db			n_length+11,	n_cut
	db			n_length+1,	oct_3+C_
	db			n_length+3,	n_cut
	db			n_length+1,	oct_3+D#
	db			n_length+11,	n_cut
	db			n_length+1,	oct_3+G#
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db					oct_3+G_
	db			n_length+11,	n_cut
	db			n_length+1,	oct_3+C_
	db			n_length+3,	n_cut
	db			n_length+1,	oct_3+D#
	db			n_length+11,	n_cut
	db			n_length+1,	oct_3+C_
	db					n_cut
	db					oct_3+D#
	db					n_cut
	db					oct_3+F#
	db			n_length+11,	n_cut
	db			n_length+1,	oct_3+C_
	db			n_length+3,	n_cut
	db			n_length+1,	oct_3+D#
	db			n_length+11,	n_cut
	db			n_length+1,	oct_3+F_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db					oct_3+G_
	db			n_length+11,	n_cut
	db			n_length+1,	oct_3+C_
	db			n_length+3,	n_cut
	db			n_length+1,	oct_3+D#
	db			n_length+11,	n_cut
	db			n_length+1,	oct_3+C_
	db					n_cut
	db					oct_3+D#
	db					n_cut
	db					oct_3+G_
	db			n_length+11,	n_cut
	db			n_length+1,	oct_3+C_
	db			n_length+3,	n_cut
	db			n_length+1,	oct_3+D#
	db			n_length+11,	n_cut
	db			n_length+1,	oct_3+G#
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db	instrument+i_sax1
	db	sound_loop+2
	db	n_multi+1,	n_length+22,	oct_1+D#
	db			n_length+2,	n_cut
	db			n_length+32,	oct_2+D#
	db			n_length+21,	n_tie
	db			n_length+7,	n_cut
	db	n_multi+6,	n_length+6,	oct_1+D#
	db	n_multi+7,	n_length+10,	oct_2+D#
	db	n_multi+1,	n_length+2,	n_cut
	db			n_length+22,	oct_1+F#
	db			n_length+2,	n_cut
	db			n_length+32,	oct_2+F#
	db			n_length+21,	n_tie
	db			n_length+7,	n_cut
	db	n_multi+6,	n_length+6,	oct_1+F#
	db	n_multi+7,	n_length+10,	oct_2+F#
	db	n_multi+1,	n_length+2,	n_cut
	db			n_length+22,	oct_1+D#
	db			n_length+2,	n_cut
	db			n_length+32,	oct_2+D#
	db			n_length+21,	n_tie
	db			n_length+7,	n_cut
	db	n_multi+6,	n_length+6,	oct_1+D#
	db	n_multi+7,	n_length+10,	oct_2+D#
	db	n_multi+1,	n_length+2,	n_cut
	db			n_length+22,	oct_1+D#
	db			n_length+2,	n_cut
	db			n_length+32,	oct_2+D#
	db			n_length+21,	n_tie
	db			n_length+7,	n_cut
	db	n_multi+6,	n_length+6,	oct_1+D#
	db	n_multi+7,	n_length+10,	oct_2+D#
	db	n_multi+1,	n_length+2,	n_cut
	db	sound_loop_break
	db	instrument+i_sax1
	db	sound_loop+8
	db	n_multi+6,	n_length+16,	n_cut
	db	sound_loop_break
	db	n_multi+2,	n_length+12,	n_cut
	db			n_length+6,	oct_3+G#
	db					n_cut
	db			n_length+18,	oct_3+F#
	db			n_length+6,	oct_3+G#
	db					n_cut
	db					oct_3+G#
	db					n_cut
	db			n_length+3,	oct_3+G#
	db					n_cut
	db			n_length+12,	oct_3+F#
	db					oct_3+A#
	db					n_cut
	db			n_length+6,	oct_3+G#
	db					n_cut
	db			n_length+18,	oct_3+F#
	db			n_length+6,	oct_3+G#
	db					n_cut
	db					oct_3+G#
	db					n_cut
	db			n_length+3,	oct_3+G#
	db					n_cut
	db			n_length+12,	oct_3+F#
	db					oct_3+F_
	db					n_cut
	db			n_length+6,	oct_3+A#
	db					n_cut
	db			n_length+12,	oct_3+A#
	db			n_length+6,	n_cut
	db					oct_4+C#
	db					n_cut
	db					oct_4+C#
	db					n_cut
	db			n_length+3,	oct_4+C#
	db					n_cut
	db			n_length+8,	oct_3+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_4+C_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+G#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+G#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_3+G_
	db					oct_3+G#
	db					n_cut
	db			n_length+6,	oct_3+G_
	db	n_multi+6,	n_length+16,	n_cut
	db			n_length+10,	n_cut
	db			n_length+1,	oct_3+C_
	db			n_length+3,	n_cut
	db			n_length+1,	oct_3+D#
	db			n_length+11,	n_cut
	db			n_length+1,	oct_3+C_
	db					n_cut
	db					oct_3+D#
	db					n_cut
	db					oct_3+G_
	db			n_length+11,	n_cut
	db			n_length+1,	oct_3+C_
	db			n_length+3,	n_cut
	db			n_length+1,	oct_3+D#
	db			n_length+11,	n_cut
	db			n_length+1,	oct_3+G#
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db					oct_3+G_
	db			n_length+11,	n_cut
	db			n_length+1,	oct_3+C_
	db			n_length+3,	n_cut
	db			n_length+1,	oct_3+D#
	db			n_length+11,	n_cut
	db			n_length+1,	oct_3+C_
	db					n_cut
	db					oct_3+D#
	db					n_cut
	db					oct_3+F#
	db			n_length+11,	n_cut
	db			n_length+1,	oct_3+C_
	db			n_length+3,	n_cut
	db			n_length+1,	oct_3+D#
	db			n_length+11,	n_cut
	db			n_length+1,	oct_3+F_
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db					oct_3+G_
	db			n_length+11,	n_cut
	db			n_length+1,	oct_3+C_
	db			n_length+3,	n_cut
	db			n_length+1,	oct_3+D#
	db			n_length+11,	n_cut
	db			n_length+1,	oct_3+C_
	db					n_cut
	db					oct_3+D#
	db					n_cut
	db					oct_3+G_
	db			n_length+11,	n_cut
	db			n_length+1,	oct_3+C_
	db			n_length+3,	n_cut
	db			n_length+1,	oct_3+D#
	db			n_length+11,	n_cut
	db			n_length+1,	oct_3+G#
	db					n_cut
	db					oct_3+G_
	db					n_cut
	db					oct_3+G_
	db					n_cut

Music_TreetopsBoss_PUL1:
	db	sound_main_loop_set
	db	instrument+i_sax1
	db	sound_loop+2
	db	n_multi+6,	n_length+10,	n_cut
	db	n_multi+1,	n_length+5,	oct_3+C_
	db			n_length+19,	n_cut
	db			n_length+5,	oct_3+D#
	db			n_length+32,	n_cut
	db	n_multi+5,	n_length+7,	n_cut
	db			n_length+1,	oct_3+C_
	db	n_multi+1,	n_length+7,	n_cut
	db			n_length+5,	oct_3+D#
	db			n_length+7,	n_cut
	db					oct_3+F#
	db	n_multi+5,	n_length+13,	n_cut
	db			n_length+1,	oct_3+C_
	db	n_multi+1,	n_length+19,	n_cut
	db			n_length+3,	oct_3+D#
	db	n_multi+3,	n_length+23,	n_cut
	db	n_multi+1,	n_length+5,	oct_3+E_
	db			n_length+7,	n_cut
	db			n_length+5,	oct_3+D#
	db			n_length+7,	n_cut
	db					oct_3+C#
	db			n_length+5,	n_cut
	db			n_length+7,	oct_3+C_
	db			n_length+32,	n_cut
	db			n_length+21,	n_cut
	db			n_length+5,	oct_3+C_
	db			n_length+19,	n_cut
	db	n_multi+4,	n_length+1,	oct_3+D#
	db			n_length+17,	n_cut
	db	n_multi+1,	n_length+5,	oct_3+F_
	db			n_length+7,	n_cut
	db			n_length+4,	oct_3+F_
	db	n_multi+2,			n_cut
	db	n_multi+3,	n_length+1,	oct_3+D#
	db			n_length+23,	n_cut
	db	n_multi+1,	n_length+5,	oct_3+C_
	db			n_length+7,	n_cut
	db			n_length+5,	oct_3+D#
	db			n_length+7,	n_cut
	db					oct_3+F#
	db	n_multi+5,	n_length+13,	n_cut
	db	n_multi+6,	n_length+1,	oct_3+E_
	db			n_length+3,	n_cut
	db	n_multi+1,	n_length+5,	oct_3+D#
	db			n_length+7,	n_cut
	db	sound_loop_break
	db	sound_ret

Music_TreetopsMain_PUL2:
	db	instrument+i_sax1
	db	n_multi+2,	n_length+6,	oct_3+A#
	db					n_cut
	db					oct_3+A#
	db					n_cut
	db			n_length+12,	oct_3+G_
	db			n_length+6,	n_cut
	db			n_length+4,	oct_3+G#
	db			n_length+8,	n_cut
	db			n_length+4,	oct_3+G#
	db			n_length+8,	n_cut
	db			n_length+6,	oct_3+G#
	db			n_length+8,	oct_3+G_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db					n_cut
	db					oct_2+D#
	db			n_length+30,	n_cut
	db			n_length+6,	n_cut
	db					oct_3+G#
	db					n_cut
	db			n_length+4,	oct_3+G#
	db			n_length+2,	n_cut
	db			n_length+6,	oct_3+G_
	db					n_cut
	db					oct_3+D#
	db					n_cut
	db					oct_3+A#
	db					n_cut
	db					oct_3+A#
	db					n_cut
	db			n_length+12,	oct_3+G_
	db			n_length+6,	n_cut
	db			n_length+4,	oct_3+G#
	db			n_length+8,	n_cut
	db			n_length+4,	oct_3+G#
	db			n_length+8,	n_cut
	db			n_length+6,	oct_3+G#
	db			n_length+8,	oct_3+G_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db					n_cut
	db					oct_2+D#
	db			n_length+30,	n_cut
	db			n_length+30,	n_cut
	db			n_length+4,	oct_4+D#
	db			n_length+14,	n_cut
	db	sound_main_loop_set
	db	instrument+i_sax1
	db	sound_loop+2
	db	n_multi+2,	n_length+12,	n_cut
	db			n_length+6,	oct_3+G_
	db					n_cut
	db			n_length+12,	oct_3+G_
	db			n_length+6,	n_cut
	db					oct_3+D#
	db					n_cut
	db					oct_3+D#
	db					n_cut
	db			n_length+3,	oct_3+D#
	db					n_cut
	db			n_length+8,	oct_3+C#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+C#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+A#
	db					oct_2+A#
	db					n_cut
	db					oct_2+A#
	db	n_multi+6,	n_length+16,	n_cut
	db	sound_loop_break
	db	sound_loop+2
	db	n_multi+6,	n_length+4,	n_cut
	db			n_length+2,	oct_3+C_
	db					n_cut
	db			n_length+6,	oct_2+A#
	db			n_length+2,	oct_3+C_
	db					n_cut
	db					oct_3+C_
	db					n_cut
	db			n_length+1,	oct_3+C_
	db					n_cut
	db			n_length+4,	oct_2+A#
	db					oct_3+C#
	db	sound_loop_break
	db	n_multi+2,	n_length+12,	n_cut
	db			n_length+6,	oct_3+G_
	db					n_cut
	db			n_length+12,	oct_3+G_
	db			n_length+6,	n_cut
	db					oct_3+D#
	db					n_cut
	db					oct_3+D#
	db					n_cut
	db			n_length+3,	oct_3+D#
	db					n_cut
	db			n_length+8,	oct_3+C#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+C#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+A#
	db					oct_2+A#
	db					n_cut
	db					oct_2+A#
	db	n_multi+6,	n_length+16,	n_cut
	db	sound_loop+2
	db	n_multi+6,	n_length+2,	n_cut
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db			n_length+3,	n_cut
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db			n_length+3,	n_cut
	db			n_length+2,	oct_2+F_
	db			n_length+1,	oct_2+F#
	db					n_cut
	db			n_length+2,	oct_2+G_
	db	sound_loop_break
	db	sound_loop+2
	db	n_multi+6,	n_length+2,	n_cut
	db			n_length+1,	oct_2+D#
	db					n_cut
	db			n_length+2,	oct_2+G#
	db			n_length+1,	oct_2+D#
	db					n_cut
	db			n_length+2,	oct_2+G#
	db			n_length+1,	oct_2+D#
	db			n_length+3,	n_cut
	db			n_length+1,	oct_2+D#
	db					n_cut
	db			n_length+2,	oct_2+G#
	db			n_length+1,	oct_2+D#
	db					n_cut
	db			n_length+2,	oct_2+G#
	db			n_length+1,	oct_2+D#
	db			n_length+3,	n_cut
	db			n_length+2,	oct_2+C#
	db			n_length+1,	oct_2+D_
	db					n_cut
	db			n_length+2,	oct_2+D#
	db	sound_loop_break
	db	sound_loop+2
	db	n_multi+6,	n_length+2,	n_cut
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db			n_length+3,	n_cut
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db			n_length+3,	n_cut
	db			n_length+2,	oct_2+F_
	db			n_length+1,	oct_2+F#
	db					n_cut
	db			n_length+2,	oct_2+G_
	db	sound_loop_break
	db	instrument+i_sax1
	db	n_multi+6,	n_length+2,	n_cut
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db			n_length+3,	n_cut
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db			n_length+3,	n_cut
	db			n_length+2,	oct_2+F_
	db			n_length+1,	oct_2+F#
	db					n_cut
	db			n_length+2,	oct_2+G_
	db					n_cut
	db			n_length+1,	oct_2+A#
	db					n_cut
	db			n_length+2,	oct_3+F#
	db			n_length+1,	oct_2+A#
	db					n_cut
	db			n_length+2,	oct_3+F#
	db			n_length+1,	oct_2+F#
	db			n_length+3,	n_cut
	db			n_length+1,	oct_2+A#
	db					n_cut
	db			n_length+2,	oct_3+F#
	db			n_length+1,	oct_2+A#
	db					n_cut
	db			n_length+2,	oct_3+F#
	db			n_length+1,	oct_2+F#
	db			n_length+3,	n_cut
	db			n_length+2,	oct_2+F_
	db			n_length+1,	oct_2+F#
	db					n_cut
	db			n_length+2,	oct_2+G_
	db					n_cut
	db			n_length+1,	oct_2+D#
	db					n_cut
	db			n_length+2,	oct_2+A#
	db			n_length+1,	oct_2+D#
	db					n_cut
	db			n_length+2,	oct_2+A#
	db			n_length+1,	oct_2+D#
	db			n_length+3,	n_cut
	db			n_length+1,	oct_2+D#
	db					n_cut
	db			n_length+2,	oct_2+A#
	db			n_length+1,	oct_2+D#
	db					n_cut
	db			n_length+2,	oct_2+A#
	db			n_length+1,	oct_2+D#
	db			n_length+3,	n_cut
	db			n_length+2,	oct_2+C#
	db			n_length+1,	oct_2+D_
	db					n_cut
	db			n_length+2,	oct_2+D#
	db	sound_loop+2
	db	n_multi+6,	n_length+2,	n_cut
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db			n_length+3,	n_cut
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db			n_length+3,	n_cut
	db			n_length+2,	oct_2+F_
	db			n_length+1,	oct_2+F#
	db					n_cut
	db			n_length+2,	oct_2+G_
	db	sound_loop_break
	db	n_multi+6,	n_length+2,	n_cut
	db			n_length+1,	oct_2+A#
	db					n_cut
	db			n_length+2,	oct_3+F#
	db			n_length+1,	oct_2+A#
	db					n_cut
	db			n_length+2,	oct_3+F#
	db			n_length+1,	oct_2+F#
	db			n_length+3,	n_cut
	db			n_length+1,	oct_2+A#
	db					n_cut
	db			n_length+2,	oct_3+F#
	db			n_length+1,	oct_2+A#
	db					n_cut
	db			n_length+2,	oct_3+F#
	db			n_length+1,	oct_2+F#
	db			n_length+3,	n_cut
	db			n_length+2,	oct_2+F_
	db			n_length+1,	oct_2+F#
	db					n_cut
	db			n_length+2,	oct_2+G_
	db					n_cut
	db			n_length+1,	oct_2+D#
	db					n_cut
	db			n_length+2,	oct_2+A#
	db			n_length+1,	oct_2+D#
	db					n_cut
	db			n_length+2,	oct_2+A#
	db			n_length+1,	oct_2+D#
	db			n_length+3,	n_cut
	db			n_length+1,	oct_2+D#
	db					n_cut
	db			n_length+2,	oct_2+A#
	db			n_length+1,	oct_2+D#
	db					n_cut
	db			n_length+2,	oct_2+A#
	db			n_length+1,	oct_2+D#
	db			n_length+3,	n_cut
	db			n_length+2,	oct_2+C#
	db			n_length+1,	oct_2+D_
	db					n_cut
	db			n_length+2,	oct_2+D#
	db					n_cut
	db			n_length+1,	oct_2+D#
	db					n_cut
	db			n_length+2,	oct_2+A#
	db			n_length+1,	oct_2+D#
	db					n_cut
	db			n_length+2,	oct_2+A#
	db			n_length+1,	oct_2+D#
	db			n_length+3,	n_cut
	db			n_length+1,	oct_2+D#
	db					n_cut
	db			n_length+2,	oct_2+A#
	db			n_length+1,	oct_2+D#
	db					n_cut
	db			n_length+2,	oct_2+A#
	db			n_length+1,	oct_2+D#
	db			n_length+3,	n_cut
	db			n_length+2,	oct_2+C#
	db			n_length+1,	oct_2+D_
	db					n_cut
	db			n_length+2,	oct_2+D#
	db	instrument+i_sax1
	db	sound_loop+2
	db	n_multi+2,	n_length+12,	n_cut
	db			n_length+6,	oct_3+G_
	db					n_cut
	db			n_length+12,	oct_3+G_
	db			n_length+6,	n_cut
	db					oct_3+D#
	db					n_cut
	db					oct_3+D#
	db					n_cut
	db			n_length+3,	oct_3+D#
	db					n_cut
	db			n_length+8,	oct_3+C#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+C#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+A#
	db					oct_2+A#
	db					n_cut
	db					oct_2+A#
	db	n_multi+6,	n_length+16,	n_cut
	db	sound_loop_break
	db	n_multi+2,	n_length+12,	n_cut
	db			n_length+6,	oct_3+C_
	db					n_cut
	db			n_length+18,	oct_2+A#
	db			n_length+6,	oct_3+C_
	db					n_cut
	db					oct_3+C_
	db					n_cut
	db			n_length+3,	oct_3+C_
	db					n_cut
	db			n_length+12,	oct_2+A#
	db					oct_3+C#
	db					n_cut
	db			n_length+6,	oct_3+C_
	db					n_cut
	db			n_length+18,	oct_2+A#
	db			n_length+6,	oct_3+C_
	db					n_cut
	db					oct_3+C_
	db					n_cut
	db			n_length+3,	oct_3+C_
	db					n_cut
	db			n_length+12,	oct_2+A#
	db					oct_3+C#
	db					n_cut
	db			n_length+6,	oct_3+G_
	db					n_cut
	db			n_length+12,	oct_3+G_
	db			n_length+6,	n_cut
	db					oct_3+D#
	db					n_cut
	db					oct_3+D#
	db					n_cut
	db			n_length+3,	oct_3+D#
	db					n_cut
	db			n_length+8,	oct_3+C#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+C#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_3+C_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+A#
	db					oct_2+A#
	db					n_cut
	db					oct_2+A#
	db	n_multi+6,	n_length+16,	n_cut
	db	sound_loop+2
	db	n_multi+6,	n_length+2,	n_cut
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db			n_length+3,	n_cut
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db			n_length+3,	n_cut
	db			n_length+2,	oct_2+F_
	db			n_length+1,	oct_2+F#
	db					n_cut
	db			n_length+2,	oct_2+G_
	db	sound_loop_break
	db	sound_loop+2
	db	n_multi+6,	n_length+2,	n_cut
	db			n_length+1,	oct_2+D#
	db					n_cut
	db			n_length+2,	oct_2+G#
	db			n_length+1,	oct_2+D#
	db					n_cut
	db			n_length+2,	oct_2+G#
	db			n_length+1,	oct_2+D#
	db			n_length+3,	n_cut
	db			n_length+1,	oct_2+D#
	db					n_cut
	db			n_length+2,	oct_2+G#
	db			n_length+1,	oct_2+D#
	db					n_cut
	db			n_length+2,	oct_2+G#
	db			n_length+1,	oct_2+D#
	db			n_length+3,	n_cut
	db			n_length+2,	oct_2+C#
	db			n_length+1,	oct_2+D_
	db					n_cut
	db			n_length+2,	oct_2+D#
	db	sound_loop_break
	db	sound_loop+2
	db	n_multi+6,	n_length+2,	n_cut
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db			n_length+3,	n_cut
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db					n_cut
	db			n_length+2,	oct_3+D#
	db			n_length+1,	oct_2+G_
	db			n_length+3,	n_cut
	db			n_length+2,	oct_2+F_
	db			n_length+1,	oct_2+F#
	db					n_cut
	db			n_length+2,	oct_2+G_
	db	sound_loop_break

Music_TreetopsBoss_PUL2:
	db	sound_main_loop_set
	db	instrument+i_sax1
	db	n_multi+1,	n_length+12,	n_cut
	db			n_length+5,	oct_3+D#
	db			n_length+7,	n_cut
	db			n_length+12,	oct_4+C_
	db			n_length+5,	oct_3+D#
	db			n_length+7,	n_cut
	db			n_length+12,	oct_4+C_
	db			n_length+5,	oct_3+D#
	db			n_length+19,	n_cut
	db			n_length+5,	oct_3+D#
	db			n_length+7,	n_cut
	db			n_length+12,	oct_4+C_
	db			n_length+5,	oct_3+D#
	db			n_length+7,	n_cut
	db			n_length+5,	oct_3+F_
	db			n_length+7,	n_cut
	db			n_length+11,	oct_3+F#
	db	n_multi+7,	n_length+7,	n_cut
	db	n_multi+1,	n_length+12,	n_cut
	db			n_length+5,	oct_3+G#
	db			n_length+7,	n_cut
	db			n_length+12,	oct_4+D#
	db			n_length+5,	oct_3+G#
	db			n_length+7,	n_cut
	db			n_length+12,	oct_4+D#
	db			n_length+5,	oct_3+G#
	db			n_length+19,	n_cut
	db			n_length+5,	oct_3+G#
	db			n_length+7,	n_cut
	db			n_length+12,	oct_4+D#
	db			n_length+5,	oct_3+A#
	db			n_length+7,	n_cut
	db			n_length+5,	oct_4+C_
	db			n_length+7,	n_cut
	db			n_length+11,	oct_4+C#
	db			n_length+13,	n_cut
	db			n_length+5,	oct_4+C#
	db			n_length+7,	n_cut
	db			n_length+5,	oct_4+C_
	db			n_length+7,	n_cut
	db			n_length+5,	oct_4+C#
	db			n_length+19,	n_cut
	db			n_length+12,	oct_3+D#
	db			n_length+12,	oct_4+C_
	db			n_length+12,	oct_3+D#
	db			n_length+5,	oct_4+C_
	db			n_length+7,	n_cut
	db			n_length+11,	oct_3+D#
	db			n_length+13,	n_cut
	db			n_length+5,	oct_3+D#
	db			n_length+7,	n_cut
	db			n_length+12,	oct_4+C_
	db			n_length+12,	oct_3+D#
	db			n_length+5,	oct_3+G#
	db			n_length+7,	n_cut
	db			n_length+11,	oct_3+A#
	db	n_multi+7,	n_length+7,	n_cut
	db	n_multi+1,	n_length+12,	n_cut
	db			n_length+5,	oct_3+G#
	db			n_length+7,	n_cut
	db			n_length+12,	oct_4+D#
	db			n_length+5,	oct_3+G#
	db			n_length+7,	n_cut
	db			n_length+12,	oct_4+D#
	db			n_length+5,	oct_3+G#
	db			n_length+19,	n_cut
	db			n_length+12,	oct_3+G#
	db			n_length+9,	oct_3+A#
	db			n_length+3,	n_cut
	db			n_length+5,	oct_4+C_
	db			n_length+7,	n_cut
	db			n_length+11,	oct_4+C#
	db	n_multi+4,	n_length+16,	n_cut
	db	n_multi+1,	n_length+9,	n_cut
	db			n_length+5,	oct_3+D#
	db			n_length+7,	n_cut
	db			n_length+12,	oct_4+C_
	db			n_length+5,	oct_3+D#
	db			n_length+7,	n_cut
	db			n_length+12,	oct_4+C_
	db			n_length+5,	oct_3+D#
	db			n_length+19,	n_cut
	db			n_length+5,	oct_3+D#
	db			n_length+7,	n_cut
	db			n_length+12,	oct_4+C_
	db			n_length+5,	oct_3+D#
	db			n_length+7,	n_cut
	db			n_length+5,	oct_3+F_
	db			n_length+7,	n_cut
	db			n_length+11,	oct_3+F#
	db	n_multi+7,	n_length+7,	n_cut
	db	n_multi+1,	n_length+12,	n_cut
	db			n_length+5,	oct_3+G#
	db			n_length+7,	n_cut
	db			n_length+12,	oct_4+D#
	db			n_length+5,	oct_3+G#
	db			n_length+7,	n_cut
	db			n_length+12,	oct_4+D#
	db			n_length+5,	oct_3+G#
	db			n_length+19,	n_cut
	db			n_length+5,	oct_3+G#
	db			n_length+7,	n_cut
	db			n_length+12,	oct_4+D#
	db			n_length+5,	oct_3+A#
	db			n_length+7,	n_cut
	db			n_length+5,	oct_4+C_
	db			n_length+7,	n_cut
	db			n_length+11,	oct_4+C#
	db			n_length+13,	n_cut
	db			n_length+5,	oct_4+C#
	db			n_length+7,	n_cut
	db			n_length+5,	oct_4+C_
	db			n_length+7,	n_cut
	db			n_length+5,	oct_4+C#
	db			n_length+19,	n_cut
	db			n_length+12,	oct_3+D#
	db			n_length+12,	oct_4+C_
	db			n_length+12,	oct_3+D#
	db			n_length+5,	oct_4+C_
	db			n_length+7,	n_cut
	db			n_length+11,	oct_3+D#
	db			n_length+13,	n_cut
	db			n_length+5,	oct_3+D#
	db			n_length+7,	n_cut
	db			n_length+12,	oct_4+C_
	db			n_length+12,	oct_3+D#
	db			n_length+5,	oct_3+G#
	db			n_length+7,	n_cut
	db			n_length+11,	oct_3+A#
	db	n_multi+7,	n_length+7,	n_cut
	db	n_multi+1,	n_length+12,	n_cut
	db			n_length+5,	oct_3+G#
	db			n_length+7,	n_cut
	db			n_length+12,	oct_4+D#
	db			n_length+5,	oct_3+G#
	db			n_length+7,	n_cut
	db			n_length+12,	oct_4+D#
	db			n_length+5,	oct_3+G#
	db			n_length+19,	n_cut
	db			n_length+12,	oct_3+G#
	db			n_length+9,	oct_3+A#
	db			n_length+3,	n_cut
	db			n_length+5,	oct_4+C_
	db			n_length+7,	n_cut
	db			n_length+11,	oct_4+C#
	db			n_length+13,	n_cut
	db			n_length+6,	oct_4+D#
	db			n_length+6,	oct_4+C#
	db			n_length+6,	oct_4+C_
	db			n_length+6,	oct_3+A#
	db			n_length+6,	oct_3+G#
	db			n_length+6,	oct_3+F#
	db			n_length+6,	oct_3+E_
	db			n_length+6,	oct_3+D#
	db	sound_ret

Music_TreetopsMain_TRI:
	db	lnr_ratio+31
	db	n_multi+2,	n_length+30,	n_cut
	db			n_length+4,	oct_4+C_
	db			n_length+8,	n_cut
	db			n_length+4,	oct_4+D#
	db			n_length+32,	n_cut
	db			n_length+3,	oct_4+C_
	db					n_cut
	db					oct_4+D#
	db					n_cut
	db					oct_4+G_
	db					n_cut
	db	n_multi+6,	n_length+16,	n_cut
	db			n_length+10,	n_cut
	db			n_length+1,	oct_4+G#
	db					n_cut
	db					oct_4+G_
	db					n_cut
	db					oct_4+G_
	db			n_length+11,	n_cut
	db			n_length+1,	oct_4+C_
	db			n_length+3,	n_cut
	db			n_length+1,	oct_4+D#
	db			n_length+11,	n_cut
	db			n_length+1,	oct_4+F_
	db					n_cut
	db					oct_4+F_
	db					n_cut
	db					oct_4+D#
	db					n_cut
	db			n_length+16,	n_cut
	db			n_length+10,	n_cut
	db			n_length+1,	oct_4+G_
	db			n_length+5,	n_cut
	db	sound_main_loop_set
	db	lnr_ratio+31
	db	n_multi+2,	n_length+12,	n_cut
	db			n_length+6,	oct_5+G_
	db					n_cut
	db			n_length+12,	oct_5+D#
	db			n_length+6,	n_cut
	db					oct_4+A#
	db					n_cut
	db					oct_4+A#
	db					n_cut
	db			n_length+3,	oct_4+A#
	db					n_cut
	db			n_length+12,	oct_4+A#
	db			n_length+8,	oct_5+C_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_5+D#
	db					oct_5+F_
	db					n_cut
	db			n_length+8,	oct_5+G_
	db	n_multi+4,	n_length+23,	n_cut
	db	n_multi+2,	n_length+12,	n_cut
	db			n_length+6,	oct_5+G_
	db					n_cut
	db			n_length+14,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_4+A#
	db					n_cut
	db					oct_4+A#
	db					n_cut
	db			n_length+3,	oct_4+A#
	db					n_cut
	db			n_length+8,	oct_4+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+C_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_5+D#
	db					n_cut
	db					oct_5+D#
	db					n_cut
	db					oct_5+D#
	db					oct_5+F_
	db					n_cut
	db			n_length+8,	oct_5+D#
	db	n_multi+4,	n_length+23,	n_cut
	db	n_multi+2,	n_length+20,	oct_5+F#
	db			n_length+4,	n_cut
	db			n_length+24,	oct_5+F_
	db					oct_5+D#
	db					oct_5+C#
	db					oct_5+C_
	db					oct_4+A#
	db					oct_4+G#
	db			n_length+6,	oct_4+F#
	db			n_length+3,	oct_4+A#
	db					n_cut
	db			n_length+6,	oct_5+C_
	db					oct_5+D#
	db			n_length+12,	n_cut
	db			n_length+6,	oct_5+G_
	db					n_cut
	db			n_length+14,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_4+G_
	db					n_cut
	db					oct_4+A#
	db					n_cut
	db			n_length+3,	oct_4+A#
	db					n_cut
	db			n_length+8,	oct_4+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+C_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_5+D#
	db					n_cut
	db					oct_5+D#
	db					n_cut
	db					oct_5+D#
	db					oct_5+F_
	db					n_cut
	db			n_length+8,	oct_5+D#
	db	n_multi+4,	n_length+23,	n_cut
	db	n_multi+2,	n_length+12,	n_cut
	db			n_length+6,	oct_5+G_
	db					n_cut
	db			n_length+14,	oct_5+D#
	db			n_length+4,	n_cut
	db					oct_4+G_
	db			n_length+8,	n_cut
	db			n_length+4,	oct_4+G_
	db			n_length+8,	n_cut
	db			n_length+6,	oct_4+G_
	db			n_length+8,	oct_4+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+C_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_5+D#
	db					oct_5+F_
	db					n_cut
	db			n_length+8,	oct_5+G_
	db	n_multi+4,	n_length+23,	n_cut
	db	n_multi+2,	n_length+12,	n_cut
	db			n_length+6,	oct_5+F#
	db					n_cut
	db			n_length+14,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_4+A#
	db					n_cut
	db					oct_4+A#
	db					n_cut
	db			n_length+3,	oct_4+A#
	db					n_cut
	db			n_length+8,	oct_4+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+C_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_5+D#
	db					oct_5+F_
	db					n_cut
	db			n_length+8,	oct_5+F#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_5+F#
	db					n_cut
	db			n_length+3,	oct_5+F#
	db					n_cut
	db			n_length+8,	oct_5+F#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+F_
	db			n_length+16,	n_cut
	db			n_length+6,	oct_5+G_
	db					n_cut
	db			n_length+14,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_4+G_
	db					n_cut
	db					oct_4+A#
	db					n_cut
	db			n_length+3,	oct_4+A#
	db					n_cut
	db			n_length+8,	oct_4+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+C_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_5+D#
	db					n_cut
	db					oct_5+D#
	db					n_cut
	db					oct_5+D#
	db					oct_5+F_
	db					n_cut
	db			n_length+8,	oct_5+D#
	db			n_length+22,	n_cut
	db			n_length+6,	oct_4+F#
	db					oct_4+A#
	db					oct_5+C_
	db					oct_5+D#
	db	lnr_ratio+31
	db	n_multi+4,	n_length+20,	oct_5+G_
	db			n_length+1,	n_cut
	db			n_length+4,	oct_5+D#
	db			n_length+14,	n_cut
	db	n_multi+1,	n_length+5,	oct_4+G_
	db			n_length+7,	n_cut
	db			n_length+12,	oct_4+A#
	db			n_length+5,	oct_4+G_
	db			n_length+7,	n_cut
	db			n_length+11,	oct_5+C#
	db			n_length+13,	n_cut
	db	n_multi+5,	n_length+11,	oct_5+C#
	db	n_multi+1,	n_length+5,	n_cut
	db			n_length+11,	oct_5+C#
	db			n_length+13,	n_cut
	db			n_length+22,	oct_5+C#
	db			n_length+2,	n_cut
	db			n_length+5,	oct_4+G_
	db			n_length+7,	n_cut
	db			n_length+16,	oct_4+A#
	db			n_length+8,	n_cut
	db			n_length+12,	oct_5+C#
	db			n_length+5,	oct_4+G_
	db			n_length+7,	n_cut
	db			n_length+16,	oct_5+D#
	db			n_length+8,	n_cut
	db			n_length+22,	oct_5+D#
	db	n_multi+7,	n_length+14,	n_cut
	db	n_multi+1,	n_length+11,	oct_5+D#
	db			n_length+31,	n_cut
	db			n_length+6,	n_cut
	db			n_length+12,	oct_5+F#
	db	n_multi+6,	n_length+22,	oct_5+G_
	db	n_multi+1,	n_length+12,	n_cut
	db			n_length+5,	oct_4+G_
	db			n_length+7,	n_cut
	db			n_length+5,	oct_4+A#
	db			n_length+7,	n_cut
	db			n_length+5,	oct_4+G_
	db			n_length+7,	n_cut
	db	n_multi+4,	n_length+20,	oct_5+G_
	db	n_multi+1,	n_length+4,	n_cut
	db			n_length+16,	oct_5+D#
	db	n_multi+2,	n_length+28,	n_cut
	db	n_multi+1,	n_length+5,	oct_4+G_
	db			n_length+7,	n_cut
	db			n_length+12,	oct_4+A#
	db			n_length+5,	oct_4+G_
	db			n_length+7,	n_cut
	db			n_length+16,	oct_5+C#
	db			n_length+8,	n_cut
	db	n_multi+3,	n_length+11,	oct_5+C#
	db			n_length+5,	n_cut
	db	n_multi+1,	n_length+5,	oct_4+G_
	db			n_length+7,	n_cut
	db			n_length+11,	oct_5+C#
	db			n_length+13,	n_cut
	db			n_length+22,	oct_5+C#
	db			n_length+2,	n_cut
	db			n_length+5,	oct_4+G_
	db			n_length+7,	n_cut
	db			n_length+16,	oct_4+A#
	db			n_length+8,	n_cut
	db			n_length+12,	oct_5+C#
	db			n_length+5,	oct_4+G_
	db			n_length+7,	n_cut
	db			n_length+16,	oct_5+D#
	db			n_length+8,	n_cut
	db	n_multi+3,	n_length+9,	oct_5+D#
	db			n_length+31,	n_cut
	db	n_multi+1,	n_length+11,	oct_5+D#
	db			n_length+31,	n_cut
	db			n_length+6,	n_cut
	db			n_length+12,	oct_5+F#
	db	n_multi+11,	n_length+15,	oct_5+G_
	db	n_multi+3,	n_length+5,	n_cut
	db	lnr_ratio+31
	db	n_multi+2,	n_length+12,	n_cut
	db			n_length+6,	oct_5+G_
	db					n_cut
	db			n_length+12,	oct_5+D#
	db			n_length+6,	n_cut
	db					oct_4+A#
	db					n_cut
	db					oct_4+A#
	db					n_cut
	db			n_length+3,	oct_4+A#
	db					n_cut
	db			n_length+12,	oct_4+A#
	db			n_length+8,	oct_5+C_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_5+D#
	db					oct_5+F_
	db					n_cut
	db			n_length+8,	oct_5+G_
	db	n_multi+4,	n_length+23,	n_cut
	db	n_multi+2,	n_length+12,	n_cut
	db			n_length+6,	oct_5+G_
	db					n_cut
	db			n_length+14,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_4+A#
	db					n_cut
	db					oct_4+A#
	db					n_cut
	db			n_length+3,	oct_4+A#
	db					n_cut
	db			n_length+8,	oct_4+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+C_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_5+D#
	db					n_cut
	db					oct_5+D#
	db					n_cut
	db					oct_5+D#
	db					oct_5+F_
	db					n_cut
	db			n_length+8,	oct_5+D#
	db	n_multi+4,	n_length+23,	n_cut
	db	n_multi+2,	n_length+20,	oct_5+F#
	db			n_length+4,	n_cut
	db			n_length+24,	oct_5+F_
	db					oct_5+D#
	db					oct_5+C#
	db					oct_5+C_
	db					oct_4+A#
	db					oct_4+G#
	db			n_length+6,	oct_4+F#
	db			n_length+3,	oct_4+A#
	db					n_cut
	db			n_length+6,	oct_5+C_
	db					oct_5+D#
	db			n_length+12,	n_cut
	db			n_length+6,	oct_5+G_
	db					n_cut
	db			n_length+14,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_4+G_
	db					n_cut
	db					oct_4+A#
	db					n_cut
	db			n_length+3,	oct_4+A#
	db					n_cut
	db			n_length+8,	oct_4+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+C_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_5+D#
	db					n_cut
	db					oct_5+D#
	db					n_cut
	db					oct_5+D#
	db					oct_5+F_
	db					n_cut
	db			n_length+8,	oct_5+D#
	db	n_multi+4,	n_length+23,	n_cut
	db	n_multi+2,	n_length+12,	n_cut
	db			n_length+6,	oct_5+G_
	db					n_cut
	db			n_length+14,	oct_5+D#
	db			n_length+4,	n_cut
	db					oct_4+G_
	db			n_length+8,	n_cut
	db			n_length+4,	oct_4+G_
	db			n_length+8,	n_cut
	db			n_length+6,	oct_4+G_
	db			n_length+8,	oct_4+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+C_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_5+D#
	db					oct_5+F_
	db					n_cut
	db			n_length+8,	oct_5+G_
	db	n_multi+4,	n_length+23,	n_cut
	db	n_multi+2,	n_length+12,	n_cut
	db			n_length+6,	oct_5+F#
	db					n_cut
	db			n_length+14,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_4+A#
	db					n_cut
	db					oct_4+A#
	db					n_cut
	db			n_length+3,	oct_4+A#
	db					n_cut
	db			n_length+8,	oct_4+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+C_
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_5+D#
	db					oct_5+F_
	db					n_cut
	db			n_length+8,	oct_5+F#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_5+F#
	db					n_cut
	db			n_length+3,	oct_5+F#
	db					n_cut
	db			n_length+8,	oct_5+F#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+F_
	db			n_length+16,	n_cut
	db			n_length+6,	oct_5+G_
	db					n_cut
	db			n_length+14,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_4+G_
	db					n_cut
	db					oct_4+A#
	db					n_cut
	db			n_length+3,	oct_4+A#
	db					n_cut
	db			n_length+8,	oct_4+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_5+C_
	db			n_length+4,	n_cut
	db			n_length+6,	oct_5+D#
	db					n_cut
	db					oct_5+D#
	db					n_cut
	db					oct_5+D#
	db					oct_5+F_
	db					n_cut
	db			n_length+8,	oct_5+D#
	db			n_length+22,	n_cut
	db			n_length+6,	oct_4+F#
	db					oct_4+A#
	db					oct_5+C_
	db					oct_5+D#

Music_TreetopsBoss_TRI:
	db	sound_main_loop_set
	db	lnr_ratio+31
	db	n_multi+2,	n_length+24,	oct_5+F#
	db	n_multi+5,	n_length+7,	oct_5+F_
	db	n_multi+1,	n_length+13,	n_cut
	db	n_multi+2,	n_length+22,	oct_5+D#
	db			n_length+2,	n_cut
	db			n_length+20,	oct_5+C#
	db			n_length+4,	n_cut
	db			n_length+24,	oct_5+C_
	db			n_length+22,	oct_4+A#
	db			n_length+2,	n_cut
	db			n_length+24,	oct_4+G#
	db			n_length+5,	oct_4+F#
	db			n_length+1,	n_cut
	db			n_length+6,	oct_4+G#
	db	n_multi+1,	n_length+6,	oct_4+A#
	db					n_cut
	db			n_length+31,	oct_5+C#
	db			n_length+5,	n_cut
	db	n_multi+7,	n_length+25,	oct_5+D#
	db	n_multi+2,	n_length+1,	n_cut
	db	n_multi+3,	n_length+29,	n_cut
	db			n_length+32,	n_cut
	db			n_length+5,	oct_5+D#
	db			n_length+3,	n_cut
	db	n_multi+2,	n_length+8,	oct_5+D#
	db			n_length+4,	n_cut
	db			n_length+14,	oct_5+C_
	db			n_length+4,	n_cut
	db	n_multi+3,	n_length+5,	oct_5+C#
	db			n_length+3,	n_cut
	db			n_length+5,	oct_5+C#
	db			n_length+3,	n_cut
	db	n_multi+2,	n_length+4,	oct_5+C#
	db			n_length+2,	n_cut
	db	n_multi+3,	n_length+5,	oct_5+C_
	db			n_length+3,	n_cut
	db			n_length+32,	oct_4+G#
	db	n_multi+2,	n_length+6,	n_cut
	db	n_multi+1,	n_length+7,	oct_4+F#
	db			n_length+17,	n_cut
	db			n_length+18,	oct_4+F#
	db			n_length+6,	n_cut
	db			n_length+8,	oct_4+F#
	db			n_length+4,	n_cut
	db			n_length+21,	oct_4+F_
	db			n_length+3,	n_cut
	db			n_length+19,	oct_4+E_
	db			n_length+5,	n_cut
	db			n_length+28,	oct_4+D#
	db			n_length+8,	n_cut
	db	n_multi+2,	n_length+19,	oct_5+C_
	db			n_length+5,	n_cut
	db			n_length+21,	oct_5+C_
	db			n_length+16,	n_cut
	db			n_length+17,	n_cut
	db			n_length+4,	oct_4+G#
	db			n_length+8,	n_cut
	db	n_multi+1,	n_length+13,	oct_4+G#
	db			n_length+27,	n_cut
	db			n_length+32,	n_cut
	db	n_multi+3,	n_length+32,	n_cut
	db	sound_ret

Music_TreetopsMain_NSE:
	db	n_multi+6,	n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db					$01
	db					$02
	db	sound_loop+3
	db	n_multi+6,	n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db	sound_loop_break
	db	n_multi+6,	n_length+4,	$01
	db					$02
	db			n_length+2,	$01
	db					$01
	db					$02
	db					$01
	db			n_length+8,	$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db					$01
	db					$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db					$01
	db			n_length+2,	$02
	db					$01
	db			n_length+4,	$01
	db					$02
	db					$01
	db			n_length+2,	$02
	db					$01
	db					$01
	db					$01
	db			n_length+4,	$02
	db	sound_main_loop_set
	db	sound_loop+3
	db	n_multi+6,	n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db					$01
	db					$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db					$01
	db					$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db					$01
	db					$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db					$01
	db			n_length+2,	$02
	db					$01
	db			n_length+4,	$01
	db					$02
	db					$01
	db			n_length+2,	$02
	db					$01
	db					$01
	db					$01
	db			n_length+4,	$02
	db	sound_loop_break
	db	n_multi+6,	n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db					$01
	db					$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db					$01
	db			n_length+2,	$02
	db					$01
	db			n_length+4,	$01
	db					$02
	db					$01
	db			n_length+2,	$02
	db					$01
	db					$01
	db					$01
	db			n_length+4,	$02
	db	sound_loop+3
	db	n_multi+6,	n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db					$01
	db					$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db	sound_loop_break
	db	n_multi+6,	n_length+4,	$01
	db			n_length+2,	$02
	db					$01
	db			n_length+4,	$01
	db					$02
	db					$01
	db			n_length+2,	$02
	db					$01
	db					$01
	db					$01
	db			n_length+4,	$02
	db	sound_loop+3
	db	n_multi+6,	n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db					$01
	db					$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db	sound_loop_break
	db	n_multi+6,	n_length+4,	$01
	db			n_length+2,	$02
	db					$01
	db			n_length+4,	$01
	db					$02
	db					$01
	db			n_length+2,	$02
	db					$01
	db					$01
	db					$01
	db			n_length+4,	$02
	db	sound_loop+3
	db	n_multi+6,	n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db					$01
	db					$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db					$01
	db					$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db					$01
	db					$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db					$01
	db			n_length+2,	$02
	db					$01
	db			n_length+4,	$01
	db					$02
	db					$01
	db			n_length+2,	$02
	db					$01
	db					$01
	db					$01
	db			n_length+4,	$02
	db	sound_loop_break
	db	n_multi+6,	n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db					$01
	db					$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db					$01
	db			n_length+2,	$02
	db					$01
	db			n_length+4,	$01
	db					$02
	db					$01
	db			n_length+2,	$02
	db					$01
	db					$01
	db					$01
	db			n_length+4,	$02

Music_TreetopsBoss_NSE:
	db	sound_main_loop_set
	db	sound_loop+3
	db	n_multi+6,	n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db					$01
	db					$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db	sound_loop_break
	db	n_multi+6,	n_length+4,	$01
	db			n_length+2,	$02
	db					$01
	db			n_length+4,	$01
	db					$02
	db					$01
	db			n_length+2,	$02
	db					$01
	db					$01
	db					$01
	db			n_length+4,	$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db					$01
	db					$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db			n_length+2,	$01
	db			n_length+2,	$01
	db			n_length+4,	$02
	db					$01
	db					$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db					$01
	db					$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db			n_length+2,	$01
	db					$01
	db			n_length+4,	$02
	db					$01
	db			n_length+2,	$02
	db					$01
	db			n_length+4,	$01
	db					$02
	db					$01
	db			n_length+2,	$02
	db					$01
	db					$01
	db					$01
	db			n_length+4,	$02
	db	sound_ret

Music_TreetopsMain_DPCM:
	db	n_multi+2,	n_length+12,	oct_1+D#
	db			n_length+6,	oct_2+D#
	db					n_cut
	db					oct_2+D#
	db					oct_1+A#
	db					n_cut
	db			n_length+18,	oct_1+D#
	db			n_length+6,	oct_2+D#
	db					n_cut
	db					oct_2+D#
	db					oct_1+D#
	db					n_cut
	db			n_length+14,	oct_1+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db					n_cut
	db					oct_2+D#
	db					oct_1+A#
	db					n_cut
	db			n_length+18,	oct_1+D#
	db			n_length+6,	oct_2+D#
	db					n_cut
	db					oct_2+D#
	db			n_length+18,	n_cut
	db			n_length+12,	oct_1+D#
	db			n_length+6,	oct_2+D#
	db					n_cut
	db					oct_2+D#
	db					oct_1+A#
	db					n_cut
	db			n_length+18,	oct_1+D#
	db			n_length+6,	oct_2+D#
	db					n_cut
	db					oct_2+D#
	db					oct_1+D#
	db					n_cut
	db			n_length+14,	oct_1+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db					n_cut
	db					oct_2+D#
	db					oct_1+A#
	db					n_cut
	db			n_length+18,	oct_1+D#
	db			n_length+6,	oct_2+D#
	db					n_cut
	db					oct_1+A#
	db					oct_2+C_
	db			n_length+4,	oct_2+C#
	db			n_length+2,	n_cut
	db			n_length+6,	oct_2+D_
	db	sound_main_loop_set
	db	n_multi+2,	n_length+12,	oct_2+D#
	db			n_length+6,	n_cut
	db					oct_2+D#
	db			n_length+12,	oct_1+A#
	db			n_length+6,	n_cut
	db			n_length+18,	oct_2+D#
	db			n_length+6,	n_cut
	db					oct_2+D#
	db			n_length+8,	oct_1+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+C#
	db			n_length+4,	n_cut
	db			n_length+14,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+14,	oct_1+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+3,	oct_1+A#
	db					n_cut
	db			n_length+6,	oct_1+A#
	db			n_length+8,	oct_2+C#
	db			n_length+4,	n_cut
	db			n_length+14,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+14,	oct_1+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+3,	oct_1+A#
	db					n_cut
	db			n_length+6,	oct_1+A#
	db			n_length+8,	oct_2+C#
	db			n_length+4,	n_cut
	db			n_length+14,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+16,	n_cut
	db			n_length+12,	oct_2+D#
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+3,	oct_1+A#
	db					n_cut
	db			n_length+9,	oct_1+A#
	db					n_cut
	db			n_length+14,	oct_2+G#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+G#
	db			n_length+14,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+G#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+G#
	db					n_cut
	db					oct_2+G#
	db			n_length+3,	oct_2+D#
	db					n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+14,	oct_2+G#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+G#
	db			n_length+18,	oct_2+D#
	db			n_length+24,	oct_2+G#
	db			n_length+6,	oct_2+G#
	db			n_length+3,	oct_2+D#
	db					n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+8,	oct_2+F#
	db			n_length+4,	n_cut
	db			n_length+10,	oct_2+D#
	db			n_length+8,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+11,	oct_1+A#
	db			n_length+7,	n_cut
	db			n_length+19,	oct_2+D#
	db			n_length+5,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+8,	oct_1+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+C#
	db			n_length+4,	n_cut
	db			n_length+14,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+14,	oct_1+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+3,	oct_1+A#
	db					n_cut
	db			n_length+6,	oct_1+A#
	db			n_length+8,	oct_2+C#
	db			n_length+4,	n_cut
	db			n_length+14,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+14,	oct_1+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+3,	oct_1+A#
	db					n_cut
	db			n_length+6,	oct_1+A#
	db			n_length+8,	oct_2+C#
	db			n_length+4,	n_cut
	db			n_length+14,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+16,	n_cut
	db			n_length+12,	oct_2+D#
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+3,	oct_1+A#
	db					n_cut
	db			n_length+9,	oct_1+A#
	db					n_cut
	db			n_length+14,	oct_2+G#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+G#
	db			n_length+14,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+G#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+G#
	db					n_cut
	db					oct_2+G#
	db			n_length+3,	oct_2+D#
	db					n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+14,	oct_2+G#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+G#
	db			n_length+18,	oct_2+D#
	db			n_length+24,	oct_2+G#
	db			n_length+6,	oct_2+G#
	db			n_length+3,	oct_2+D#
	db					n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+8,	oct_2+F#
	db			n_length+4,	n_cut
	db			n_length+11,	oct_2+D#
	db			n_length+7,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+11,	oct_1+A#
	db			n_length+7,	n_cut
	db			n_length+19,	oct_2+D#
	db			n_length+5,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+8,	oct_1+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+C#
	db			n_length+4,	n_cut
	db			n_length+14,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+14,	oct_1+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+3,	oct_1+A#
	db					n_cut
	db			n_length+6,	oct_1+A#
	db			n_length+8,	oct_2+C#
	db			n_length+4,	n_cut
	db			n_length+12,	oct_2+D#
	db					oct_2+C#
	db					oct_1+A#
	db			n_length+6,	oct_2+C#
	db					oct_2+D#
	db					n_cut
	db					oct_2+D#
	db			n_length+12,	oct_2+C#
	db					oct_1+A#
	db					oct_2+C#
	db					oct_2+F#
	db					oct_2+E_
	db					oct_2+C#
	db			n_length+6,	oct_2+E_
	db					oct_2+F#
	db					n_cut
	db					oct_2+F#
	db			n_length+12,	oct_2+E_
	db					oct_2+C#
	db			n_length+6,	oct_2+E_
	db					oct_2+C#
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+9,	oct_2+D#
	db					n_cut
	db			n_length+6,	oct_1+A#
	db					oct_2+C#
	db					oct_1+A#
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_1+A#
	db			n_length+8,	oct_2+C#
	db			n_length+4,	n_cut
	db			n_length+3,	oct_1+A#
	db					n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+10,	n_cut
	db			n_length+3,	oct_1+A#
	db					n_cut
	db			n_length+6,	oct_2+C#
	db			n_length+3,	oct_1+A#
	db					n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+12,	oct_2+D#
	db			n_length+6,	oct_1+A#
	db			n_length+12,	oct_2+C#
	db			n_length+3,	oct_1+A#
	db					n_cut
	db			n_length+12,	oct_2+D#
	db					oct_2+C#
	db					oct_1+A#
	db			n_length+6,	oct_2+C#
	db					oct_2+D#
	db					n_cut
	db					oct_2+D#
	db			n_length+12,	oct_2+C#
	db					oct_1+A#
	db					oct_2+C#
	db					oct_2+F#
	db					oct_2+E_
	db					oct_2+C#
	db			n_length+6,	oct_2+E_
	db					oct_2+F#
	db					n_cut
	db					oct_2+F#
	db			n_length+12,	oct_2+E_
	db					oct_2+C#
	db			n_length+6,	oct_2+E_
	db					oct_2+C#
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+10,	n_cut
	db			n_length+6,	oct_1+A#
	db					oct_2+C#
	db					oct_1+A#
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_1+A#
	db			n_length+8,	oct_2+C#
	db			n_length+4,	n_cut
	db			n_length+3,	oct_1+A#
	db					n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+10,	n_cut
	db			n_length+3,	oct_1+A#
	db					n_cut
	db			n_length+6,	oct_2+C#
	db			n_length+3,	oct_1+A#
	db					n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+12,	oct_2+D#
	db			n_length+6,	oct_1+A#
	db			n_length+12,	oct_2+C#
	db			n_length+3,	oct_1+A#
	db					n_cut
	db			n_length+12,	oct_2+D#
	db			n_length+6,	n_cut
	db					oct_2+D#
	db			n_length+12,	oct_1+A#
	db			n_length+6,	n_cut
	db			n_length+18,	oct_2+D#
	db			n_length+6,	n_cut
	db					oct_2+D#
	db			n_length+8,	oct_1+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+C#
	db			n_length+4,	n_cut
	db			n_length+14,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+14,	oct_1+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+3,	oct_1+A#
	db					n_cut
	db			n_length+6,	oct_1+A#
	db			n_length+8,	oct_2+C#
	db			n_length+4,	n_cut
	db			n_length+14,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+14,	oct_1+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+3,	oct_1+A#
	db					n_cut
	db			n_length+6,	oct_1+A#
	db			n_length+8,	oct_2+C#
	db			n_length+4,	n_cut
	db			n_length+14,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+16,	n_cut
	db			n_length+12,	oct_2+D#
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+3,	oct_1+A#
	db					n_cut
	db			n_length+9,	oct_1+A#
	db					n_cut
	db			n_length+14,	oct_2+G#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+G#
	db			n_length+14,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+G#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+G#
	db					n_cut
	db					oct_2+G#
	db			n_length+3,	oct_2+D#
	db					n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+14,	oct_2+G#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+G#
	db			n_length+18,	oct_2+D#
	db			n_length+24,	oct_2+G#
	db			n_length+6,	oct_2+G#
	db			n_length+3,	oct_2+D#
	db					n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+8,	oct_2+F#
	db			n_length+4,	n_cut
	db			n_length+10,	oct_2+D#
	db			n_length+8,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+11,	oct_1+A#
	db			n_length+7,	n_cut
	db			n_length+19,	oct_2+D#
	db			n_length+5,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+8,	oct_1+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+C#
	db			n_length+4,	n_cut
	db			n_length+14,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+14,	oct_1+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+3,	oct_1+A#
	db					n_cut
	db			n_length+6,	oct_1+A#
	db			n_length+8,	oct_2+C#
	db			n_length+4,	n_cut
	db			n_length+14,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+14,	oct_1+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+3,	oct_1+A#
	db					n_cut
	db			n_length+6,	oct_1+A#
	db			n_length+8,	oct_2+C#
	db			n_length+4,	n_cut
	db			n_length+14,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+16,	n_cut
	db			n_length+12,	oct_2+D#
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+3,	oct_1+A#
	db					n_cut
	db			n_length+9,	oct_1+A#
	db					n_cut
	db			n_length+14,	oct_2+G#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+G#
	db			n_length+14,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+G#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+G#
	db					n_cut
	db					oct_2+G#
	db			n_length+3,	oct_2+D#
	db					n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+14,	oct_2+G#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+G#
	db			n_length+18,	oct_2+D#
	db			n_length+24,	oct_2+G#
	db			n_length+6,	oct_2+G#
	db			n_length+3,	oct_2+D#
	db					n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+8,	oct_2+F#
	db			n_length+4,	n_cut
	db			n_length+11,	oct_2+D#
	db			n_length+7,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+11,	oct_1+A#
	db			n_length+7,	n_cut
	db			n_length+19,	oct_2+D#
	db			n_length+5,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+8,	oct_1+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+C#
	db			n_length+4,	n_cut
	db			n_length+14,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+14,	oct_1+A#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+8,	oct_2+D#
	db			n_length+4,	n_cut
	db			n_length+6,	oct_2+D#
	db			n_length+3,	oct_1+A#
	db					n_cut
	db			n_length+6,	oct_1+A#
	db			n_length+8,	oct_2+C#
	db			n_length+4,	n_cut

Music_TreetopsBoss_DPCM:
	db	sound_main_loop_set
	db	sound_loop+4
	db	n_multi+2,	n_length+12,	oct_1+G#
	db			n_length+6,	oct_2+G#
	db			n_length+12,	n_cut
	db			n_length+6,	oct_1+G#
	db			n_length+3,	oct_2+G#
	db					n_cut
	db			n_length+18,	oct_1+F#
	db			n_length+4,	oct_2+F#
	db			n_length+8,	n_cut
	db			n_length+6,	oct_2+F#
	db					oct_1+F#
	db					n_cut
	db			n_length+4,	oct_1+F#
	db			n_length+2,	n_cut
	db			n_length+12,	oct_1+F_
	db			n_length+6,	oct_2+F_
	db			n_length+12,	n_cut
	db			n_length+6,	oct_2+F_
	db			n_length+3,	oct_1+F_
	db					n_cut
	db			n_length+18,	oct_1+E_
	db			n_length+4,	oct_2+E_
	db			n_length+8,	n_cut
	db			n_length+6,	oct_2+E_
	db					oct_1+E_
	db			n_length+12,	n_cut
	db	sound_loop_break
	db	sound_ret
