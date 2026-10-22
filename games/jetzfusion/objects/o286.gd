extends "res://games/jetzfusion/scripts.gd"
var v_view_left = 0.0
var v_view_width = 0.0
var v_xxx = 0.0
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			for _w391 in GM.with_list((49.0), self):
				if _w391._dead:
					continue
				_w391.other = self
				GM.vset(_w391, "v_mytext", "Damaged:  The noobs have come back in full force.  Defeat 60 of those bastards in 40 seconds for $400.  Push Enter")
				alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				for _r392 in range(int((30.0))):
					while true:
						v_xxx = (GM.f_random(GM.room_width))
						if (((v_xxx < (GM.aget(v_view_left, 0.0) - 40.0)) or (v_xxx > GM.add(GM.aget(v_view_left, 0.0), GM.aget(v_view_width, 0.0))))):
							break
					(GM.f_instance_create(v_xxx, 480.0, 295.0))
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 183.0))
				(GM.f_sound_play(44.0))
				(GM.f_instance_create(0.0, 0.0, 288.0))
