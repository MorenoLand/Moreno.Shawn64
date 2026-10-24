extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w434 in GM.with_list((49.0), self):
				if _w434._dead:
					continue
				_w434.other = self
				GM.vset(_w434, "v_mytext", "Dex CG:  Yeah now lets test your skills at hitting moving targets.  10 targets again but this time for $200.  Push Enter")
				_w434.alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 183.0))
				(GM.f_sound_play(44.0))
				for _r435 in range(int((10.0))):
					(GM.f_instance_create(0.0, 0.0, 315.0))
