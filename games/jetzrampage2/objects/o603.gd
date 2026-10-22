extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	gravity_direction = 270.0
	gravity = 0.2
	(GM.f_motion_set(self, (70.0 + (GM.f_random(40.0))), (15.0 + (GM.f_random(5.0)))))
	alarm[int(0.0)] = 25.0
func ev_alarm_0():
	if (((x > GM.view_xview[0]))):
		if (((x < (GM.view_xview[0] + 800.0)))):
			(GM.f_sound_play(198.0))
			for _r320 in range(int((100.0))):
				(GM.f_instance_create((x + 0.0), (y + 0.0), 604.0))
	(GM.f_instance_destroy(self))
