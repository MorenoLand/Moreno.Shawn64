extends "res://games/jetzrampage2/objects/o10.gd"
var v_poom1 = 0.0
var v_poom2 = 0.0
func ev_create():
	v_poom1 = x
	v_poom2 = y
	alarm[int(0.0)] = 20.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	v_poom2 = v_poom2 + ((-50.0) + (GM.f_random(150.0)))
	if ((((GM.f_random(2.0)) < 1.0))):
		v_poom1 = v_poom1 + (GM.f_random(50.0))
	else:
		v_poom1 = v_poom1 + (-(GM.f_random(50.0)))
	(GM.f_draw_set_color(65535.0))
	(GM.f_draw_line(v_poom1, v_poom2, x, y))
	x = v_poom1
	y = v_poom2
