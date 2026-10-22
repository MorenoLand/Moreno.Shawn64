extends "res://games/missilewave3d/scripts.gd"
var v_image_single = 0.0
func ev_create():
	for _r34 in range(int((10.0))):
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 103.0))
	(GM.f_sound_play(5.0))
	GM.health = GM.health + (-5.0)
	v_image_single = (GM.f_random(3.0))
	alarm[int(0.0)] = 10.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
