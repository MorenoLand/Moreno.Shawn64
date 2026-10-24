extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	if (((absf(GM.G["lightsaber"] - 1.0) < 0.00001))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 246.0))
		(GM.f_instance_destroy(self))
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w518 in GM.with_list((49.0), self):
				if _w518._dead:
					continue
				_w518.other = self
				GM.vset(_w518, "v_mytext", "OB1-C8:  One of those flying transporters carries your light saber young one.  Shoot it down and collect it.  If you think you are worthy of the sward push enter.")
				_w518.alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				if ((((GM.f_instance_number(356.0)) < 5.0))):
					for _r519 in range(int((5.0))):
						(GM.f_instance_create(0.0, 0.0, 356.0))
				(GM.f_instance_create(0.0, 0.0, 393.0))
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 170.0))
				(GM.f_sound_play(44.0))
