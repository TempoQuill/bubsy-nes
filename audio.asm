.base $8000
.include "src/audio/driver.asm"
.include "src/audio/notes.asm"
.include "src/audio/instruments.asm"
.include "src/audio/percussion.asm"
.include "src/audio/samples.asm"
.include "src/audio/music-pointers.asm"
.include "src/audio/sfx-pointers.asm"

.include "src/audio/music/invisible.asm"
.include "src/audio/music/invincible.asm"
.include "src/audio/music/goal.asm"
.include "src/audio/music/slide.asm"
.align $2000

.include "src/audio/sfx.asm"

.include "src/audio/music/titlescreen.asm"
.include "src/audio/music/gameover.asm"
.include "src/audio/music/continue.asm"
.include "src/audio/music/debugmode.asm"
.include "src/audio/music/ending.asm"
.align $2000

.base $8000
.include "src/audio/music/villagemain.asm"
.include "src/audio/music/villageboss.asm"
.include "src/audio/music/cave.asm"
.align $2000

.include "src/audio/music/fairmain.asm"
.include "src/audio/music/fairboss.asm"
.align $2000
.base $8000

.include "src/audio/music/train.asm"
.include "src/audio/music/desertmain.asm"
.include "src/audio/music/sanddune.asm"
.align $2000

.include "src/audio/music/wildernessmain.asm"
.include "src/audio/music/wildernessboss.asm"
.align $2000
