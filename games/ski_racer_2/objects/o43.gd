extends "res://games/ski_racer_2/objects/o42.gd"
func ev_keypress_13():
	if (((absf(GM.G["menumove"] - 1.0) < 0.00001))):
		if ((((GM.f_place_meeting(self, x, y, 46.0))))) >= 0.5:
			GM.G["menumove"] = 0.0
			GM.G["mode"] = "2player"
			(GM.f_sound_play(12.0))
			(GM.f_instance_create(0.0, 0.0, 71.0))
			for _w26 in GM.with_list((11.0), self):
				if _w26._dead:
					continue
				_w26.other = self
				(GM.f_instance_create((_w26.x + 0.0), (_w26.y + 0.0), 70.0))
			for _w27 in GM.with_list((11.0), self):
				if _w27._dead:
					continue
				_w27.other = self
				(GM.f_instance_create((_w27.x + 0.0), (_w27.y + 0.0), 12.0))
