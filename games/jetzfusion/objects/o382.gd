extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if (((absf(GM.G["lightsaber"] - 1.0) < 0.00001))):
				for _w514 in GM.with_list((49.0), self):
					if _w514._dead:
						continue
					_w514.other = self
					GM.vset(_w514, "v_mytext", "Degman:  I challenge you to a light saber duel!  Win and you can take my cash!  What do you think about that?  Push Enter!")
					alarm[int(0.0)] = 15.0
			else:
				for _w515 in GM.with_list((49.0), self):
					if _w515._dead:
						continue
					_w515.other = self
					GM.vset(_w515, "v_mytext", "Degman:  Where is your light saber young jedi?")
					alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf(GM.G["lightsaber"] - 1.0) < 0.00001))):
		if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
			if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
				if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
					GM.vset(49.0, "v_mytext", "")
					visible = 0.0
					(GM.f_instance_create(0.0, 0.0, 190.0))
					(GM.f_sound_play(44.0))
					(GM.f_instance_create(x, 0.0, 394.0))
