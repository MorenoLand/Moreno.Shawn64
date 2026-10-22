extends "res://games/ski_racer_2/scripts.gd"
var v_view_top = 0.0
func ev_create():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 28.0))
func ev_step():
	if (((absf(GM.room - 3.0) < 0.00001))):
		if ((GM.aget(v_view_top, 0.0) < GM.aget(v_view_top, 1.0))):
			if ((y < (GM.aget(v_view_top, 0.0) - sprite_height))):
				(GM.f_instance_destroy(self))
		if ((GM.aget(v_view_top, 1.0) < GM.aget(v_view_top, 0.0))):
			if ((y < (GM.aget(v_view_top, 1.0) - sprite_height))):
				(GM.f_instance_destroy(self))
	else:
		if (((y < (GM.view_yview[0] - sprite_height)))):
			(GM.f_instance_destroy(self))
