extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if (((absf(GM.G["boomerang"] - 1.0) < 0.00001))):
				for _w407 in GM.with_list((49.0), self):
					if _w407._dead:
						continue
					_w407.other = self
					GM.vset(_w407, "v_mytext", "Dex CG:  I have some target practice for you.  Lets see how good you are at throwing that boomerang.  Hit 10 targets in 40 seconds for $100.  Push Enter")
					_w407.alarm[int(0.0)] = 15.0
			else:
				for _w408 in GM.with_list((49.0), self):
					if _w408._dead:
						continue
					_w408.other = self
					GM.vset(_w408, "v_mytext", "Dex CG:  You need a boomerang!  Yep.  Uh huh.  Yeah.  Yep.")
					_w408.alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf(GM.G["boomerang"] - 1.0) < 0.00001))):
			if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
				if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
					GM.vset(49.0, "v_mytext", "")
					(GM.f_instance_create(0.0, 0.0, 183.0))
					(GM.f_sound_play(44.0))
					for _r409 in range(int((10.0))):
						(GM.f_instance_create(0.0, 0.0, 309.0))
