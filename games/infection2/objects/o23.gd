extends "res://games/infection2/scripts.gd"
var v_woot = 0.0
func ev_create():
	direction = (((GM.f_point_direction(x, y, GM.mouse_x, (GM.mouse_y + 35.0))) - 10.0) + (GM.f_random(20.0)))
	alarm[int(0.0)] = 25.0
	speed = (20.0 + (GM.f_random(5.0)))
	hspeed = hspeed + GM.vb(0.0, "hspeed")
	vspeed = vspeed + GM.vb(0.0, "vspeed")
	v_woot = (GM.f_instance_create(x, y, 27.0))
	GM.vsetb(v_woot, "direction", ((direction - 5.0) + (GM.f_random(10.0))))
	GM.vsetb(v_woot, "speed", (GM.f_random(5.0)))
	GM.vsetb(v_woot, "hspeed", GM.vb(v_woot, "hspeed") + (GM.vb(0.0, "hspeed") / 5.0))
	GM.vsetb(v_woot, "vspeed", GM.vb(v_woot, "vspeed") + (GM.vb(0.0, "vspeed") / 5.0))
	GM.vsetb(0.0, "hspeed", GM.vb(0.0, "hspeed") + ((-hspeed) / 50.0))
	GM.vsetb(0.0, "vspeed", GM.vb(0.0, "vspeed") + ((-vspeed) / 50.0))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	(GM.f_instance_create(x, y, 31.0))
func ev_col_40():
	(GM.f_instance_destroy(self))
func ev_col_1():
	(GM.f_instance_create((x + (GM.f_lengthdir_x((20.0 + (GM.f_random(5.0))), direction))), (y + (GM.f_lengthdir_y((20.0 + (GM.f_random(5.0))), direction))), 32.0))
	(GM.f_sound_play(13.0))
	(GM.f_instance_destroy(self))
