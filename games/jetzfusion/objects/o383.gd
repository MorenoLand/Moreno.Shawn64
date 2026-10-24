extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w516 in GM.with_list((49.0), self):
				if _w516._dead:
					continue
				_w516.other = self
				GM.vset(_w516, "v_mytext", "FGFK:  Keep grandma from reaching the retirment home for 30 seconds by dropping those bricks on her.  DOESNT THAT JUST SOUND HILARIOUS!  I'll even pay you $100 to do it!  Push Enter")
				_w516.alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				(GM.f_sound_play(74.0))
				(GM.f_instance_create(GM.vb(7.0, "x"), 0.0, 114.0))
				for _w517 in GM.with_list((10.0), self):
					if _w517._dead:
						continue
					_w517.other = self
					(GM.f_instance_destroy(_w517))
				(GM.f_instance_create((GM.view_xview[0] + 850.0), 480.0, 423.0))
				(GM.f_instance_create(0.0, 120.0, 300.0))
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 170.0))
				GM.vsetb(7.0, "y", 5.0)
				(GM.f_sound_play(44.0))
