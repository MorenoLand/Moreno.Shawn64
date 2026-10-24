extends "res://games/jetzfusion/objects/o244.gd"
func ev_create():
	v_hitme = 1.0
	v_mypower = 3.0
	image_single = 0.0
	depth = 10.0
	if ((absf(sprite_index - 47.0) < 0.00001)):
		v_poom = (GM.f_round((GM.f_random(1.0))))
		if ((absf(v_poom - 0.0) < 0.00001)):
			sprite_index = 48.0
	if ((absf(sprite_index - 216.0) < 0.00001)):
		v_poom = (GM.f_round((GM.f_random(1.0))))
		if ((absf(v_poom - 0.0) < 0.00001)):
			sprite_index = 271.0
