extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w586 in GM.with_list((49.0), self):
				if _w586._dead:
					continue
				_w586.other = self
				GM.vset(_w586, "v_mytext", "HIM:  Yeah... Yeah... Now lets see if you can dodge a air raid for 20 seconds with a messed up jetpack!  NOWAY YOU CAN BEAT THIS.  But if you do you can have $400.  Push Enter")
				alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				(GM.f_instance_create(0.0, 0.0, 438.0))
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 439.0))
				(GM.f_sound_play(44.0))
