extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 90.0
	alarm[int(1.0)] = 10.0
func ev_alarm_1():
	if (((GM.f_instance_number(250.0)) > 0.0)):
		for _w55 in GM.with_list((250.0), self):
			if _w55._dead:
				continue
			_w55.other = self
			_w55.ev_user(0.0)
		alarm[int(1.0)] = 10.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	if (((GM.f_instance_number(250.0)) > 0.0)):
		GM.vsetb(250.0, "speed", GM.vb(250.0, "speed") + 0.1)
		for _w56 in GM.with_list((250.0), self):
			if _w56._dead:
				continue
			_w56.other = self
			GM.vset(_w56, "v_woot", (GM.f_instance_create(_w56.x, _w56.y, 211.0)))
			GM.vsetb(GM.vget(_w56, "v_woot"), "speed", (_w56.speed - (GM.f_random(15.0))))
			GM.vsetb(GM.vget(_w56, "v_woot"), "direction", _w56.direction)
