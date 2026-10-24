extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w513 in GM.with_list((49.0), self):
				if _w513._dead:
					continue
				_w513.other = self
				GM.vset(_w513, "v_mytext", "Tapeworm:  Hmmm, if you could just drop about ummm 3 people into my grinder in 30 seconds I could make a killa stew.  Just grab them when there hanging out of the building and push enter to drop them into the grinder.  Push Enter")
				_w513.alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				(GM.f_instance_create(0.0, 0.0, 425.0))
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 170.0))
				(GM.f_sound_play(44.0))
