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
PRG_Music2:	.dsb 1
PRG_Music3:	.dsb 1
PRG_Music4:	.dsb 1
.ende

PRG_Home = $ff

PRG_DPCM = $ff - 17
; 
.enum 0
; logos
CHR_Accolade:		.dsb 2
CHR_LicenseFont:	.dsb 2
; font
CHR_Font:		.dsb 2
; title screen
CHR_TitleScreenBG1:	.dsb 2
CHR_TitleScreenBG2:	.dsb 2
CHR_TitleScreenOBJ1:	.dsb 2
CHR_TitleScreenOBJ2:	.dsb 2
; etc.
CHR_CommonOBJ:		.dsb 1
CHR_BubsyOBJ:		.dsb 3
; game over
CHR_GameOverBanner:	.dsb 2
; village
CHR_HillStreamVillageBG:	.dsb 2
CHR_HillStreamVillageOBJ1:	.dsb 2
CHR_HillStreamVillageOBJ2:	.dsb 2
; fair
CHR_FairBG:	.dsb 2
CHR_FairOBJ1:	.dsb 2
CHR_FairOBJ2:	.dsb 2
; train
CHR_TrainNo9BG:		.dsb 2
CHR_TrainNo9OBJ:	.dsb 2
; desert
CHR_DesertBG:	.dsb 2
CHR_DesertOBJ1:	.dsb 2
CHR_DesertOBJ2:	.dsb 2
; wilderness
CHR_WildernessBG:	.dsb 2
CHR_WildernessOBJ1:	.dsb 2
CHR_WildernessOBJ2:	.dsb 2
; treetops
CHR_TreetopsBG:		.dsb 2
CHR_TreetopsOBJ1:	.dsb 2
CHR_TreetopsOBJ2:	.dsb 2
; spaceship
CHR_SpaceshipBG:	.dsb 2
CHR_SpaceshipOBJ1:	.dsb 2
CHR_SpaceshipOBJ2:	.dsb 2
; ending
CHR_EndingBG:	.dsb 2
CHR_EndingOBJ1:	.dsb 2
CHR_EndingOBJ2:	.dsb 2
; animated train track backgrounds (bridge/land)
CHR_Tracks:	.dsb 32
; death animations
CHR_Fainting:	.dsb 1
CHR_Dazed:	.dsb 1
CHR_Shattering:	.dsb 1
CHR_Splitting:	.dsb 1
CHR_Freezing:	.dsb 1
CHR_Melting:	.dsb 1
CHR_Pancaked:	.dsb 1
CHR_Deflating:	.dsb 1
CHR_Drowning1:	.dsb 1
CHR_Falling:	.dsb 1
CHR_Kidnapped:	.dsb 1
CHR_Time:	.dsb 1
; misc. Bubsy animations
CHR_Takes:	.dsb 1
CHR_Screen:	.dsb 1
CHR_ShakeDry:	.dsb 1
CHR_PuffyFur:	.dsb 1
CHR_Pouncing:	.dsb 1
.ende