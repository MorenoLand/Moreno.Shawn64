extends "res://games/ski_racer_2/scripts.gd"
func ev_keypress_83():
	if (not ((((GM.f_place_meeting(self, x, y, 78.0)))) >= 0.5)):
		(GM.f_sound_play(12.0))
		if ((((GM.f_place_meeting(self, x, y, 10.0))))) >= 0.5:
			GM.G["p2"] = "dex"
		if ((((GM.f_place_meeting(self, x, y, 11.0))))) >= 0.5:
			GM.G["p2"] = "s64"
		if ((((GM.f_place_meeting(self, x, y, 15.0))))) >= 0.5:
			GM.G["p2"] = "snow"
		if ((((GM.f_place_meeting(self, x, y, 35.0))))) >= 0.5:
			GM.G["p2"] = "elf"
		if ((((GM.f_place_meeting(self, x, y, 36.0))))) >= 0.5:
			GM.G["p2"] = "blink"
		GM.G["p2go"] = 1.0
		(GM.f_instance_destroy(self))
func ev_keypress_68():
	if (not ((((GM.f_place_empty(self, (x + 80.0), (y + 0.0))))) >= 0.5)):
		(GM.f_sound_play(15.0))
		x = x + 80.0
		y = y + 0.0
func ev_keypress_65():
	if (not ((((GM.f_place_empty(self, (x + (-80.0)), (y + 0.0))))) >= 0.5)):
		(GM.f_sound_play(15.0))
		x = x + (-80.0)
		y = y + 0.0
