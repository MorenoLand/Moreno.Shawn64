extends "res://games/jetzrampage2/objects/o101.gd"
var v_guyright = 0.0
func ev_create():
	(GM.f_sound_play(163.0))
	if (((absf(v_guyright - 1.0) < 0.00001))):
		(GM.f_action_move(self, "000001000", 20.0, 0.0))
		gravity_direction = 0.0
		gravity = 1.0
	else:
		(GM.f_action_move(self, "000100000", 20.0, 0.0))
		gravity_direction = 180.0
		gravity = 1.0
func ev_step():
	(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
