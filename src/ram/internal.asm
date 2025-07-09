.enum 0
zVolatileAudio:
; pitch, bank, start, length
zDPCMAnalogs:			.dsb 4

zCurrentChannelPointer:		.dsb 2
zCurrentVolumeLinear:		.dsb 1
zCurrentPitchID:
zCurrentSweep:			.dsb 1
zCurrentNoisePointer:
zCurrentInstrumentPointer:	.dsb 2
zCurrentEffectPointer:		.dsb 2
zDPCMSamplePointer:
zAudioHeaderPointer:		.dsb 2
zMusicChannelFlags:		.dsb 1
zSFXChannelFlags:		.dsb 1
zAudioScratchPointer:
zCurrentAudioScratchData:	.dsb 2

zCurrentChannelArea:	.dsb CHANNEL_STRUCTURE
zVolatileAudioEnd:

zCHRWindow1:	.dsb 1
zCHRWindow2:	.dsb 1
zCHRWindow3:	.dsb 1
zRAMBank:	.dsb 1
zPRGWindow1:	.dsb 1
zPRGWindow2:	.dsb 1

zPPUCtrlMirror:	.dsb 1
zPPUMaskMirror:	.dsb 1
zPPUState:	.dsb 1
zPPUScrollX:	.dsb 1
zPPUScrollY:	.dsb 1

zJoyPress:	.dsb 2
zJoyHeld:	.dsb 2
zJoyPatch:	.dsb 2
zJoyBuffer:	.dsb 4

zNMIDelay:	.dsb 1

zMusicBank:		.dsb 1
zLocalSong:		.dsb 1
zChapterFramesLeft:	.dsb 1
zChapterSFXPointer:	.dsb 2
zChapterSFXOffset:	.dsb 1
.ende

iStack = $100
iStackBottom = $100
iStackTop = $1ff

iVirtualOAM = iStack + $100

.enum iVirtualOAM + $100
; SFX channels
iChannel01:	.dsb CHANNEL_STRUCTURE
iChannel02:	.dsb CHANNEL_STRUCTURE
iChannel03:	.dsb CHANNEL_STRUCTURE
iChannel04:	.dsb CHANNEL_STRUCTURE
iChannel05:	.dsb CHANNEL_STRUCTURE
; music channels
iChannel06:	.dsb CHANNEL_STRUCTURE
iChannel07:	.dsb CHANNEL_STRUCTURE
iChannel08:	.dsb CHANNEL_STRUCTURE
iChannel09:	.dsb CHANNEL_STRUCTURE
iChannel10:	.dsb CHANNEL_STRUCTURE
.ende
