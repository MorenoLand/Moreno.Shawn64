extends "res://games/jetzfusion/objects/o445.gd"
func ev_create():
	(GM.f_sound_play(21.0))
	if ((GM.vb(448.0, "hspeed") > 0.0)):
		direction = ((-10.0) + (GM.f_random(20.0)))
	else:
		direction = (170.0 + (GM.f_random(20.0)))
	speed = (14.0 + (GM.f_random(2.0)))
	(GM.f_motion_add(self, GM.vb(448.0, "direction"), GM.vb(448.0, "speed")))
	alarm[int(0.0)] = 25.0
func ev_col_407():
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	self.ev_user(0.0)
