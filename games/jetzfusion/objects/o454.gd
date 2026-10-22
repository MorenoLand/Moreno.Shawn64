extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w600 in GM.with_list((49.0), self):
				if _w600._dead:
					continue
				_w600.other = self
				GM.vset(_w600, "v_mytext", "Scubachef:  I know how you don't like saving people and all that shit but if you can deactivate those bombs set on the buildings in time i will pay you $300.  Push enter on them when they are green.")
				alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				(GM.f_instance_create(428.0, 360.0, 457.0))
				(GM.f_instance_create(1668.0, 400.0, 457.0))
				(GM.f_instance_create(2948.0, 320.0, 457.0))
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 170.0))
				(GM.f_sound_play(44.0))
