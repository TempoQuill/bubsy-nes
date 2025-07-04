SFX_Splat:
	channels_tempo PUL1, 0, 0, NSE, 0, 128
	dw SFX_Splat_PUL1
	dw SFX_Splat_NSE

	;	length		volume	duty/pitch/sweep
SFX_Splat_PUL1:
	db	sound_loop+12
	db	n_length+1,	$df,	$0d,$00,$7f
	db				s_rest
	db	sound_loop_break
	db	sound_ret

	;	length		volume	lfsr/pitch
SFX_Splat_NSE:
	db	n_length+1,	$df,	$2b
	db				$2c
	db				$2d
	db				$2e
	db	n_length+2,		$2f
	db				$2e
	db				$2d
	db				$2c
	db				$2b
	db				$2a
	db				$29
	db				$28
	db				$27
	db				$28
	db	sound_ret

SFX_Blink:
	channels_tempo PUL1, 0, 0, 0, 0, 128
	dw SFX_Blink_PUL1

SFX_Blink_PUL1:
	db	n_length+2,	$df,	$28,$8e,$8a
	db	sound_ret

SFX_Cuckoo:
	channels_tempo PUL1, 0, 0, 0, 0, 128
	dw SFX_Cuckoo_PUL1

SFX_Cuckoo_PUL1:
	db	n_length+4,	$df,	$28,$86,$7f
	db			$c0,	$28,$86,$7f
	db			$df,	$28,$a9,$7f
	db			$c0,	$28,$a9,$7f
	db	sound_ret

SFX_AhrrgHeightShock:
	channels_tempo PUL1, 0, 0, 0, 0, 128
	dw SFX_AhrrgHeightShock_PUL1

SFX_AhrrgHeightShock_PUL1:
	db	n_length+1,	$d4,	$1a,$1a,$8a
	db			$d8,	$29,$7c,$8c
	db			$dc,	$19,$93,$8c
	db			$df,	$29,$ab,$8c
	db			$dc,	$19,$c4,$8c
	db			$d8,	$29,$df,$8c
	db			$d4,	$19,$fb,$8c
	db			$d4,	$29,$1c,$8c
	db			$d8,	$19,$1c,$8c
	db			$dc,	$29,$1c,$8c
	db	sound_loop+5
	db	n_length+1,	$df,	$19,$1c,$8c
	db			$df,	$29,$1c,$8c
	db	sound_loop_break
	db	n_length+1,	$df,	$19,$1c,$8c
	db			$d4,	$29,$67,$8c
	db			$d8,	$19,$7c,$8c
	db			$dc,	$29,$9c,$8c
	db			$df,	$29,$ab,$8c
	db			$dc,	$19,$c4,$8c
	db			$d8,	$29,$df,$8c
	db			$d4,	$19,$fb,$8c
	db			$d4,	$1a,$1a,$8a
	db			$d4,	$2a,$3a,$8a
	db	sound_ret

SFX_ScreenTapping:
	channels_tempo PUL1, 0, 0, NSE, 0, 128
	dw SFX_ScreenTapping_PUL1
	dw SFX_ScreenTapping_NSE

SFX_ScreenTapping_PUL1:
	db	n_length+11,	$c2,	$28,$5e,$7f
	db	sound_ret

SFX_ScreenTapping_NSE:
	db	n_length+11,	$c2,	$3d
	db	sound_ret

SFX_Skid:
	channels_tempo PUL1, 0, 0, 0, 0, 128
	dw SFX_Skid_PUL1

SFX_Skid_PUL1:
	db	instrument+i_skid1
	db	n_multi+2,	n_length+4,	oct_4+D#
	db	instrument+i_skid2
	db	n_multi+2,	n_length+4,	oct_4+D#
	db	instrument+i_skid3
	db	n_multi+2,	n_length+4,	oct_4+D#
	db	instrument+i_skid4
	db	n_multi+2,	n_length+4,	oct_4+D#
	db	sound_ret

SFX_BananaSlide:
	channels_tempo PUL1, 0, 0, 0, 0, 128
	dw SFX_BananaSlide_PUL1

