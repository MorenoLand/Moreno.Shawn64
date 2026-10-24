extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	if ((32.0 > 0.0)):
		x = ((GM.f_round((x / 32.0))) * 32.0)
	if ((32.0 > 0.0)):
		y = ((GM.f_round((y / 32.0))) * 32.0)
func ev_other_7():
	(GM.f_instance_destroy(self))
