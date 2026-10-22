extends "res://games/ski_racer_2/scripts.gd"
func ev_step():
	if (((absf(GM.G["p1go"] - 1.0) < 0.00001))):
		if (((absf(GM.G["p2go"] - 1.0) < 0.00001))):
			(GM.f_sound_stop(13.0))
			(GM.f_sound_loop(16.0))
			(GM.f_room_goto(3.0))
