extends "res://games/jetzfusion/scripts.gd"
var v_complete = 0.0
var v_poom = 0.0
func ev_create():
	image_speed = 0.5
	v_poom = (GM.f_round((GM.f_random(1.0))))
	if ((absf(v_poom - 0.0) < 0.00001)):
		(GM.f_motion_add(self, 0.0, (3.0 + (GM.f_random(2.0)))))
	if ((absf(v_poom - 1.0) < 0.00001)):
		(GM.f_motion_add(self, 180.0, (3.0 + (GM.f_random(2.0)))))
	y = 480.0
	v_complete = 0.0
	(GM.f_action_move(self, "000100000", 3.0, 0.0))
func ev_step():
	if (((absf(v_complete - 1.0) < 0.00001))):
		if (((y < (GM.room_width - sprite_width)))):
			(GM.f_instance_destroy(self))
		if (((y > GM.room_width))):
			(GM.f_instance_destroy(self))
func ev_other_0():
	(self.script_Outside_Wrap(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_keypress_13():
	if (((absf((GM.f_instance_number(153.0)) - 0.0) < 0.00001))):
		if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
			(GM.f_sound_play(37.0))
			(GM.f_instance_create(0.0, 0.0, 179.0))
			for _w232 in GM.with_list((49.0), self):
				if _w232._dead:
					continue
				_w232.other = self
				GM.vset(_w232, "v_complete", 1.0)
				GM.vset(_w232, "v_mytext", "Now deliver it to me!")
				_w232.alarm[int(0.0)] = 50.0
			(GM.f_action_move(self, "000010000", 0.0, 0.0))
			image_single = 1.0
