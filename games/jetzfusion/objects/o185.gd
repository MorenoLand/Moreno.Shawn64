extends "res://games/jetzfusion/scripts.gd"
var v_xxx = 0.0
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w235 in GM.with_list((49.0), self):
				if _w235._dead:
					continue
				_w235.other = self
				GM.vset(_w235, "v_mytext", "Darthlupi:  Ok I have some more people I would like you to kill off.  But remember not to kill anyone else like before.  I will pay $200 this time!")
				_w235.alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				(GM.f_instance_create(0.0, 0.0, 182.0))
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 183.0))
				(GM.f_sound_play(44.0))
				for _r236 in range(int((10.0))):
					while true:
						v_xxx = (GM.f_random(GM.room_width))
						if (((v_xxx < (GM.view_xview[int(0.0)] - 40.0)) or (v_xxx > (GM.view_xview[int(0.0)] + GM.view_wview[int(0.0)])))):
							break
					(GM.f_instance_create(v_xxx, 580.0, 186.0))
