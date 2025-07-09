MusicPointers:
	audio_ptr	0,	PRG_Audio,	Music_Nothing
	audio_ptr	0,	PRG_Music1,	Music_TitleScreen
	audio_ptr	0,	PRG_Music1,	Music_GameOver
	audio_ptr	0,	PRG_Music1,	Music_Continue
	audio_ptr	0,	PRG_Music1,	Music_DebugMode
	audio_ptr	0,	PRG_Music1,	Music_Ending
	audio_ptr	0,	PRG_Music0,	Music_Invisible
	audio_ptr	0,	PRG_Music0,	Music_Invincible
	audio_ptr	0,	PRG_Music0,	Music_Goal
	audio_ptr	0,	PRG_Music0,	Music_Slide
	audio_ptr	0,	PRG_Music2,	Music_VillageMain
	audio_ptr	0,	PRG_Music2,	Music_VillageBoss
	audio_ptr	0,	PRG_Music2,	Music_Cave
	audio_ptr	0,	PRG_Music3,	Music_FairMain
	audio_ptr	0,	PRG_Music3,	Music_FairBoss
	audio_ptr	0,	PRG_Music4,	Music_Train
	audio_ptr	0,	PRG_Music4,	Music_DesertMain
	audio_ptr	0,	PRG_Music5,	Music_DesertBoss
	audio_ptr	0,	PRG_Music4,	Music_SandDune
	audio_ptr	0,	PRG_Music5,	Music_WildernessMain
	audio_ptr	0,	PRG_Music5,	Music_WildernessBoss
	audio_ptr	0,	PRG_Music6,	Music_TreetopsMain
	audio_ptr	0,	PRG_Music6,	Music_TreetopsBoss
	audio_ptr	0,	PRG_Music7,	Music_SpaceshipMain
	audio_ptr	0,	PRG_Music7,	Music_SpaceshipBoss

Music_Nothing:
	channels_tempo PUL1, PUL2, TRI, NSE, DPCM, 128
	dw Music_Nothing_Stub
	dw Music_Nothing_Stub
	dw Music_Nothing_Stub
	dw Music_Nothing_Stub
	dw Music_Nothing_Stub

Music_Nothing_Stub:
	db	sound_ret