SFX_BananaSlide_PUL1:
	db	n_length+4,	$df,	$2d,$00,$8b
	db				$2b,$56,$8b
	db				$2a,$5c,$8c
	db				$29,$c4,$8c
	db				$29,$67,$8d
	db				$29,$3f,$8d
	db				$29,$1c,$8d
	db				$28,$fd,$8d
	db				$28,$e1,$8d
	db				$28,$c9,$8d
	db				$28,$b3,$8d
	db				$28,$9f,$8d
	db	sound_ret

SFX_LowJump:
	channels_tempo PUL1, 0, 0, 0, 0, 128
	dw SFX_Jump_PUL1

SFX_HighJump:
	channels_tempo PUL1, 0, 0, 0, 0, 192
	dw SFX_Jump_PUL1

SFX_Jump_PUL1:
	db	n_length+4,	$df,	$2b,$56,$8b
	db				$29,$3f,$8b
	db			$d5,	$29,$3f,$8b
	db			$d2,	$29,$3f,$8b
	db			$d1,	$29,$3f,$8b
	db	sound_ret

SFX_HitEnemyOrWall:
	channels_tempo 0, 0, 0, NSE, 0, 128
	dw SFX_HitEnemyOrWall_NSE

SFX_HitEnemyOrWall_NSE:
	db	n_length+1,	$df,	$2e
	db				$2b
	db				$2a
	db	n_length+3,		$2d
	db			$c0,	$2d
	db	sound_ret

SFX_DazedBirdTweet:
	channels_tempo PUL1, 0, 0, 0, 0, 128
	dw SFX_DazedBirdTweet_PUL1

SFX_DazedBirdTweet_PUL1:
	db	n_length+2,	$df,	$28,$1a,$83
	db	n_length+3,		$28,$1b,$83
	db				$28,$1f,$83
	db	n_length+1,		s_rest
	db	n_length+3,		$28,$23,$83
	db	n_length+2,		s_rest
	db	n_length+3,		$28,$27,$83
	db				s_rest
	db				$28,$29,$83
	db	n_length+4,		s_rest
	db	n_length+3,		$28,$2f,$83
	db	n_length+5,		s_rest
	db	n_length+3,		$28,$34,$83
	db	n_length+6,		s_rest
	db	n_length+3,		$28,$38,$83
	db	n_length+7,		s_rest
	db	n_length+3,		$28,$3f,$83
	db	sound_ret

SFX_LandedOnSharpSurface:
	channels_tempo 0, 0, 0, NSE, 0, 128
	dw SFX_LandedOnSharpSurface_NSE

SFX_LandedOnSharpSurface_NSE:
	db	n_length+1,	$c2,	$25
	db	n_length+10,		$2a
	db	n_length+52,	$d2,	$20
	db	sound_ret

SFX_Yarn1:
	channels_tempo PUL1, 0, 0, 0, 0, 128
	dw SFX_Yarn1_PUL1

SFX_Yarn2:
	channels_tempo PUL1, 0, 0, 0, 0, 128
	dw SFX_Yarn2_PUL1

SFX_Yarn3:
	channels_tempo PUL1, 0, 0, 0, 0, 128
	dw SFX_Yarn3_PUL1

SFX_Yarn4:
	channels_tempo PUL1, 0, 0, 0, 0, 128
	dw SFX_Yarn4_PUL1

SFX_Yarn1_PUL1:
	db	n_length+1,	$df,	$2f,$ff,$8a
	db				$29,$1c,$8a
	db	sound_ret

SFX_Yarn2_PUL1:
	db	n_length+1,	$df,	$2f,$ff,$8a
	db				$28,$c9,$8a
	db	sound_ret

SFX_Yarn3_PUL1:
	db	n_length+1,	$df,	$2f,$ff,$8a
	db				$28,$86,$8a
	db	sound_ret

SFX_Yarn4_PUL1:
	db	n_length+1,	$df,	$2f,$ff,$8a
	db				$28,$54,$8a
	db	sound_ret

SFX_EggDropped:
	channels_tempo PUL1, 0, 0, 0, 0, 128
	dw SFX_EggDropped_PUL1

SFX_EggDropped_PUL1:
	db	n_length+1,	$df,	$2f,$ff,$8a
	db	n_length+2,		$29,$7c,$8a
	db			$d5,	$29,$7c,$8a
	db			$d2,	$29,$7c,$8a
	db			$d1,	$29,$7c,$8a
	db	sound_ret

