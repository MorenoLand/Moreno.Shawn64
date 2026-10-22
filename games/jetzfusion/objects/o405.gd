extends "res://games/jetzfusion/objects/o53.gd"
func ev_create():
	(GM.f_sound_play(21.0))
	if ((GM.vb(7.0, "hspeed") > 0.0)):
		direction = ((-10.0) + (GM.f_random(20.0)))
	else:
		direction = (170.0 + (GM.f_random(20.0)))
	speed = (14.0 + (GM.f_random(2.0)))
	(GM.f_motion_add(self, GM.vb(7.0, "direction"), GM.vb(7.0, "speed")))
	alarm[int(0.0)] = 25.0
	for _r663 in range(int((5.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 1.0)))), (y + (GM.f_random((sprite_height - 2.0)))), 20.0))
