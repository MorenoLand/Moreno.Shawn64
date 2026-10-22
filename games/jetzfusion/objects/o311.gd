extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	if (((absf(GM.G["boomerang"] - 1.0) < 0.00001))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 246.0))
		(GM.f_instance_destroy(self))
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w428 in GM.with_list((49.0), self):
				if _w428._dead:
					continue
				_w428.other = self
				GM.vset(_w428, "v_mytext", "C109-E: *laugh* *laugh* You should of seen the little worthless human girl cry when her boomerang flew onto that building over there. *laugh* *laugh*  It might be of some use to you.  Push Enter to go find it. ")
				alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(313.0)) - 0.0) < 0.00001))):
			if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
				if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
					(GM.f_instance_create(0.0, 0.0, 190.0))
					(GM.f_instance_create(1120.0, 208.0, 312.0))
					GM.vset(49.0, "v_mytext", "")
					(GM.f_sound_play(44.0))
					for _w429 in GM.with_list((70.0), self):
						if _w429._dead:
							continue
						_w429.other = self
						(GM.f_action_kill_position(1080.0, 160.0))
					(GM.f_instance_create(1080.0, 160.0, 224.0))