SFX_MadCarHonk1:
	channels_tempo PUL1, PUL2, 0, 0, 0, 128
	dw SFX_MadCarHonk1_PUL1
	dw SFX_MadCarHonk1_PUL2

SFX_MadCarHonk2:
	channels_tempo PUL1, PUL2, 0, 0, 0, 128
	dw SFX_MadCarHonk2_PUL1
	dw SFX_MadCarHonk2_PUL2

SFX_MadCarHonk3:
	channels_tempo PUL1, PUL2, 0, 0, 0, 128
	dw SFX_MadCarHonk3_PUL1
	dw SFX_MadCarHonk3_PUL2

SFX_MadCarHonk1_PUL1:
	db	instrument+i_car2
	db	n_multi+10,	n_length+2,	oct_3+F_
	db					oct_3+F_
	db	sound_ret

SFX_MadCarHonk1_PUL2:
	db	instrument+i_car1
	db	n_multi+10,	n_length+2,	oct_3+A_
	db					oct_3+A_
	db	sound_ret

SFX_MadCarHonk2_PUL1:
	db	instrument+i_car2
	db	n_multi+2,	n_length+11,	oct_4+C_
	db					oct_4+C_
	db					oct_4+C_
	db	sound_ret

SFX_MadCarHonk2_PUL2:
	db	instrument+i_car1
	db	n_multi+2,	n_length+11,	oct_4+E_
	db					oct_4+E_
	db					oct_4+E_
	db	sound_ret

SFX_MadCarHonk3_PUL1:
	db	instrument+i_car2
	db	n_multi+5,	n_length+2,	oct_4+C_
	db					oct_3+F#
	db					oct_4+C_
	db					oct_3+F#
	db					oct_4+C_
	db					oct_3+F#
	db					oct_4+C_
	db			n_length+4,	oct_3+F#
	db	sound_ret

SFX_MadCarHonk3_PUL2:
	db	instrument+i_car1
	db	n_multi+5,	n_length+2,	oct_4+E_
	db					oct_3+A#
	db					oct_4+E_
	db					oct_3+A#
	db					oct_4+E_
	db					oct_3+A#
	db					oct_4+E_
	db			n_length+4,	oct_3+A#
	db	sound_ret

SFX_SilkSaucer:
	channels_tempo 0, 0, 0, NSE, 0, 128
	dw SFX_SilkSaucer_NSE

SFX_SilkSaucer_NSE:
	db	n_length+1,	$df,	$20
	db				$30
	db				$21
	db				$31
	db				$22
	db				$32
	db				$23
	db				$33
	db				$24
	db				$34
	db				$25
	db				$35
	db				$26
	db				$36
	db				$27
	db				$37
	db				$28
	db				$38
	db				$29
	db				$39
	db				$2a
	db				$3a
	db				$2b
	db				$3b
	db				$2c
	db				$3c
	db				$2d
	db				$3d
	db				$2e
	db				$3e
	db				$2f
	db				$3f
	db	sound_ret

SFX_WoolieRaspberry:
	channels_tempo 0, 0, 0, NSE, 0, 128
	dw SFX_WoolieRaspberry_NSE

SFX_WoolieRaspberry_NSE:
	db	n_length+1,	$d4,	$2b
	db			$d8,	$2b
	db			$dc,	$2b
	db			$d8,	$2b
	db			$d4,	$2b
	db			$d3,	$2b
	db			$d2,	$2b
	db			$d1,	$2b
	db			$dc,	$2d
	db	sound_loop+13
	db	n_length+1,	$df,	$2d
	db				s_rest
	db	sound_loop_break
	db	n_length+1,	$df,	$2d
	db	sound_ret

SFX_Splash:
	channels_tempo 0, 0, 0, NSE, 0, 128
	dw SFX_Splash_NSE

SFX_Splash_NSE:
	db	n_length+1,	$df,	$29
	db				$2a
	db				$2b
	db				$2c
	db				$2d
	db				$2e
	db	n_length+2,		$2f
	db	n_length+1,		$2e
	db				$2d
	db				$2c
	db				$2b
	db				$2a
	db				$29
	db				$28
	db				$27
	db				$26
	db				$25
	db				$29
	db				$28
	db				$27
	db				$26
	db				$25
	db			$d5,	$29
	db				$28
	db				$27
	db				$26
	db				$25
	db				$29
	db				$28
	db				$27
	db				$26
	db				$25
	db			$d2,	$29
	db				$28
	db				$27
	db				$26
	db				$25
	db				$29
	db				$28
	db				$27
	db				$26
	db				$25
	db			$d1,	$29
	db				$28
	db				$27
	db				$26
	db				$25
	db				$29
	db				$28
	db				$27
	db				$26
	db				$25
	db	sound_ret

