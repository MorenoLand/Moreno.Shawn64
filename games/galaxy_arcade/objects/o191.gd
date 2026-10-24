extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	if ((((GM.f_random(2.0)) < 1.0))):
		(GM.f_instance_change(self, 192.0, 0.0))
	else:
		(GM.f_instance_change(self, 196.0, 0.0))
