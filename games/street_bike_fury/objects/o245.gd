extends "res://games/street_bike_fury/scripts.gd"
var v_parrent = 0.0
var v_set = 0.0
func ev_create():
	alarm[int(0.0)] = 20.0
func ev_alarm_1():
	(GM.f_instance_destroy(self))
func ev_alarm_0():
	for _w105 in GM.with_list((v_parrent), self):
		if _w105._dead:
			continue
		_w105.other = self
		_w105.ev_user(3.0)
	alarm[int(1.0)] = 40.0
func ev_step():
	if (((GM.f_instance_exists(v_parrent)))) >= 0.5:
		x = GM.vb(v_parrent, "x")
		y = GM.vb(v_parrent, "y")
		v_set = (GM.f_instance_create(x, y, 97.0))
		GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + GM.vb(v_parrent, "hspeed"))
		GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + GM.vb(v_parrent, "vspeed"))
		for _w106 in GM.with_list((v_set), self):
			if _w106._dead:
				continue
			_w106.other = self
			(GM.f_motion_add(_w106, (45.0 + (GM.f_random(90.0))), (GM.f_random(10.0))))
