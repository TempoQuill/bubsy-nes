Start:
	JSR InitSound
	LDA #0
	STA zJoyPress
	STA zJoyPress + 1
	LDA zPPUCtrlMirror
	ORA #PPUCtrl_NMIEnabled
	STA zPPUCtrlMirror
	STA rCTRL
	LDY #MUSIC_NONE
	JSR PlayMusic
	LDA #0
	STA zMusicBank
@Loop:
	LDA zJoyPress
	ORA zJoyPress + 1
	BEQ @NoMusic
	LDA zJoyPress
	STA zJoyBuffer
	LDA zJoyPress + 1
	STA zJoyBuffer + 1
	AND #$10
	BNE @Dec
	LDA zJoyPress + 1
	AND #$20
	BNE @Inc
	BIT zJoyPress + 1
	BVS @Line
	LDY zMusicBank
	LDX #$ff
@MusicParse:
	ASL zJoyBuffer + 1
	ROL zJoyBuffer
	INX
	BCC @MusicParse
	STX zLocalSong
	LDA MusicBanks, Y
	CLC
	ADC zLocalSong
	TAX
	LDY MusicBankData, X
	JSR PlayMusic
	JMP @NoMusic
@Line:
	LDY #MUSIC_NONE
	JSR PlayMusic
	LDX zMusicBank
	LDY SFXLines, X
	BEQ @NoMusic
	JSR PlaySFX
	JMP @NoMusic
@Inc:
	LDX zMusicBank
	BEQ @NoMusic
	DEC zMusicBank
	BPL @NoMusic
@Dec:
	LDX zMusicBank
	CPX #$10 ; spaceship
	BCS @NoMusic
	INC zMusicBank
@NoMusic:
	LDA #1
	STA zNMIDelay
@Hang:
	LDA zNMIDelay ; decrements to 0 each NMI
	BNE @Hang
	BEQ @Loop

MACRO musbank offs
	db offs - MusicBankData
ENDM

MusicBanks:
	musbank MusicBank_Title
	musbank MusicBank_Village
	musbank MusicBank_Village
	musbank MusicBank_Village
	musbank MusicBank_Fair
	musbank MusicBank_Fair
	musbank MusicBank_Fair
	musbank MusicBank_Desert
	musbank MusicBank_Desert
	musbank MusicBank_Desert
	musbank MusicBank_Wilderness
	musbank MusicBank_Wilderness
	musbank MusicBank_Wilderness
	musbank MusicBank_Treetops
	musbank MusicBank_Treetops
	musbank MusicBank_Treetops
	musbank MusicBank_Spaceship

MusicBankData:
MusicBank_Title:
	db MUSIC_TITLE_SCREEN
	db MUSIC_DEBUG_MODE
	db MUSIC_ENDING
	db MUSIC_SLIDE
	db MUSIC_GOAL
	db MUSIC_CONTINUE
	db MUSIC_GAME_OVER
	db MUSIC_INVISIBILITY
	db MUSIC_INVINCIBILITY
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE

MusicBank_Village:
	db MUSIC_VILLAGE_MAIN
	db MUSIC_VILLAGE_MAIN
	db MUSIC_CAVE
	db MUSIC_SLIDE
	db MUSIC_GOAL
	db MUSIC_VILLAGE_BOSS
	db MUSIC_VILLAGE_MAIN
	db MUSIC_INVISIBILITY
	db MUSIC_INVINCIBILITY
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE

MusicBank_Fair:
	db MUSIC_FAIR_MAIN
	db MUSIC_FAIR_MAIN
	db MUSIC_FAIR_MAIN
	db MUSIC_SLIDE
	db MUSIC_GOAL
	db MUSIC_FAIR_BOSS
	db MUSIC_FAIR_MAIN
	db MUSIC_INVISIBILITY
	db MUSIC_INVINCIBILITY
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE

MusicBank_Desert:
	db MUSIC_DESERT_MAIN
	db MUSIC_TRAIN
	db MUSIC_SAND_DUNE
	db MUSIC_SLIDE
	db MUSIC_GOAL
	db MUSIC_DESERT_BOSS
	db MUSIC_NONE
	db MUSIC_INVISIBILITY
	db MUSIC_INVINCIBILITY
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE

MusicBank_Wilderness:
MusicBank_Treetops:
MusicBank_Spaceship:
	db MUSIC_WILDERNESS_MAIN
	db MUSIC_WILDERNESS_MAIN
	db MUSIC_WILDERNESS_MAIN
	db MUSIC_SLIDE
	db MUSIC_GOAL
	db MUSIC_WILDERNESS_BOSS
	db MUSIC_WILDERNESS_MAIN
	db MUSIC_INVISIBILITY
	db MUSIC_INVINCIBILITY
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE

SFXLines:
	db 0
	db SFX_CHEESE_WHEELS_OF_DOOM
	db SFX_FORBIDDEN_PLUMMET
	db SFX_A_BRIDGE_TOO_FUR
	db SFX_FAIR_CONDITIONING
	db SFX_NIGHT_OF_THE_LIVING_BOBCAT
	db SFX_OUR_FURLESS_LEADER
	db SFX_THE_GOOD_THE_BAD_AND_THE_WOOLIES
	db SFX_A_FISTFUL_OF_YARN
	db SFX_DANCES_WITH_WOOLIES
	db SFX_BEAVERY_CAREFUL
	db SFX_ROCK_AROUND_THE_CROC
	db SFX_CLAWS_FOR_ALARM
	db SFX_EYE_OF_THE_BOBCAT
	db SFX_NO_TIME_TO_PAWS
	db SFX_LETHAL_WOOLIE
	db SFX_A_FAREWELL_TO_WOOLIES
