extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w373 in GM.with_list((49.0), self):
				if _w373._dead:
					continue
				_w373.other = self
				GM.vset(_w373, "v_mytext", "MuZzLe:  COOL!  You beat it!  Lets see how you do on this next run with more tires to collect.  My record is 30 seconds again on this one.  Beat it for $200!  Push Enter")
				alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				(GM.f_instance_create(2240.0, 280.0, 274.0))
				(GM.f_instance_create(2440.0, 40.0, 274.0))
				(GM.f_instance_create(2400.0, 360.0, 274.0))
				(GM.f_instance_create(2640.0, 80.0, 274.0))
				(GM.f_instance_create(2680.0, 480.0, 274.0))
				(GM.f_instance_create(2720.0, 480.0, 274.0))
				(GM.f_instance_create(2760.0, 240.0, 274.0))
				(GM.f_instance_create(2920.0, 80.0, 274.0))
				(GM.f_instance_create(3200.0, 360.0, 274.0))
				(GM.f_instance_create(3280.0, 280.0, 274.0))
				(GM.f_instance_create(3360.0, 200.0, 274.0))
				(GM.f_instance_create(1200.0, 200.0, 274.0))
				(GM.f_instance_create(1040.0, 200.0, 274.0))
				for _w374 in GM.with_list((10.0), self):
					if _w374._dead:
						continue
					_w374.other = self
					(GM.f_instance_destroy(_w374))
				GM.vset(49.0, "v_mytext", "")
				GM.vsetb(271.0, "visible", 0.0)
				(GM.f_instance_create(480.0, 456.0, 276.0))
				(GM.f_instance_create(0.0, 0.0, 170.0))
				(GM.f_sound_play(44.0))
				for _w375 in GM.with_list((271.0), self):
					if _w375._dead:
						continue
					_w375.other = self
					(GM.f_instance_create((_w375.x + 0.0), (_w375.y + 0.0), 265.0))
				(GM.f_sound_stop(25.0))
				(GM.f_sound_stop(26.0))
				GM.vset(7.0, "v_start", 0.0)
				GM.vsetb(7.0, "visible", 0.0)