SFX_LevelSwitchManholeCover:
	channels_tempo PUL1, 0, 0, 0, 0, 128
	dw SFX_LevelSwitchManholeCover_PUL1

SFX_LevelSwitchManholeCover_PUL1:
	db	instrument+i_xylophone
	db	n_multi+4,	n_length+1,	oct_5+E_
	db					oct_5+C#
	db					oct_5+D#
	db	sound_ret

SFX_BridgeWheel:
	channels_tempo PUL1, 0, 0, 0, 0, 128
	dw SFX_BridgeWheel_PUL1

SFX_BridgeWheel_PUL1:
	db	instrument+i_xylophone
	db	n_multi+4,	n_length+1,	oct_6+D#
	db					oct_5+B_
	db					oct_6+D#
	db	sound_ret

SFX_DynamitePrairieDogGunshot:
	channels_tempo 0, 0, 0, NSE, 0, 128
	dw SFX_DynamitePrairieDogGunshot_NSE

SFX_DynamitePrairieDogGunshot_NSE:
	db	n_length+1,	$cb,	$25
	db				$2f
	db	n_length+45,		$25
	db	sound_ret

SFX_CollectContinue:
	channels_tempo PUL1, 0, 0, 0, 0, 160
	dw SFX_CollectContinue_PUL1

SFX_CollectContinue_PUL1:
	db	instrument+i_organ1_tie
	db	n_multi+4,	n_length+1,	oct_3+F_
	db					oct_3+A#
	db					oct_4+D_
	db					oct_3+G_
	db					oct_4+C_
	db					oct_4+E_
	db					oct_3+A_
	db					oct_4+D_
	db					oct_4+F#
	db					oct_3+B_
	db					oct_4+E_
	db					oct_4+G#
	db	sound_ret

SFX_YarnCrate:
	channels_tempo PUL1, 0, 0, 0, 0, 160
	dw SFX_YarnCrate_PUL1

SFX_YarnCrate_PUL1:
	db	instrument+i_organ1_tie
	db	n_multi+4,	n_length+1,	oct_2+C_
	db					oct_2+E_
	db					oct_2+G_
	db					oct_3+C_
	db					oct_3+E_
	db					oct_3+G_
	db					oct_4+C_
	db					oct_4+E_
	db					oct_4+G_
	db					oct_4+E_
	db					oct_4+G_
	db					oct_4+E_
	db					oct_4+C_
	db					oct_3+G_
	db					oct_3+E_
	db					oct_3+C_
	db					oct_2+G_
	db					oct_2+E_
	db					oct_2+C_
	db	sound_ret

SFX_YarnBubble:
	channels_tempo PUL1, 0, 0, 0, 0, 160
	dw SFX_YarnBubble_PUL1

SFX_YarnBubble_PUL1:
	db	instrument+i_organ1_tie
	db	n_multi+4,	n_length+1,	oct_2+G_
	db					oct_3+D_
	db					oct_3+G_
	db					oct_3+B_
	db					oct_4+D_
	db					oct_4+F_
	db					oct_4+G_
	db					oct_4+B_
	db					oct_2+G_
	db					oct_3+C_
	db					oct_3+E_
	db					oct_3+G_
	db					oct_4+C_
	db					oct_4+E_
	db					oct_4+G_
	db					oct_5+C_
	db	sound_ret

SFX_1UpShirt:
	channels_tempo PUL1, 0, 0, 0, 0, 192
	dw SFX_1UpShirt_PUL1

SFX_2UpShirt:
	channels_tempo PUL1, 0, 0, 0, 0, 192
	dw SFX_2UpShirt_PUL1

SFX_1UpShirt_PUL1:
	db	instrument+i_organ1_tie
	db	n_multi+4,	n_length+1,	oct_2+C_
	db					oct_2+D_
	db					oct_2+E_
	db					oct_2+F#
	db					oct_2+G#
	db					oct_2+A#
	db					oct_3+C_
	db					oct_3+D_
	db					oct_3+E_
	db					oct_3+F#
	db					oct_3+G#
	db					oct_3+A#
	db					oct_4+C_
	db	sound_ret

