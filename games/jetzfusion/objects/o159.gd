extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w157 in GM.with_list((49.0), self):
				if _w157._dead:
					continue
				_w157.other = self
				GM.vset(_w157, "v_mytext", "Phunky Monkey:  Does the famous Jetz think he can defeat me!  Man I'm packing some serious fire power but if your up for the challenge PUSH ENTER")
				alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 190.0))
				(GM.f_sound_play(44.0))
				(GM.f_instance_create((x + 0.0), (y + 0.0), 189.0))
				visible = 0.0
