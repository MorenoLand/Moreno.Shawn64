extends "res://games/street_bike_fury/scripts.gd"
var v_randoom = 0.0
func ev_create():
	alarm[int(0.0)] = 325.0
	GM.vset(0.0, "v_flipspeed", 14.0)
	(GM.f_sound_play(30.0))
func ev_destroy():
	GM.vset(0.0, "v_flipspeed", 6.0)
	GM.view_angle[int(0.0)] = 0.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	GM.vsetb(0.0, "speed", GM.vb(0.0, "speed") + 0.1)
	for _w97 in GM.with_list((0.0), self):
		if _w97._dead:
			continue
		_w97.other = self
		GM.vset(_w97, "v_woot", (GM.f_instance_create(((_w97.x - 20.0) + (GM.f_random(40.0))), ((_w97.y - 20.0) + (GM.f_random(40.0))), 229.0)))
		GM.vsetb(GM.vget(_w97, "v_woot"), "hspeed", GM.vb(GM.vget(_w97, "v_woot"), "hspeed") + (_w97.hspeed / 1.2))
		GM.vsetb(GM.vget(_w97, "v_woot"), "vspeed", GM.vb(GM.vget(_w97, "v_woot"), "vspeed") + (_w97.vspeed / 1.2))
		GM.vsetb(GM.vget(_w97, "v_woot"), "depth", (_w97.depth - 1.0))
	if ((absf((GM.f_instance_number(140.0)) - 0.0) < 0.00001)):
		(GM.f_instance_create(x, y, 140.0))
	x = GM.vb(0.0, "x")
	v_randoom = (GM.f_floor((GM.f_random(15.0))))
	if ((absf(v_randoom - 0.0) < 0.00001)):
		(GM.f_instance_create(x, y, 219.0))
