extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	image_single = 0.0
	(GM.f_action_move(self, "010000000", (3.0 + (GM.f_random(3.0))), 0.0))
func ev_col_17():
	vspeed = 0.0
func ev_col_7():
	if (((absf((GM.f_instance_number(179.0)) - 0.0) < 0.00001))):
		(GM.f_sound_play(19.0))
		(GM.f_instance_create(0.0, 0.0, 179.0))
		(GM.f_instance_destroy(self))
