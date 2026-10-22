extends "res://games/jetzrampage2/objects/o10.gd"
func ev_create():
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 25.0), ((y + (sprite_height / 2.0)) - 25.0), 510.0))
	alarm[int(0.0)] = 20.0
	if (((hspeed > 0.0))):
		(GM.f_motion_set(self, ((-10.0) + (GM.f_random(20.0))), ((GM.vb(0.0, "hspeed") + 10.0) + (GM.f_random(5.0)))))
		(GM.f_motion_add(self, GM.vb(0.0, "direction"), GM.vb(0.0, "speed")))
		for _r380 in range(int((10.0))):
			(GM.f_instance_create((x + 1.0), (y + 1.0), 11.0))
	else:
		(GM.f_motion_set(self, (170.0 + (GM.f_random(20.0))), (((-GM.vb(0.0, "hspeed")) + 10.0) + (GM.f_random(5.0)))))
		(GM.f_motion_add(self, GM.vb(0.0, "direction"), GM.vb(0.0, "speed")))
		for _r381 in range(int((10.0))):
			(GM.f_instance_create((x + 1.0), (y + 1.0), 14.0))
