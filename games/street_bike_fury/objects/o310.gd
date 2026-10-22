extends "res://games/street_bike_fury/scripts.gd"
var v_this = 0.0
func ev_create():
	(GM.f_motion_add(self, (GM.f_point_direction(x, y, GM.vb(0.0, "x"), GM.vb(0.0, "y"))), 25.0))
	(GM.f_sound_play(96.0))
	(GM.f_instance_create(x, y, 308.0))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	v_this = (GM.f_instance_create(x, y, 309.0))
	GM.vsetb(v_this, "hspeed", GM.vb(v_this, "hspeed") + (hspeed / 2.0))
	GM.vsetb(v_this, "vspeed", GM.vb(v_this, "vspeed") + (vspeed / 2.0))
	alarm[int(0.0)] = 120.0
func ev_col_0():
	if (((absf(GM.vb(self.other, "depth") - (-18.0)) < 0.00001) and (GM.vb(self.other, "vspeed") > (-25.0)))):
		for _w138 in GM.with_list((self.other), self):
			if _w138._dead:
				continue
			_w138.other = self
			_w138.y = _w138.y - 30.0
			(GM.f_motion_add(_w138, (20.0 + (GM.f_random(70.0))), (10.0 + (GM.f_random(5.0)))))
			GM.vset(_w138, "v_rate", ((-15.0) + (GM.f_random(30.0))))
		(GM.f_instance_create(x, y, 138.0))
		(GM.f_sound_play(52.0))
		(GM.f_instance_create(x, y, 308.0))
		(GM.f_instance_destroy(self))
