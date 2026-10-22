extends "res://games/missilewave3d/scripts.gd"
var v_image_single = 0.0
func ev_create():
	GM.health = GM.health + (-1.0)
	v_image_single = (GM.f_random(4.0))
	alarm[int(0.0)] = 50.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
