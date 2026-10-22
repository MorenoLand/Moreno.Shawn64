extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
			if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
				for _w306 in GM.with_list((49.0), self):
					if _w306._dead:
						continue
					_w306.other = self
					GM.vset(_w306, "v_mytext", "Beanjo: More people!  This time you have to move faster!  I don't have much time to get out of here before I am caught!  $400 sound good this time?  Push enter!")
					alarm[int(0.0)] = 15.0
	if (((absf((GM.f_instance_number(242.0)) - 0.0) < 0.00001))):
		if ((((GM.f_instance_number(245.0)) > 0.0))):
			(GM.f_sound_play(19.0))
			(GM.f_instance_create(0.0, 0.0, 242.0))
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				for _w307 in GM.with_list((10.0), self):
					if _w307._dead:
						continue
					_w307.other = self
					(GM.f_instance_destroy(_w307))
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 190.0))
				(GM.f_sound_play(44.0))
				for _r308 in range(int((6.0))):
					(GM.f_instance_create(0.0, 0.0, 245.0))