SFX_2UpShirt_PUL1:
	db	instrument+i_organ1_tie
	db	n_multi+4,	n_length+1,	oct_2+G#
	db					oct_2+A#
	db					oct_3+C_
	db					oct_3+D_
	db					oct_3+E_
	db					oct_3+F#
	db					oct_3+G#
	db					oct_3+A#
	db					oct_4+C_
	db					oct_4+D_
	db					oct_4+E_
	db					oct_4+F#
	db					oct_4+G#
	db	sound_ret

SFX_FootTap:
	channels_tempo 0, 0, 0, NSE, 0, 128
	dw SFX_FootTap_NSE

SFX_FootTap_NSE:
	db	n_length+1,	$df,	$3e
	db			$d7,	$3e
	db			$d3,	$3e
	db			$d1,	$3e
	db	sound_ret

SFX_BigBallOfViolence:
	channels_tempo 0, 0, 0, NSE, 0, 128
	dw SFX_BigBallOfViolence_NSE

SFX_BigBallOfViolence_NSE:
	db	n_length+1,	$df,	$28
	db				$23
	db				$20
	db				$23
	db	sound_ret

SFX_Faint:
	channels_tempo PUL1, 0, 0, 0, 0, 128
	dw SFX_Faint_PUL1

SFX_Faint_PUL1:
	db	n_length+1,	$d2,	$28,$3b,$7f
	db			$d4,	$28,$3b,$7f
	db			$d8,	$28,$3b,$7f
	db	n_length+11,	$c2,	$28,$3b,$84
	db	sound_ret

SFX_FaintThud:
	channels_tempo 0, 0, 0, NSE, 0, 128
	dw SFX_FaintThud_NSE

SFX_FaintThud_NSE:
	db	n_length+2,	$df,	$2b
	db				$2c
	db	n_length+14,	$c3,	$2d
	db	sound_ret

SFX_Melting:
	channels_tempo PUL1, 0, 0, 0, 0, 128
	dw SFX_Melting_PUL1

SFX_Melting_PUL1:
	db	instrument+i_bubble
	db	n_multi+4,	n_length+1,	oct_3+G_
	db					oct_4+C_
	db					n_cut
	db					oct_2+G_
	db					oct_3+C_
	db					n_cut
	db					oct_2+D_
	db					oct_2+G_
	db					n_cut
	db	sound_loop+2
	db	n_multi+4,	n_length+1,	oct_4+C_
	db					oct_4+F_
	db					oct_1+A_
	db					oct_4+C_
	db					oct_4+F_
	db					oct_1+A_
	db					oct_2+B_
	db					oct_3+E_
	db					oct_1+A_
	db	sound_loop_break
	db	sound_ret

SFX_AlarmClockOutOfTime:
	channels_tempo PUL1, 0, 0, 0, 0, 128
	dw SFX_AlarmClockOutOfTime_PUL1

SFX_AlarmClockOutOfTime_PUL1:
	db	n_length+3,	$df,	$28,$2f,$91
	db			$df,	$28,$2f,$91
	db			$de,	$28,$2f,$91
	db			$dd,	$28,$2f,$91
	db			$dc,	$28,$2f,$91
	db			$db,	$28,$2f,$91
	db			$da,	$28,$2f,$91
	db			$d9,	$28,$2f,$91
	db			$d8,	$28,$2f,$91
	db			$d7,	$28,$2f,$91
	db			$d6,	$28,$2f,$91
	db			$d5,	$28,$2f,$91
	db				$28,$2f,$91
	db			$d4,	$28,$2f,$91
	db				$28,$2f,$91
	db			$d3,	$28,$2f,$91
	db				$28,$2f,$91
	db			$d2,	$28,$2f,$91
	db				$28,$2f,$91
	db			$d1,	$28,$2f,$91
	db				$28,$2f,$91
	db	sound_ret

SFX_SnapagatorChomp:
	channels_tempo 0, 0, 0, NSE, 0, 128
	dw SFX_SnapagatorChomp_NSE

