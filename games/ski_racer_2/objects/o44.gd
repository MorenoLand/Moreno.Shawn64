extends "res://games/ski_racer_2/objects/o42.gd"
func ev_keypress_13():
	if ((((GM.f_place_meeting(self, x, y, 46.0))))) >= 0.5:
		(GM.f_sound_play(12.0))
