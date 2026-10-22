extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number((-100.0))) - 0.0) < 0.00001))):
			for _w333 in GM.with_list((49.0), self):
				if _w333._dead:
					continue
				_w333.other = self
				GM.vset(_w333, "v_mytext", "GRENADES - $100 for 10 - Push Enter")
				alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
		if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
			if (((GM.G["money"] > 99.0))):
				GM.G["grenades"] = GM.G["grenades"] + 10.0
				GM.G["money"] = GM.G["money"] - 100.0
				(GM.f_sound_play(48.0))
