extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_what = 0.0
func ev_create():
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(GM.room_height))
	gravity = 0.3
	gravity_direction = 270.0
	v_what = 1.0
	alarm[int(4.0)] = 15.0
func ev_alarm_4():
	v_what = 0.0
func ev_col_962():
	vspeed = 0.0
	if ((absf(v_what - 1.0) < 0.00001)):
		x = (GM.f_random(GM.room_width))
		y = (GM.f_random(GM.room_height))
func ev_other_0():
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(GM.room_height))
