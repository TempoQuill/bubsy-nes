.enum 0
; title / scenes
MUSIC_NONE:		.dsb 1
MUSIC_TITLE_SCREEN:	.dsb 1
MUSIC_GAME_OVER:	.dsb 1
MUSIC_CONTINUE:		.dsb 1
MUSIC_DEBUG_MODE:	.dsb 1 ; absent on MD/Win95 versions, SNES version only
MUSIC_ENDING:		.dsb 1
; cross-soundfont songs
MUSIC_INVISIBILITY:	.dsb 1
MUSIC_INVINCIBILITY:	.dsb 1
MUSIC_GOAL:		.dsb 1 ; uses multiple soundfonts on SNES due to 64KB limit
MUSIC_SLIDE:		.dsb 1 ; uses multiple soundfonts on SNES due to 64KB limit
; village
MUSIC_VILLAGE_MAIN:	.dsb 1
MUSIC_VILLAGE_BOSS:	.dsb 1 ; MD version reuses this on the wilderness boss
MUSIC_CAVE:		.dsb 1 ; absent on MD/Win95 versions, SNES version only
; fair
MUSIC_FAIR_MAIN:	.dsb 1
MUSIC_FAIR_BOSS:	.dsb 1
; train/desert
MUSIC_TRAIN:		.dsb 1 ; MD version reuses this as desert/treetops bosses
MUSIC_DESERT_MAIN:	.dsb 1
MUSIC_DESERT_BOSS:	.dsb 1 ; absent on MD version
MUSIC_SAND_DUNE:	.dsb 1 ; unused in the SNES version, absent on MD version, proper use on Win95 only
; wilderness
MUSIC_WILDERNESS_MAIN:	.dsb 1 ; main melody partly missing on MD and Win95 versions, only SNES version intact
MUSIC_WILDERNESS_BOSS:	.dsb 1 ; absent on MD version
; treetops
MUSIC_TREETOPS_MAIN:	.dsb 1
MUSIC_TREETOPS_BOSS:	.dsb 1 ; reuses parts of main variant, bafflingly absent on MD version
; spaceship
MUSIC_SPACESHIP_MAIN:	.dsb 1 ; includes boss variant on MD version
MUSIC_SPACESHIP_BOSS:	.dsb 1
.ende