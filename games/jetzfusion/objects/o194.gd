extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	if (((absf((GM.f_instance_number(74.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(1280.0, 160.0, 201.0))
	else:
		for _w253 in GM.with_list((74.0), self):
			if _w253._dead:
				continue
			_w253.other = self
			(GM.f_instance_create((_w253.x + 0.0), (_w253.y + 0.0), 201.0))
		for _w254 in GM.with_list((74.0), self):
			if _w254._dead:
				continue
			_w254.other = self
			(GM.f_instance_destroy(_w254))
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w255 in GM.with_list((49.0), self):
				if _w255._dead:
					continue
				_w255.other = self
				GM.vset(_w255, "v_mytext", "Mocha Man:  How could you kill my friend Phunky Monkey!  I WILL HAVE MY REVENGE!   PUSH ENTER OR ELSE!")
				_w255.alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 190.0))
				(GM.f_sound_play(44.0))
				(GM.f_instance_create((x + 0.0), (y + 0.0), 196.0))
				visible = 0.0
