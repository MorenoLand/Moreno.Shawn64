extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w441 in GM.with_list((49.0), self):
				if _w441._dead:
					continue
				_w441.other = self
				GM.vset(_w441, "v_mytext", "Shawn64:  Oh damn.  The nerd squad is back jacking off around the city.  Kill Dex CG, Mocha Man, and CapnChubby and I will pay you $100.  Push Enter")
				alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				(GM.f_sound_play(60.0))
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 190.0))
				(GM.f_sound_play(44.0))
				for _r442 in range(int((3.0))):
					(GM.f_instance_create(((x - 50.0) + (GM.f_random(100.0))), (-60.0), 323.0))
