extends "res://games/jetzrampage/scripts.gd"
var v_mypower = 0.0
func ev_create():
	v_mypower = 5.0
func ev_col_10():
	if (((v_mypower > 0.0))):
		v_mypower = v_mypower + (-1.0)
	else:
		(GM.f_sound_play(15.0))
		for _r32 in range(int((100.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
		(GM.f_instance_destroy(self))
