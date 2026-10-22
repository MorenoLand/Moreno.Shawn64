extends "res://games/jetzrampage/scripts.gd"
var v_dead = 0.0
var v_mypower = 0.0
func ev_create():
	v_mypower = 3.0
	v_dead = 0.0
func ev_col_103():
	if (((absf(v_dead - 0.0) < 0.00001))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 107.0))
		(GM.f_sound_play(18.0))
		sprite_index = 135.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
		v_dead = 1.0
func ev_col_10():
	v_mypower = v_mypower + (-1.0)
	if (((v_mypower < 1.0))):
		if (((absf(v_dead - 0.0) < 0.00001))):
			(GM.f_instance_create((x + 0.0), (y + 0.0), 107.0))
			(GM.f_sound_play(18.0))
			sprite_index = 135.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
			v_dead = 1.0
