extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w278 in GM.with_list((49.0), self):
				if _w278._dead:
					continue
				_w278.other = self
				GM.vset(_w278, "v_mytext", "Skiracer:  You think your hot stuff getting 25 of them?  Lets kick your speed up a notch and see how good your really are.  PUSH ENTER")
				alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				(GM.f_instance_create(0.0, 0.0, 205.0))
				(GM.f_sound_loop(52.0))
				for _r279 in range(int((50.0))):
					(GM.f_instance_create(0.0, 0.0, 206.0))
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 170.0))
				(GM.f_sound_play(44.0))
				for _w280 in GM.with_list((7.0), self):
					if _w280._dead:
						continue
					_w280.other = self
					GM.vset(_w280, "v_malfo", 1.0)
