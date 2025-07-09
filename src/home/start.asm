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
	LDA #$ff
	STA zChapterFramesLeft
	LDA #0
	STA zChapterSFXOffset
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
	JSR RunChapterFrame
	LDA zChapterFramesLeft
	BNE @NoMusic
	JMP @Loop

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

MusicBank_Treetops:
	db MUSIC_TREETOPS_MAIN
	db MUSIC_TREETOPS_MAIN
	db MUSIC_TREETOPS_MAIN
	db MUSIC_SLIDE
	db MUSIC_GOAL
	db MUSIC_TREETOPS_BOSS
	db MUSIC_TREETOPS_MAIN
	db MUSIC_INVISIBILITY
	db MUSIC_INVINCIBILITY
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE
	db MUSIC_NONE

MusicBank_Spaceship:
	db MUSIC_SPACESHIP_MAIN
	db MUSIC_SPACESHIP_MAIN
	db MUSIC_SPACESHIP_MAIN
	db MUSIC_SLIDE
	db MUSIC_GOAL
	db MUSIC_SPACESHIP_BOSS
	db MUSIC_SPACESHIP_MAIN
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

RunChapterFrame:
	LDA zChapterFramesLeft
	BNE @Run
	RTS
@Run:
	DEC zChapterFramesLeft
	CMP #$40
	BCC @PlayMusic
	LDY zMusicBank
	LDA ChapterIntroSFXPointersLO, Y
	STA zChapterSFXPointer
	LDA ChapterIntroSFXPointersHI, Y
	STA zChapterSFXPointer + 1
	LDY zChapterSFXOffset
	LDA (zChapterSFXPointer), Y
	BEQ @NoSFX
	LDA zChapterFramesLeft
	EOR #$ff
	CMP (zChapterSFXPointer), Y
	BNE @NoSFX
	INY
	LDA (zChapterSFXPointer), Y
	INY
	STY zChapterSFXOffset
	TAY
	JSR PlaySFX
@NoSFX:
	RTS

@PlayMusic:
	LDY zMusicBank
	LDA MusicBanks, Y
	CLC
	ADC ChapterMusicOffsets, Y
	TAX
	LDY MusicBankData, X
	LDA #0
	STA zChapterFramesLeft
	JMP PlayMusic

ChapterIntroSFXPointersHI:
	db 0
	dh Chapter1SFX
	dh Chapter2SFX
	dh Chapter3SFX
	dh Chapter4SFX
	dh Chapter5SFX
	dh Chapter6SFX
	dh Chapter7SFX
	dh Chapter8SFX
	dh Chapter9SFX
	dh Chapter10SFX
	dh Chapter11SFX
	dh Chapter12SFX
	dh Chapter13SFX
	dh Chapter14SFX
	dh Chapter15SFX
	dh Chapter16SFX

ChapterIntroSFXPointersLO:
	db 0
	dl Chapter1SFX
	dl Chapter2SFX
	dl Chapter3SFX
	dl Chapter4SFX
	dl Chapter5SFX
	dl Chapter6SFX
	dl Chapter7SFX
	dl Chapter8SFX
	dl Chapter9SFX
	dl Chapter10SFX
	dl Chapter11SFX
	dl Chapter12SFX
	dl Chapter13SFX
	dl Chapter14SFX
	dl Chapter15SFX
	dl Chapter16SFX

ChapterMusicOffsets:
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 1
	db 1
	db 1
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0

Chapter1SFX:
	db $30, SFX_IDLE_FOOT_TAP
	db $50, SFX_IDLE_FOOT_TAP
Chapter3SFX:
	db $70, SFX_IDLE_FOOT_TAP
	db $90, SFX_IDLE_FOOT_TAP
	db 0

Chapter2SFX: ; Bubsy falling from a great height
	db $28, SFX_SPLAT
	db 0

Chapter4SFX:
	db $04, SFX_BIG_BALL_OF_VIOLENCE
	db $08, SFX_BIG_BALL_OF_VIOLENCE
	db $0c, SFX_BIG_BALL_OF_VIOLENCE
	db $10, SFX_BIG_BALL_OF_VIOLENCE
	db $14, SFX_BIG_BALL_OF_VIOLENCE
	db $18, SFX_BIG_BALL_OF_VIOLENCE
	db 0

Chapter5SFX: ; Bubsy in "puffy fur" pose
	db $48, SFX_EYE_BLINK
	db $5c, SFX_EYE_BLINK
	db 0

Chapter6SFX: ; Bubsy looking down at the chapter title
Chapter8SFX: ; Bubsy's fur matting
Chapter13SFX: ; Bubsy storm off
Chapter14SFX: ; accordion gag cannot play in this chapter due to voice line
Chapter16SFX: ; Bubsy looking at the player
	db 0

Chapter7SFX:
	db $10, SFX_IDLE_FOOT_TAP
	db $30, SFX_IDLE_FOOT_TAP
	db $50, SFX_IDLE_FOOT_TAP
	db $70, SFX_IDLE_FOOT_TAP
	db $b0, SFX_IDLE_FOOT_TAP
	db 0

Chapter9SFX:
	db $10, SFX_CUCKOO
	db 0

Chapter10SFX:
	db $2c, SFX_FAINT
	db $44, SFX_FAINT_THUD
	db 0

Chapter11SFX: ; chapter-specific take pose
	db $28, SFX_AHRRG_HEIGHT_SHOCK
	db 0

Chapter12SFX: ; Bubsy melting
	db $34, SFX_MELTING
	db 0

Chapter15SFX:
	db $04, SFX_BIG_BALL_OF_VIOLENCE
	db $08, SFX_BIG_BALL_OF_VIOLENCE
	db $0c, SFX_BIG_BALL_OF_VIOLENCE
	db $10, SFX_BIG_BALL_OF_VIOLENCE
	db $14, SFX_BIG_BALL_OF_VIOLENCE
	db $18, SFX_BIG_BALL_OF_VIOLENCE
	db $1c, SFX_BIG_BALL_OF_VIOLENCE
	db $20, SFX_BIG_BALL_OF_VIOLENCE
	db $24, SFX_BIG_BALL_OF_VIOLENCE
	db $28, SFX_BIG_BALL_OF_VIOLENCE
	db $2c, SFX_BIG_BALL_OF_VIOLENCE
	db $30, SFX_BIG_BALL_OF_VIOLENCE
	db $34, SFX_BIG_BALL_OF_VIOLENCE
	db $38, SFX_BIG_BALL_OF_VIOLENCE
	db $3c, SFX_BIG_BALL_OF_VIOLENCE
	db $40, SFX_BIG_BALL_OF_VIOLENCE
	db $44, SFX_BIG_BALL_OF_VIOLENCE
	db $48, SFX_BIG_BALL_OF_VIOLENCE
	db $4c, SFX_BIG_BALL_OF_VIOLENCE
	db $50, SFX_BIG_BALL_OF_VIOLENCE
	db $54, SFX_BIG_BALL_OF_VIOLENCE
	db $58, SFX_BIG_BALL_OF_VIOLENCE
	db $5c, SFX_BIG_BALL_OF_VIOLENCE
	db $60, SFX_BIG_BALL_OF_VIOLENCE
	db $64, SFX_BIG_BALL_OF_VIOLENCE
	db $68, SFX_BIG_BALL_OF_VIOLENCE
	db $6c, SFX_BIG_BALL_OF_VIOLENCE
	db $70, SFX_BIG_BALL_OF_VIOLENCE
	db 0
