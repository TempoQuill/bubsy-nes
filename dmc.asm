; BANK $ee
.incbin "dmc/op1-1.dmc"
.align $40, $55
.incbin "dmc/op2-1.dmc"
.align $40, $55

; BANK $ef
.incbin "dmc/op3-1.dmc"
.align $40, $55
.incbin "dmc/op4-1.dmc"
.align $40, $55

; BANK $f0
.incbin "dmc/op5-1.dmc"
.align $40, $55
.incbin "dmc/op6-1.dmc"
.align $40, $55

; BANK $f1
.incbin "dmc/op7-1.dmc"
.align $40, $55
.incbin "dmc/op8-1.dmc"
.align $40, $55

; BANK $f2
.incbin "dmc/op9-1.dmc"
.align $40, $55
.incbin "dmc/op10-1.dmc"
.align $40, $55

; BANK $f3
.incbin "dmc/op11-1.dmc"
.align $40, $55
.incbin "dmc/op12-1.dmc"
.align $40, $55

; BANK $f4
.incbin "dmc/op13-1.dmc"
.align $40, $55
.incbin "dmc/op14-1.dmc"
.align $40, $55

; BANK $f5
.incbin "dmc/op15-1.dmc"
.align $40, $55
.incbin "dmc/op16-1.dmc"
.align $40, $55

; BANK $f6
.incbin "dmc/shatter.dmc"
.align $40, $55
.incbin "dmc/ssg_1.dmc"
.align $40, $55

; BANK $f7
.incbin "dmc/ssg_2.dmc"
.align $40, $55
.incbin "dmc/ssg_3.dmc"
.align $40, $55

; BANK $f8
.incbin "dmc/ssg_4.dmc"
.align $40, $55
.incbin "dmc/ssg_5.dmc"
.align $40, $55

; BANK $f9
.incbin "dmc/op6-2.dmc"
.align $40, $55
.incbin "dmc/op16-2.dmc"
.align $40, $55
.incbin "dmc/piano.dmc"
.align $40, $55

; BANK $fa
.incbin "dmc/fall-2.dmc", 0, (DMC_BOTTOMLESS_PIT_2_END - DMC_BOTTOMLESS_PIT_2) << 4
.incbin "dmc/op12-2.dmc"
.align $40, $55
.incbin "dmc/op9-2.dmc"
.align $40, $55

; BANK $fb
.incbin "dmc/shakedry.dmc"
.align $40, $55
.incbin "dmc/fall-1.dmc"
.align $40, $55
.incbin "dmc/yikes.dmc"
.align $40, $55
.incbin "dmc/op1-2.dmc", 0, (DMC_END_WCPGW_END - DMC_END_WCPGW) << 4

; BANK $fc
.incbin "dmc/egg.dmc"
.align $40, $55
.incbin "dmc/op8-2.dmc", 0, (DMC_END_GAMMD_END - DMC_END_GAMMD) << 4
.incbin "dmc/op11-2.dmc"
.align $40, $55
.incbin "dmc/hello.dmc"
.align $40, $55

; BANK $fd
.incbin "dmc/op2-2.dmc", 0, (DMC_END_DIMIDLH_END - DMC_END_DIMIDLH) << 4
.incbin "dmc/op13-2.dmc"
.align $40, $55
.incbin "dmc/op15-2.dmc"
.align $40, $55
.incbin "dmc/op3-2.dmc"
.align $40, $55
.incbin "dmc/op4-2.dmc"
.align $40, $55

; BANK $fe
.incbin "dmc/op5-2.dmc"
.align $40, $55
.incbin "dmc/yow.dmc", 0, (DMC__YOW__END - DMC__YOW_) << 4
.incbin "dmc/op10-2.dmc"
.align $40, $55
.incbin "dmc/op14-2.dmc"
.align $40, $55
.incbin "dmc/accordion.dmc"
.align $40, $55
.incbin "dmc/op7-2.dmc"
.align $2000, $55
