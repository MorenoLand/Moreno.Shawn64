extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w539 in GM.with_list((49.0), self):
				if _w539._dead:
					continue
				_w539.other = self
				GM.vset(_w539, "v_mytext", "Degman:  You just got lucky last time punk.  Now I'll show you my real skilz.  Push Enter")
				alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				GM.vset(49.0, "v_mytext", "")
				visible = 0.0
				(GM.f_instance_create(0.0, 0.0, 190.0))
				(GM.f_sound_play(44.0))
				(GM.f_instance_create(x, 0.0, 398.0))
