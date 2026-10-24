extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if (((absf(GM.G["chainsaw"] - 1.0) < 0.00001))):
				for _w155 in GM.with_list((49.0), self):
					if _w155._dead:
						continue
					_w155.other = self
					GM.vset(_w155, "v_mytext", "CapnChubby:  Need blooood!  Use your chainsaw to fill up the blood meter in under 40 seconds for a nifty $100.  Push enter to start the fun!")
					_w155.alarm[int(0.0)] = 15.0
			else:
				for _w156 in GM.with_list((49.0), self):
					if _w156._dead:
						continue
					_w156.other = self
					GM.vset(_w156, "v_mytext", "Man you gotta be packing a chainsaw to do my mission... get outa here...")
					_w156.alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf(GM.G["chainsaw"] - 1.0) < 0.00001))):
			if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
				if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
					GM.vset(49.0, "v_mytext", "")
					(GM.f_instance_create(0.0, 0.0, 170.0))
					(GM.f_sound_play(44.0))
					(GM.f_instance_create(0.0, 0.0, 219.0))
