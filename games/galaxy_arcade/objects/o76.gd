extends "res://games/galaxy_arcade/scripts.gd"
func ev_key_52():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 69.0))
	alarm[int(0.0)] = 50.0
	(GM.f_instance_change(self, 87.0, 0.0))
