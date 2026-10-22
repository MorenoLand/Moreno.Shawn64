extends "res://games/street_bike_fury/scripts.gd"
func ev_col_0():
	(self.script_addmessage("Bonus +5", 8388736.0, 3.0))
	(GM.f_sound_play(29.0))
	for _r63 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 93.0))
	(GM.f_instance_destroy(self))
