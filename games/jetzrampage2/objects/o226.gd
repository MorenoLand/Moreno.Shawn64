extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	(self.script_lives_add(0.0, 0.0, 0.0, 0.0, 0.0))
	if ((((GM.f_random(3.0)) < 1.0))):
		(GM.f_instance_create((x + 41.0), (y + (-1000.0)), 108.0))
	alarm[int(0.0)] = (100.0 + (GM.f_random(200.0)))
func ev_alarm_0():
	if ((((GM.f_random(3.0)) < 1.0))):
		(GM.f_instance_create((x + 0.0), (y + 40.0), 108.0))
	(GM.f_instance_destroy(self))
func ev_col_108():
	(GM.f_instance_destroy(self))
