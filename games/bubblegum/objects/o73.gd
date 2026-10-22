extends "res://games/bubblegum/scripts.gd"
var v_boom = 0.0
var v_poop = 0.0
func ev_step():
	if (((absf(v_boom - 1.0) < 0.00001))):
		(GM.f_motion_add(self, direction, 0.3))
	if (((speed > 30.0))):
		v_boom = 0.0
		friction = 0.5
	if (((speed < 2.0))):
		v_poop = 0.0
		friction = 0.0
		speed = 2.0
		(GM.f_instance_change(self, 68.0, 0.0))
func ev_col_2():
	(GM.f_sound_play(4.0))
	(GM.f_instance_create(0.0, 0.0, 71.0))
	hspeed = (-hspeed)
