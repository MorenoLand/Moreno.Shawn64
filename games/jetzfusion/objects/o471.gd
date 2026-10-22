extends "res://games/jetzfusion/objects/o342.gd"
func ev_create():
	v_poom1 = x
	v_poom2 = y
	alarm[int(0.0)] = ((GM.f_random(24.0)) + 1.0)
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	v_poom1 = v_poom1 + ((-GM.vb(464.0, "speed")) - (GM.f_random(30.0)))
	if ((((GM.f_random(2.0)) < 1.0))):
		v_poom2 = v_poom2 + (GM.f_random(13.0))
	else:
		v_poom2 = v_poom2 + (-(GM.f_random(13.0)))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_line(v_poom1, v_poom2, x, y))
	x = v_poom1
	y = v_poom2
