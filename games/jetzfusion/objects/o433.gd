extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w579 in GM.with_list((49.0), self):
				if _w579._dead:
					continue
				_w579.other = self
				GM.vset(_w579, "v_mytext", "HIM:  I becha can't dodge a air raid for 20 seconds!  YEAH!  If you can I will pay you $300 so you gotta try it!  Push Enter")
				_w579.alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				(GM.f_instance_create(0.0, 0.0, 435.0))
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 439.0))
				(GM.f_sound_play(44.0))
