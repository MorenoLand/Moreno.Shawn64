extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	(GM.f_sound_play(298.0))
	gravity_direction = 270.0
	gravity = 0.3
	(GM.f_motion_set(self, (80.0 + (GM.f_random(20.0))), ((GM.f_random(10.0)) + 10.0)))
	alarm[int(0.0)] = 60.0
func ev_alarm_0():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 1065.0))
	(GM.f_instance_destroy(self))
