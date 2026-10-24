extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w562 in GM.with_list((49.0), self):
				if _w562._dead:
					continue
				_w562.other = self
				GM.vset(_w562, "v_mytext", "Adam:  I hate to see those fine men's asses go to waste.  Oh well...  I still have about 50 more men I have slep with still chasing after me for there money.  That's right... I pay men to sleep with me.  Kill them too please!")
				_w562.alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				(GM.f_instance_create(0.0, 0.0, 431.0))
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 456.0))
				(GM.f_sound_play(44.0))
