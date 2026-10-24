extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w405 in GM.with_list((49.0), self):
				if _w405._dead:
					continue
				_w405.other = self
				GM.vset(_w405, "v_mytext", "Sparlatacus:  Hmmmmmm.  You know what would be funny?  Taking this stack of bricks and then see if you can drop them on 5 people in 30 seconds.  Yeah... that sounds funny.  Push Enter")
				_w405.alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				(GM.f_instance_create(GM.vb(7.0, "x"), 0.0, 114.0))
				for _w406 in GM.with_list((10.0), self):
					if _w406._dead:
						continue
					_w406.other = self
					(GM.f_instance_destroy(_w406))
				(GM.f_instance_create(0.0, 0.0, 301.0))
				(GM.f_instance_create(0.0, 120.0, 300.0))
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 170.0))
				GM.vsetb(7.0, "y", 5.0)
				(GM.f_sound_play(44.0))
