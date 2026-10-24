extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	if (((absf(GM.G["chainsaw"] - 1.0) < 0.00001))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 246.0))
		(GM.f_instance_destroy(self))
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if (((absf((GM.f_instance_number((-100.0))) - 0.0) < 0.00001))):
				for _w158 in GM.with_list((49.0), self):
					if _w158._dead:
						continue
					_w158.other = self
					GM.vset(_w158, "v_mytext", "M703-8E: You really think you can get this chainsaw from me you pathetic human?  Push Enter if your stupid.  I'll blow you to hell!")
					_w158.alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				(GM.f_instance_create(0.0, 0.0, 170.0))
				GM.vset(49.0, "v_mytext", "")
				visible = 0.0
				(GM.f_sound_play(44.0))
				(GM.f_instance_create(x, 0.0, 164.0))
