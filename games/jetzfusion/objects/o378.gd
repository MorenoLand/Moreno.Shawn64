extends "res://games/jetzfusion/scripts.gd"
var v_wow = 0.0
func ev_create():
	(GM.f_sound_play(65.0))
	x = (GM.view_xview[0] + (GM.f_random(800.0)))
	y = 0.0
	v_wow = (GM.f_round((GM.f_random(1.0))))
	if ((absf(v_wow - 1.0) < 0.00001)):
		direction = 0.0
	if ((absf(v_wow - 2.0) < 0.00001)):
		direction = 180.0
	speed = (1.0 + (GM.f_random(10.0)))
	gravity_direction = 270.0
	gravity = 0.1
func ev_step():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 379.0))
	if (((y > 390.0))):
		(GM.f_instance_destroy(self))
