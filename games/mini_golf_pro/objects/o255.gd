extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 90.0
	alarm[int(1.0)] = 10.0
func ev_alarm_1():
	if (((GM.f_instance_number(251.0)) > 0.0)):
		for _w57 in GM.with_list((251.0), self):
			if _w57._dead:
				continue
			_w57.other = self
			_w57.ev_user(0.0)
		alarm[int(1.0)] = 10.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	if (((GM.f_instance_number(251.0)) > 0.0)):
		GM.vsetb(251.0, "speed", GM.vb(251.0, "speed") + 0.1)
		for _w58 in GM.with_list((251.0), self):
			if _w58._dead:
				continue
			_w58.other = self
			GM.vset(_w58, "v_woot", (GM.f_instance_create(_w58.x, _w58.y, 211.0)))
			GM.vsetb(GM.vget(_w58, "v_woot"), "speed", (_w58.speed - (GM.f_random(15.0))))
			GM.vsetb(GM.vget(_w58, "v_woot"), "direction", _w58.direction)
