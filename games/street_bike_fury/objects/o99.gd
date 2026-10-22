extends "res://games/street_bike_fury/scripts.gd"
var v_randoom = 0.0
func ev_create():
	(GM.f_sound_loop(32.0))
	alarm[int(0.0)] = 325.0
	GM.vset(0.0, "v_firemode", 1.0)
	(GM.f_sound_play(30.0))
	GM.vset(0.0, "v_maxspeed", (43.0 * GM.G["gspeed"]))
func ev_destroy():
	(GM.f_sound_stop(32.0))
	GM.vset(0.0, "v_firemode", 0.0)
	GM.vset(0.0, "v_maxspeed", (30.0 * GM.G["gspeed"]))
	GM.view_angle[int(0.0)] = 0.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	GM.vsetb(0.0, "speed", GM.vb(0.0, "speed") + 0.1)
	for _w65 in GM.with_list((0.0), self):
		if _w65._dead:
			continue
		_w65.other = self
		GM.vset(_w65, "v_woot", (GM.f_instance_create(((_w65.x - 20.0) + (GM.f_random(40.0))), ((_w65.y - 20.0) + (GM.f_random(40.0))), 97.0)))
		GM.vsetb(GM.vget(_w65, "v_woot"), "hspeed", GM.vb(GM.vget(_w65, "v_woot"), "hspeed") + (_w65.hspeed / 1.5))
		GM.vsetb(GM.vget(_w65, "v_woot"), "vspeed", GM.vb(GM.vget(_w65, "v_woot"), "vspeed") + (_w65.vspeed / 1.5))
		GM.vsetb(GM.vget(_w65, "v_woot"), "depth", (_w65.depth - 1.0))
	if ((absf((GM.f_instance_number(140.0)) - 0.0) < 0.00001)):
		(GM.f_instance_create(x, y, 140.0))
	x = GM.vb(0.0, "x")
	v_randoom = (GM.f_floor((GM.f_random(15.0))))
	if ((absf(v_randoom - 0.0) < 0.00001)):
		(GM.f_instance_create(x, y, 218.0))
