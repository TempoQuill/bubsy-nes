.base 0
	.db "NES", $1a ; handshake
	.db 64 ; PRG
	.db 128 ; CHR
	.db $50 ; MMC5, 4 screen mirroring, no battery back-up
	.db $08 ; MMC5, iNES 2.0
	.db $00, $00 ; N/A
	.db $b0 ; 128K WRAM
	.db 0
	.db 0 ; NTSC
	.db 0, 0, 0 ; unused