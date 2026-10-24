extends "res://games/ski_racer_2/scripts.gd"
func ev_create():
	x = ((GM.room_width / 2.0) - (sprite_width / 2.0))
func ev_step():
	if (((GM.f_place_meeting(self, x, y, 46.0)))) >= 0.5:
		image_single = 1.0
	else:
		image_single = 0.0
func ev_keypress_13():
	if (((absf(GM.G["menumove"] - 1.0) < 0.00001))):
		if ((((GM.f_place_meeting(self, x, y, 46.0))))) >= 0.5:
			GM.G["menumove"] = 0.0
			GM.G["mode"] = "1player"
			(GM.f_sound_play(12.0))
			(GM.f_instance_create(0.0, 0.0, 56.0))
			for _w9 in GM.with_list((11.0), self):
				if _w9._dead:
					continue
				_w9.other = self
				(GM.f_instance_create((_w9.x + 0.0), (_w9.y + 0.0), 12.0))
