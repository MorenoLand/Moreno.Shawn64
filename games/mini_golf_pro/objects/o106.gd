extends "res://games/mini_golf_pro/scripts.gd"
var v_wee = 0.0
var v_wow = 0.0
var v_wow2 = 0.0
func ev_create():
	if (((GM.f_instance_number(106.0)) > 100.0)):
		(GM.f_instance_destroy(self))
	v_wee = 1.0
	direction = (GM.f_random(360.0))
	speed = (4.0 + (GM.f_random(10.0)))
	alarm[int(0.0)] = (1.0 + (GM.f_random(100.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	v_wee = v_wee - 0.03
	if ((v_wee < 0.0)):
		(GM.f_instance_destroy(self))
	v_wow = (GM.f_floor((GM.f_random(1.99999))))
	v_wow2 = (GM.f_floor((GM.f_random(3.99999))))
	if ((absf(v_wow - 0.0) < 0.00001)):
		direction = direction + 5.0
	else:
		direction = direction - 5.0
	if ((absf(v_wow2 - 0.0) < 0.00001)):
		(GM.f_instance_create(x, y, 107.0))
func ev_draw():
	(GM.f_draw_sprite_ext(77.0, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, v_wee))
