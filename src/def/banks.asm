.enum 0
RAM_Scratch:	.dsb 1
.ende

.enum $80
PRG_Start0:	.dsb 1
PRG_Start1:	.dsb 1
PRG_Start2:	.dsb 1
PRG_Music0: ; cross-bank
PRG_Audio:	.dsb 1
PRG_Music1: ; title/scenes
PRG_SFX0:	.dsb 1
PRG_Music2:	.dsb 1 ; village
PRG_Music3:	.dsb 1 ; fair
PRG_Music4:	.dsb 1 ; desert
PRG_Music5:	.dsb 1 ; wilderness
PRG_Music6:	.dsb 1 ; treetops
PRG_Music7:	.dsb 1 ; spaceship
.ende

PRG_Home = $ff

PRG_DPCM = $ff - 17
; for each level set, the first specialized CHR bank contains the unique
; enemies while the second contains the boss
.enum 0
CHR_TitleScreenOBJ1:		.dsb 1
CHR_TitleScreenOBJ2:		.dsb 1
CHR_TitleScreenBG1:		.dsb 1
CHR_TitleScreenBG2:		.dsb 1
CHR_HillStreamVillageOBJ1:	.dsb 1
CHR_HillStreamVillageOBJ2:	.dsb 1
CHR_HillStreamVillageBG:	.dsb 1
CHR_FairOBJ1:			.dsb 1
CHR_FairOBJ2:			.dsb 1
CHR_FairBG:			.dsb 1
CHR_TrainNo9OBJ1:		.dsb 1
CHR_TrainNo9OBJ2:		.dsb 1
CHR_TrainNo9BG:			.dsb 1
CHR_DesertOBJ1:			.dsb 1
CHR_DesertOBJ2:			.dsb 1
CHR_DesertBG:			.dsb 1
CHR_WildernessOBJ1:		.dsb 1
CHR_WildernessOBJ2:		.dsb 1
CHR_WildernessBG:		.dsb 1
CHR_TreetopsOBJ1:		.dsb 1
CHR_TreetopsOBJ2:		.dsb 1
CHR_TreetopsBG:			.dsb 1
CHR_SpaceshipOBJ1:		.dsb 1
CHR_SpaceshipOBJ2:		.dsb 1
CHR_SpaceshipBG:		.dsb 1
CHR_GameOverBG:			.dsb 1
CHR_CommonOBJ:			.dsb 1
CHR_EndingOBJ1:			.dsb 1
CHR_EndingOBJ2:			.dsb 1
CHR_EndingBG:			.dsb 1
CHR_CreditsOBJ1:		.dsb 1
CHR_CreditsOBJ2:		.dsb 1
CHR_CreditsBG:			.dsb 1
CHR_Logos:			.dsb 1
.ende