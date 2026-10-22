extends "res://games/jetzfusion/scripts.gd"
var v_cenx = 0.0
var v_ceny = 0.0
var v_left = 0.0
func ev_create():
	v_cenx = xstart
	v_ceny = ystart
	v_left = 200.0
	(GM.f_sound_play(23.0))
	alarm[int(0.0)] = 50.0
func ev_alarm_0():
	(GM.f_instance_create(0.0, 0.0, 467.0))
func ev_step():
	if (absf(v_left - 0.0) < 0.00001):
		return
	x = ((v_cenx - (((GM.f_random(v_left)) + ((v_left / 2.0))))) + 200.0)
	y = ((v_ceny - (((GM.f_random(v_left)) + ((v_left / 2.0))))) + 200.0)
	v_left = v_left - 4.0
	if (GM.vget(7.0, "v_fade") < 0.4):
		v_left = 0.0
		x = xstart
		y = ystart
