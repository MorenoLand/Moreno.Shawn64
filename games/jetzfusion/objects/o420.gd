extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w561 in GM.with_list((49.0), self):
				if _w561._dead:
					continue
				_w561.other = self
				GM.vset(_w561, "v_mytext", "Adam:  I need you to kill all the gangsta's i slep with man.  They are after me!  About 25 of them.  You will recognize them as darker skinned men with black clothes and tight asses.  Push Enter")
				_w561.alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				(GM.f_instance_create(0.0, 0.0, 429.0))
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 456.0))
				(GM.f_sound_play(44.0))
