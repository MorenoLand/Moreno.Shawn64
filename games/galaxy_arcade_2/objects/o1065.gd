extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	(GM.f_sound_play(297.0))
	for _r143 in range(int((50.0))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 1066.0))
	(GM.f_instance_destroy(self))
