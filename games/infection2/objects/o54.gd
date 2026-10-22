extends "res://games/infection2/scripts.gd"
func ev_create():
	vspeed = 1.0
	gravity = 0.3
func ev_col_1():
	(GM.f_sound_play(21.0))
	for _r11 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(4.0))), (y + (GM.f_random(4.0))), 65.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
