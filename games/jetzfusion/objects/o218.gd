extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w289 in GM.with_list((49.0), self):
				if _w289._dead:
					continue
				_w289.other = self
				GM.vset(_w289, "v_mytext", "Beanjo: I need you to take out a few people in their apartments.  I will hand you one bomb at a time to plant on their windows but be quick so you dont blow up yourself.  I will signal when your close to a target.  $300 so push enter!")
				_w289.alarm[int(0.0)] = 15.0
	if (((absf((GM.f_instance_number(242.0)) - 0.0) < 0.00001))):
		if ((((GM.f_instance_number(239.0)) > 0.0))):
			(GM.f_sound_play(19.0))
			(GM.f_instance_create(0.0, 0.0, 242.0))
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				for _w290 in GM.with_list((10.0), self):
					if _w290._dead:
						continue
					_w290.other = self
					(GM.f_instance_destroy(_w290))
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 190.0))
				(GM.f_sound_play(44.0))
				for _r291 in range(int((3.0))):
					(GM.f_instance_create(0.0, 0.0, 239.0))
