extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w268 in GM.with_list((49.0), self):
				if _w268._dead:
					continue
				_w268.other = self
				GM.vset(_w268, "v_mytext", "Skiracer:  Well it appears you have defeated those two D.R. Incorporated guys.  They sucked anyway.  Now are you ready for my challenge?  Collect 25 Tokens in 30 seconds.  PUSH ENTER")
				_w268.alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				(GM.f_instance_create(0.0, 0.0, 203.0))
				(GM.f_sound_loop(52.0))
				for _r269 in range(int((50.0))):
					(GM.f_instance_create(0.0, 0.0, 202.0))
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 170.0))
				(GM.f_sound_play(44.0))
				for _w270 in GM.with_list((7.0), self):
					if _w270._dead:
						continue
					_w270.other = self
					GM.vset(_w270, "v_malfo", 1.0)
