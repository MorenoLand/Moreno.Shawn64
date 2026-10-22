extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w443 in GM.with_list((49.0), self):
				if _w443._dead:
					continue
				_w443.other = self
				GM.vset(_w443, "v_mytext", "Shawn64:  You know whats worse than a group of noobs?  A group of moderators.  Kill Muzein, Chronic, and Xception for a large sum of $400.  Push Enter")
				alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				(GM.f_sound_play(60.0))
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 190.0))
				(GM.f_sound_play(44.0))
				(GM.f_instance_create(2600.0, 40.0, 324.0))
				(GM.f_instance_create(2600.0, 200.0, 324.0))
				(GM.f_instance_create(2600.0, 360.0, 324.0))