SFX_SnapagatorChomp_NSE:
	db	n_length+1,	$df,	$29
	db	n_length+5,		$2a
	db	n_length+4,		$2c
	db	n_length+1,		$2d
	db	n_length+3,	$c0,	$2d
	db	n_length+1,	$d1,	$2f
	db	n_length+2,	$c0,	$3e
	db	n_length+1,	$d4,	$2f
	db	sound_ret

SFX_FlyingBug:
	channels_tempo PUL1, 0, 0, 0, 0, 128
	dw SFX_FlyingBug_PUL1

SFX_FlyingBug_PUL1:
	db	sound_loop+2
	db	n_length+1,	$df,	$0a,$5c,$7f
	db				s_rest
	db				$0a,$60,$7f
	db				s_rest
	db				$0a,$64,$7f
	db				s_rest
	db				$0a,$60,$7f
	db				s_rest
	db				$0a,$5c,$7f
	db				s_rest
	db				$0a,$58,$7f
	db				s_rest
	db				$0a,$54,$7f
	db				s_rest
	db				$0a,$50,$7f
	db				s_rest
	db				$0a,$4c,$7f
	db				s_rest
	db				$0a,$48,$7f
	db				s_rest
	db				$0a,$44,$7f
	db				s_rest
	db				$0a,$40,$7f
	db				s_rest
	db	sound_loop_break
	db	n_length+1,	$df,	$0a,$5c,$7f
	db				s_rest
	db				$0a,$60,$7f
	db				s_rest
	db				$0a,$64,$7f
	db				s_rest
	db				$0a,$60,$7f
	db				s_rest
	db				$0a,$5c,$7f
	db				s_rest
	db				$0a,$58,$7f
	db				s_rest
	db				$0a,$54,$7f
	db	sound_ret

SFX_FirecrackerSizzle:
	channels_tempo 0, 0, 0, NSE, 0, 128
	dw SFX_FirecrackerSizzle_NSE

SFX_FirecrackerSizzle_NSE:
	db	n_length+63,	$d4,	$21
	db	sound_ret

SFX_Bounce:
	channels_tempo PUL1, 0, 0, 0, 0, 128
	dw SFX_Bounce_PUL1

SFX_Bounce_PUL1:
	db	n_length+6,	$df,	$28,$23,$7f
	db				$28,$23,$82
	db			$d5,	$28,$23,$82
	db			$d2,	$28,$23,$82
	db			$d1,	$28,$23,$82
	db	sound_ret

SFX_EggCrack:
	channels_tempo 0, 0, 0, NSE, 0, 128
	dw SFX_EggCrack_NSE

SFX_EggCrack_NSE:
	db	n_length+1,	$dc,	$29
	db			$d8,	$28
	db			$d4,	$29
	db				s_rest
	db			$d6,	$29
	db			$d4,	$28
	db			$de,	$26
	db			$dc,	$25
	db			$da,	$26
	db			$d8,	$25
	db			$d6,	$26
	db			$d4,	$25
	db			$d2,	$26
	db			$d4,	$29
	db			$d2,	$28
	db			$d1,	$29
	db	sound_ret

SFX_BootKick:
	channels_tempo PUL1, 0, 0, 0, 0, 128
	dw SFX_BootKick_PUL1

SFX_BootKick_PUL1:
	db	n_length+2,	$c0,	$2a,$3a,$9a
	db				$2a,$3a,$8c
	db			$df,	$29,$67,$8c
	db			$d5,	$29,$67,$8c
	db			$d2,	$29,$67,$8c
	db			$d1,	$29,$0c,$8c
	db	sound_ret

SFX_TreeFrogCroak:
	channels_tempo PUL1, 0, 0, 0, 0, 128
	dw SFX_TreeFrogCroak_PUL1

SFX_TreeFrogCroak_PUL1:
	db	n_length+1,	$d5,	$18,$b3,$89
	db				s_rest
	db				$18,$a9,$89
	db				s_rest
	db				$18,$9f,$89
	db				s_rest
	db				$18,$96,$89
	db				s_rest
	db				$18,$8e,$89
	db				s_rest
	db				$18,$86,$89
	db				s_rest
	db				$18,$7e,$89
	db	n_length+3,		s_rest
	db	n_length+1,		$18,$7e,$89
	db				s_rest
	db				$18,$8e,$89
	db				s_rest
	db				$18,$86,$89
	db				s_rest
	db				$18,$86,$89
	db				s_rest
	db				$18,$86,$89
	db	sound_ret

