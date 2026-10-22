extends "res://games/jetzrampage/scripts.gd"
func ev_step():
	if (not ((((GM.f_place_meeting(self, (x + 0.0), (y + 0.0), 75.0)))) >= 0.5)):
		(GM.f_instance_destroy(self))
