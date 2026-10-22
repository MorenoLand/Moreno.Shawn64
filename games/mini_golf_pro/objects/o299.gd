extends "res://games/mini_golf_pro/scripts.gd"
var v_light2 = 0.0
func ev_create():
	v_light2 = 0.0
	image_index = 0.0
	image_speed = 0.0
func ev_alarm_0():
	v_light2 = 0.0
	image_index = 0.0
func ev_col_0():
	image_index = 1.0
	alarm[int(0.0)] = 2.0