SFX_KnockoutBells:
	channels_tempo PUL1, PUL2, 0, 0, 0, 128
	dw SFX_KnockoutBells_PUL1
	dw SFX_KnockoutBells_PUL2

SFX_KnockoutBells_PUL1:
	db	instrument+i_bell
	db	n_multi+2,	n_length+11,	oct_4+F#
	db	n_multi+8,	n_length+13,	oct_4+F#
	db	sound_ret

SFX_KnockoutBells_PUL2:
	db	instrument+i_bell
	db	n_multi+2,	n_length+11,	oct_6+G#
	db	n_multi+8,	n_length+13,	oct_6+G#
	db	sound_ret

SFX_Chapter1:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_Chapter1_DPCM

SFX_Chapter2:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_Chapter2_DPCM

SFX_Chapter3:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_Chapter3_DPCM

SFX_Chapter4:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_Chapter4_DPCM

SFX_Chapter5:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_Chapter5_DPCM

SFX_Chapter6:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_Chapter6_DPCM

SFX_Chapter7:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_Chapter7_DPCM

SFX_Chapter8:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_Chapter8_DPCM

SFX_Chapter9:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_Chapter9_DPCM

SFX_Chapter10:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_Chapter10_DPCM

SFX_Chapter11:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_Chapter11_DPCM

SFX_Chapter12:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_Chapter12_DPCM

SFX_Chapter13:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_Chapter13_DPCM

SFX_Chapter14:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_Chapter14_DPCM

SFX_Chapter15:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_Chapter15_DPCM

SFX_Chapter16:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_Chapter16_DPCM

SFX_Chapter1_DPCM:
	db	n_length+59,	SMP_WHAT_COULD_POSSIBLY_GO_WRONG
	db			SMP_WHAT_COULD_POSSIBLY_GO_WRONG + 1
	db	sound_ret

SFX_Chapter2_DPCM:
	db	n_length+59,	SMP_DID_I_MENTION_I_DON_T_LIKE_HEIGHTS
	db			SMP_DID_I_MENTION_I_DON_T_LIKE_HEIGHTS + 1
	db	sound_ret

SFX_Chapter3_DPCM:
	db	n_length+59,	SMP_MORE_LIKE_A_BRIDGE_TOO_SHORT
	db			SMP_MORE_LIKE_A_BRIDGE_TOO_SHORT + 1
	db	sound_ret

SFX_Chapter4_DPCM:
	db	n_length+59,	SMP_HEY_WHATEVER_BLOWS_YOUR_HAIR_BACK
	db			SMP_HEY_WHATEVER_BLOWS_YOUR_HAIR_BACK + 1
	db	sound_ret

SFX_Chapter5_DPCM:
	db	n_length+59,	SMP_HEY_I_THOUGHT_I_SAW_ELVIS_BACK_THERE
	db			SMP_HEY_I_THOUGHT_I_SAW_ELVIS_BACK_THERE + 1
	db	sound_ret

SFX_Chapter6_DPCM:
	db	n_length+59,	SMP_SHOULDN_T_THAT_BE_FEARLESS_UH_OH
	db			SMP_SHOULDN_T_THAT_BE_FEARLESS_UH_OH + 1
	db	sound_ret

SFX_Chapter7_DPCM:
	db	n_length+59,	SMP_WELL_IT_WORKED_FOR_CLINT
	db			SMP_WELL_IT_WORKED_FOR_CLINT + 1
	db	sound_ret

SFX_Chapter8_DPCM:
	db	n_length+59,	SMP_GO_AHEAD_MAKE_MY_DAY
	db			SMP_GO_AHEAD_MAKE_MY_DAY + 1
	db	sound_ret

SFX_Chapter9_DPCM:
	db	n_length+59,	SMP_MY_CONTRACT_DOES_NOT_MENTION_PAIN
	db			SMP_MY_CONTRACT_DOES_NOT_MENTION_PAIN + 1
	db	sound_ret

SFX_Chapter10_DPCM:
	db	n_length+59,	SMP_HEY_I_DIDN_T_WRITE_THIS_STUFF
	db			SMP_HEY_I_DIDN_T_WRITE_THIS_STUFF + 1
	db	sound_ret

SFX_Chapter11_DPCM:
	db	n_length+59,	SMP_NEXT_TIME_I_GET_A_STUNT_CAT
	db			SMP_NEXT_TIME_I_GET_A_STUNT_CAT + 1
	db	sound_ret

