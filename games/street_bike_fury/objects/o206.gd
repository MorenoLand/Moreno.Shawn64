extends "res://games/street_bike_fury/scripts.gd"
var v_bounced = 0.0
func ev_create():
	(GM.f_motion_add(self, (((GM.f_point_direction(x, y, GM.vb(0.0, "x"), GM.vb(0.0, "y"))) - 20.0) + (GM.f_random(40.0))), (11.0 + (GM.f_random(2.0)))))
	alarm[int(0.0)] = 60.0
	v_bounced = 0.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_0():
	if ((absf(GM.vget(self.other, "v_die") - 0.0) < 0.00001)):
		GM.vset(self.other, "v_damaged", (-1.0))
		GM.vb(self.other, "alarm")[int(10.0)] = 20.0
		(GM.f_instance_destroy(self))
		GM.health = GM.health - 2.0
		(GM.f_sound_play(15.0))
