extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w466 in GM.with_list((49.0), self):
				if _w466._dead:
					continue
				_w466.other = self
				GM.vset(_w466, "v_mytext", "Alf Fly:  Good job.  Now if you can collect 10 skulls in 30 seconds I will give you $400!  Push Enter")
				_w466.alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 170.0))
				(GM.f_sound_play(44.0))
				(GM.f_instance_create(0.0, 0.0, 329.0))
