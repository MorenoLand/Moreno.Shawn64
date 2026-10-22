extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 90.0
	alarm[int(1.0)] = 10.0
func ev_alarm_1():
	if (((GM.f_instance_number(249.0)) > 0.0)):
		for _w53 in GM.with_list((249.0), self):
			if _w53._dead:
				continue
			_w53.other = self
			_w53.ev_user(0.0)
		alarm[int(1.0)] = 10.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	if (((GM.f_instance_number(249.0)) > 0.0)):
		GM.vsetb(249.0, "speed", GM.vb(249.0, "speed") + 0.1)
		for _w54 in GM.with_list((249.0), self):
			if _w54._dead:
				continue
			_w54.other = self
			GM.vset(_w54, "v_woot", (GM.f_instance_create(_w54.x, _w54.y, 211.0)))
			GM.vsetb(GM.vget(_w54, "v_woot"), "speed", (_w54.speed - (GM.f_random(15.0))))
			GM.vsetb(GM.vget(_w54, "v_woot"), "direction", _w54.direction)
