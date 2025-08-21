.enum 0
BUBSY_IDLE:			.dsb 1
BUBSY_DEATH_FAINT:		.dsb 1 ; knocked out
BUBSY_DEATH_DAZED:		.dsb 1 ; run over
BUBSY_DEATH_SHATTERED:		.dsb 1 ; egged
BUBSY_DEATH_SLICED:		.dsb 1 ; sharked
BUBSY_DEATH_SILKED:		.dsb 1 ; hit by spider
BUBSY_DEATH_MELTING:		.dsb 1 ; hit by manhole cover
BUBSY_DEATH_FLATTENED:		.dsb 1 ; stomped, fall damage
BUBSY_DEATH_DEFLATED:		.dsb 1 ; popped
BUBSY_DEATH_DROWNED_HAND_UP:	.dsb 1
BUBSY_DEATH_DROWNED_CAPTAIN:	.dsb 1
BUBSY_DEATH_DROWNED_WILDERNESS:	.dsb 1
BUBSY_DEATH_BELOW_BOUNDS:	.dsb 1 ; bottomless pit
BUBSY_DEATH_KIDNAPPED:		.dsb 1 ; in red mad car
BUBSY_DEATH_OUTTA_TIME:		.dsb 1
BUBSY_DEATH_TUMBLE:		.dsb 1 ; plays on loop until landing on a flat surface

BUBSY_CALL_OUT:			.dsb 1 ; "Hello!"
BUBSY_LOOK_UP:			.dsb 1
BUBSY_LOOK_DOWN:		.dsb 1 ; revived in Bubsy II
BUBSY_CROUCH:			.dsb 1
BUBSY_SKID:			.dsb 1
BUBSY_SLIP:			.dsb 1
BUBSY_JUMP:			.dsb 1
BUBSY_SOMERSAULT:		.dsb 1
BUBSY_GLIDE:			.dsb 1
BUBSY_BOP:			.dsb 1
BUBSY_PUSH:			.dsb 1
BUBSY_LAUGH:			.dsb 1 ; revived in Bubsy II
BUBSY_WILD_TAKE_1C:		.dsb 1 ; unused
BUBSY_WILD_TAKE_CHAPTER_11:	.dsb 1
BUBSY_TEETER_1E:		.dsb 1 ; "Yikes!"
BUBSY_TEETER_1F:		.dsb 1 ; "YOW!!!"

BUBSY_SLIDE:			.dsb 1
BUBSY_HEIGHT_SHOCK:		.dsb 1
BUBSY_WALL_DAZE:		.dsb 1
BUBSY_BRAIN_FREEZE:		.dsb 1
BUBSY_SHAKE_DRY:		.dsb 1
BUBSY_ENTER_DOOR:		.dsb 1
BUBSY_RIDE:			.dsb 1
BUBSY_TELEPORT:			.dsb 1
BUBSY_VICTORY:			.dsb 1
.ende

BUBSY_DEATHS = $0f
BUBSY_ANIMS = $7f
BUBSY_DIR = $80

.enum 0
GAMEPLAY_SCENES:	.dsb 1 ; uses unique update routine
GAMEPLAY_DEATH:		.dsb 1 ; uses main update routine, controls locked
GAMEPLAY_MAIN:		.dsb 1 ; uses main update routine, player in control
GAMEPLAY_VICTORY:	.dsb 1 ; scroll modified, controls eventually locked
GAMEPLAY_BOSS:		.dsb 1 ; scroll locked, player in control
GAMEPLAY_DEATH_BOSS:	.dsb 1 ; scroll locked, controls locked
.ende
