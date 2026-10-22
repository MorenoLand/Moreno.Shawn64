extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 300.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	for _w126 in GM.with_list((0.0), self):
		if _w126._dead:
			continue
		_w126.other = self
		GM.vset(_w126, "v_woot", (GM.f_instance_create(((_w126.x - 20.0) + (GM.f_random(40.0))), ((_w126.y - 20.0) + (GM.f_random(40.0))), 272.0)))
		GM.vsetb(GM.vget(_w126, "v_woot"), "hspeed", GM.vb(GM.vget(_w126, "v_woot"), "hspeed") + (_w126.hspeed / 1.2))
		GM.vsetb(GM.vget(_w126, "v_woot"), "vspeed", GM.vb(GM.vget(_w126, "v_woot"), "vspeed") + (_w126.vspeed / 1.2))
		GM.vsetb(GM.vget(_w126, "v_woot"), "depth", (_w126.depth - 1.0))
