NoisePercussion:
	dw Noise_None ; unused
	dw Noise_Kick
	dw Noise_Snare1
	dw Noise_Hihat1
	dw Noise_Hihat2
	dw Noise_Hihat3
	dw Noise_Snare2 ; fair snare (kick)
	dw Noise_Snare3 ; fair snare (loud)
	dw Noise_Snare4 ; fair snare (soft)
	dw Noise_Snare5 ; log/dune slide
	dw Noise_None
	dw Noise_None
	dw Noise_None
	dw Noise_None
	dw Noise_None
	dw Noise_None

Noise_None:
	db	sound_ret

Noise_Kick:
	db	n_length+1,	$c1,	$29
	db	n_length+2,		$3e
	db	n_length+1,	$d8,	$3e
	db			$d7,	$3e
	db			$d6,	$3e
	db			$d5,	$3e
	db			$d4,	$3e
	db			$d3,	$3e
	db			$d2,	$3e
	db			$d1,	$3e
	db	sound_ret

Noise_Snare1:
	db	n_length+1,	$c1,	$2b
	db				$28
	db				$29
	db			$d8,	$29
	db			$d7,	$29
	db			$d6,	$29
	db			$d5,	$29
	db			$d4,	$29
	db			$d3,	$29
	db			$d2,	$29
	db			$d1,	$29
	db	sound_ret

Noise_Hihat1:
	db	n_length+2,	$c0,	$21
	db	n_length+1,	$d4,	$21
	db			$d3,	$21
	db			$d2,	$21
	db			$d1,	$21
	db	sound_ret

Noise_Hihat2:
	db	n_length+2,	$c0,	$22
	db	n_length+1,	$d4,	$22
	db			$d3,	$22
	db			$d2,	$22
	db			$d1,	$22
	db	sound_ret

Noise_Hihat3:
	db	n_length+2,	$c0,	$20
	db	n_length+1,	$d4,	$20
	db			$d3,	$20
	db			$d2,	$20
	db			$d1,	$20
	db	sound_ret

Noise_Snare2:
	db	n_length+2,	$df,	$3e
	db	n_length+1,	$d5,	$29
	db			$d5,	$29
	db			$d4,	$29
	db			$d3,	$29
	db			$d2,	$29
	db			$d1,	$29
	db	sound_ret

Noise_Snare3:
	db	n_length+5,	$c1,	$29
	db	n_length+1,	$d4,	$29
	db			$d3,	$29
	db			$d2,	$29
	db			$d1,	$29
	db	sound_ret

Noise_Snare4:
	db	n_length+1,	$da,	$29
	db			$d8,	$29
	db			$d6,	$29
	db			$d5,	$29
	db			$d4,	$29
	db			$d3,	$29
	db			$d2,	$29
	db			$d1,	$29
	db	sound_ret

Noise_Snare5:
	db	n_length+3,	$c0,	$29
	db	sound_ret
