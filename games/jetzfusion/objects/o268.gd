extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w354 in GM.with_list((49.0), self):
				if _w354._dead:
					continue
				_w354.other = self
				GM.vset(_w354, "v_mytext", "MuZzLe:  Want to do a motor cycle challenge?  Collect all the tires within my record of 30 seconds for $100.  Up Accelerates, Right and Left adjust levels in the air, and control does a wheelie.  Push Enter!")
				alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				(GM.f_instance_create(3440.0, 240.0, 270.0))
				(GM.f_instance_create(2880.0, 0.0, 270.0))
				(GM.f_instance_create(2760.0, 240.0, 270.0))
				(GM.f_instance_create(2480.0, 400.0, 270.0))
				(GM.f_instance_create(1960.0, 400.0, 270.0))
				(GM.f_instance_create(2360.0, 80.0, 270.0))
				for _w355 in GM.with_list((10.0), self):
					if _w355._dead:
						continue
					_w355.other = self
					(GM.f_instance_destroy(_w355))
				GM.vset(49.0, "v_mytext", "")
				GM.vsetb(271.0, "visible", 0.0)
				(GM.f_instance_create(0.0, 0.0, 170.0))
				(GM.f_sound_play(44.0))
				for _w356 in GM.with_list((271.0), self):
					if _w356._dead:
						continue
					_w356.other = self
					(GM.f_instance_create((_w356.x + 0.0), (_w356.y + 0.0), 265.0))
				(GM.f_sound_stop(25.0))
				(GM.f_sound_stop(26.0))
				GM.vset(7.0, "v_start", 0.0)
				GM.vsetb(7.0, "visible", 0.0)
