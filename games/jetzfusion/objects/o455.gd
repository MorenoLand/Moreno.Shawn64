extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w601 in GM.with_list((49.0), self):
				if _w601._dead:
					continue
				_w601.other = self
				GM.vset(_w601, "v_mytext", "Scubachef:  Ahhhh.  There are some more bombs you missed.  These ones may be harder to deactivate.  $400 reward for it thought so push enter.")
				_w601.alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				(GM.f_instance_create(2789.0, 200.0, 458.0))
				(GM.f_instance_create(2949.0, 480.0, 458.0))
				(GM.f_instance_create(428.0, 440.0, 458.0))
				(GM.f_instance_create(429.0, 80.0, 458.0))
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 170.0))
				(GM.f_sound_play(44.0))
