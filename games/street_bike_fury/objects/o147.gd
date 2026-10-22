extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	if ((absf(GM.room - 2.0) < 0.00001)):
		(GM.f_sound_loop(79.0))
func ev_destroy():
	(GM.f_sound_stop(79.0))
func ev_step():
	if ((absf(GM.room - 2.0) < 0.00001)):
		(GM.f_sound_volume(79.0, (1.0 - (((GM.f_distance_to_point(self, GM.vb(0.0, "x"), GM.vb(0.0, "y"))) / 2500.0)))))
		(GM.f_sound_pan(79.0, (0.0 - ((((((GM.view_xview[0] + ((GM.view_wview[0] / 2.0)))) - ((x + 200.0)))) / 2500.0)))))
		if ((x < (GM.view_xview[0] - 600.0))):
			(GM.f_instance_destroy(self))
