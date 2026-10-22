extends "res://games/ski_racer_2/scripts.gd"
func ev_create():
	x = (GM.room_width / 2.0)
	GM.G["menumove"] = 1.0
	GM.G["mode"] = "1player"
	GM.G["p1go"] = 0.0
	GM.G["p2go"] = 0.0
func ev_keypress_40():
	if (((absf(GM.G["menumove"] - 1.0) < 0.00001))):
		if ((not (((GM.f_place_empty(self, (x + 0.0), (y + 80.0)))) >= 0.5))):
			(GM.f_sound_play(14.0))
			x = x + 0.0
			y = y + 80.0
func ev_keypress_38():
	if (((absf(GM.G["menumove"] - 1.0) < 0.00001))):
		if ((not (((GM.f_place_empty(self, (x + 0.0), (y + (-80.0))))) >= 0.5))):
			(GM.f_sound_play(14.0))
			x = x + 0.0
			y = y + (-80.0)
