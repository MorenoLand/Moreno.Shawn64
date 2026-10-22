extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 90.0
	alarm[int(1.0)] = 10.0
func ev_alarm_1():
	if (((GM.f_instance_number(243.0)) > 0.0)):
		for _w32 in GM.with_list((243.0), self):
			if _w32._dead:
				continue
			_w32.other = self
			_w32.ev_user(0.0)
		alarm[int(1.0)] = 10.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	if (((GM.f_instance_number(243.0)) > 0.0)):
		GM.vsetb(243.0, "speed", GM.vb(243.0, "speed") + 0.1)
		for _w33 in GM.with_list((243.0), self):
			if _w33._dead:
				continue
			_w33.other = self
			GM.vset(_w33, "v_woot", (GM.f_instance_create(_w33.x, _w33.y, 211.0)))
			GM.vsetb(GM.vget(_w33, "v_woot"), "speed", (_w33.speed - (GM.f_random(15.0))))
			GM.vsetb(GM.vget(_w33, "v_woot"), "direction", _w33.direction)
