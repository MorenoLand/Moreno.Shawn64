extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w288 in GM.with_list((49.0), self):
				if _w288._dead:
					continue
				_w288.other = self
				GM.vset(_w288, "v_mytext", "CapnChubby:  HAHAHAH BLOOOOD BLOOOOD KILL KILL HEHE!!  NEED MORE BLOOD.  BRING ME MORE BLOOD FOR $200!")
				alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf(GM.G["chainsaw"] - 1.0) < 0.00001))):
			if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
				if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
					GM.vset(49.0, "v_mytext", "")
					(GM.f_instance_create(0.0, 0.0, 170.0))
					(GM.f_sound_play(44.0))
					(GM.f_instance_create(0.0, 0.0, 220.0))
