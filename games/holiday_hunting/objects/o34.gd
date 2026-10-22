extends "res://games/holiday_hunting/scripts.gd"
var v_wee2 = 0.0
func ev_create():
	v_wee2 = y
	gravity_direction = 270.0
	gravity = 0.5
func ev_step():
	if ((y > v_wee2)):
		(GM.f_instance_destroy(self))
