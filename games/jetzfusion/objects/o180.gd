extends "res://games/jetzfusion/scripts.gd"
var v_xxx = 0.0
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w233 in GM.with_list((49.0), self):
				if _w233._dead:
					continue
				_w233.other = self
				GM.vset(_w233, "v_mytext", "Darthlupi:  I need you to kill some people I have picked out but be sure not to kill anyone else!  I will pay you $100 for your services.  PUSH ENTER")
				_w233.alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				(GM.f_instance_create(0.0, 0.0, 182.0))
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 183.0))
				(GM.f_sound_play(44.0))
				for _r234 in range(int((5.0))):
					while true:
						v_xxx = (GM.f_random(GM.room_width))
						if (((v_xxx < (GM.view_xview[int(0.0)] - 40.0)) or (v_xxx > (GM.view_xview[int(0.0)] + GM.view_wview[int(0.0)])))):
							break
					(GM.f_instance_create(v_xxx, 580.0, 181.0))