SFX_Chapter12_DPCM:
	db	n_length+59,	SMP_IS_THERE_A_VETERINARIAN_IN_THE_AUDIENCE
	db			SMP_IS_THERE_A_VETERINARIAN_IN_THE_AUDIENCE + 1
	db	sound_ret

SFX_Chapter13_DPCM:
	db	n_length+59,	SMP_THAT_S_IT_I_M_OUTTA_HERE_YOU_CAN_T_MAKE_ME
	db			SMP_THAT_S_IT_I_M_OUTTA_HERE_YOU_CAN_T_MAKE_ME + 1
	db	sound_ret

SFX_Chapter14_DPCM:
	db	n_length+59,	SMP_WHAT_AND_GIVE_UP_SHOW_BUSINESS
	db			SMP_WHAT_AND_GIVE_UP_SHOW_BUSINESS + 1
	db	sound_ret

SFX_Chapter15_DPCM:
	db	n_length+59,	SMP_SOMEBODY_DIAL_911
	db			SMP_SOMEBODY_DIAL_911 + 1
	db	sound_ret

SFX_Chapter16_DPCM:
	db	n_length+59,	SMP_WHOA_ARE_YOU_STILL_PLAYING_THIS_THING
	db			SMP_WHOA_ARE_YOU_STILL_PLAYING_THIS_THING + 1
	db	sound_ret

SFX_EggBounce:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_EggBounce_DPCM

SFX_EggBounce_DPCM:
	db	n_length+37,	SMP_EGG_BOUNCE
	db	sound_ret

SFX_WalkingAccordionGag1:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_WalkingAccordionGag1_DPCM

SFX_WalkingAccordionGag2:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_WalkingAccordionGag2_DPCM

SFX_WalkingAccordionGag1_DPCM:
	db	n_length+10,	SMP_ACCORDION_GAG_1
	db	sound_ret

SFX_WalkingAccordionGag2_DPCM:
	db	n_length+14,	SMP_ACCORDION_GAG_2
	db	sound_ret

SFX_ShakeDry:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_ShakeDry_DPCM

SFX_ShakeDry_DPCM:
	db	n_length+47,	SMP_SHAKE_DRY
	db	sound_ret

SFX_FallingPiano1:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_FallingPiano1_DPCM

SFX_FallingPiano2:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_FallingPiano2_DPCM

SFX_FallingPiano3:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_FallingPiano3_DPCM

SFX_FallingPiano4:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_FallingPiano4_DPCM

SFX_FallingPiano5:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_FallingPiano5_DPCM

SFX_FallingPiano1_DPCM:
	db	n_length+9,	SMP_FALLING_PIANO_1
	db	sound_ret

SFX_FallingPiano2_DPCM:
	db	n_length+12,	SMP_FALLING_PIANO_2
	db	sound_ret

SFX_FallingPiano3_DPCM:
	db	n_length+14,	SMP_FALLING_PIANO_3
	db	sound_ret

SFX_FallingPiano4_DPCM:
	db	n_length+18,	SMP_FALLING_PIANO_4
	db	sound_ret

SFX_FallingPiano5_DPCM:
	db	n_length+21,	SMP_FALLING_PIANO_5
	db	sound_ret

SFX_Shatter:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_Shatter_DPCM

SFX_Shatter_DPCM:
	db	n_length+60,	SMP_SHATTER
	db	sound_ret

SFX_Hello:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_Hello_DPCM

SFX_Yikes:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_Yikes_DPCM

SFX_Yow:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_Yow_DPCM

SFX_Hello_DPCM:
	db	n_length+22,	SMP__HELLO_
	db	sound_ret

SFX_Yikes_DPCM:
	db	n_length+19,	SMP__YIKES_
	db	sound_ret

SFX_Yow_DPCM:
	db	n_length+18,	SMP__YOW_
	db	sound_ret

SFX_BottomlessPit:
	channels_tempo 0, 0, 0, 0, DPCM, 128
	dw SFX_BottomlessPit_DPCM

SFX_BottomlessPit_DPCM:
	db	n_length+37,	SMP_BOTTOMLESS_PIT
	db	n_length+49,	SMP_BOTTOMLESS_PIT + 1
	db	sound_ret
