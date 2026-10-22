extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 90.0
	alarm[int(1.0)] = 10.0
func ev_alarm_1():
	if (((GM.f_instance_number(248.0)) > 0.0)):
		for _w51 in GM.with_list((248.0), self):
			if _w51._dead:
				continue
			_w51.other = self
			_w51.ev_user(0.0)
		alarm[int(1.0)] = 10.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	if (((GM.f_instance_number(248.0)) > 0.0)):
		GM.vsetb(248.0, "speed", GM.vb(248.0, "speed") + 0.1)
		for _w52 in GM.with_list((248.0), self):
			if _w52._dead:
				continue
			_w52.other = self
			GM.vset(_w52, "v_woot", (GM.f_instance_create(_w52.x, _w52.y, 211.0)))
			GM.vsetb(GM.vget(_w52, "v_woot"), "speed", (_w52.speed - (GM.f_random(15.0))))
			GM.vsetb(GM.vget(_w52, "v_woot"), "direction", _w52.direction)
