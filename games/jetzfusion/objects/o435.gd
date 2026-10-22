extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	(GM.f_sound_loop(38.0))
func ev_step():
	if ((((GM.f_random(13.0)) < 1.0))):
		(GM.f_instance_create((GM.view_xview[0] + (GM.f_random(800.0))), (-40.0), 436.0))
