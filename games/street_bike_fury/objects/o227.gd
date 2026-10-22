extends "res://games/street_bike_fury/scripts.gd"
func ev_col_0():
	(self.script_addmessage("HURRICANE MODE +5", 32768.0, 5.0))
	for _r96 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 93.0))
	(GM.f_sound_play(43.0))
	GM.health = GM.health + 5.0
	(GM.f_instance_create(x, y, 228.0))
	(GM.f_instance_destroy(self))
