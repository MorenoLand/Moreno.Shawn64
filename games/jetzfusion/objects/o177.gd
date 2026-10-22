extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	image_speed = 0.5
	(GM.f_motion_add(self, 180.0, (3.0 + (GM.f_random(2.0)))))
	y = 480.0
func ev_other_0():
	(self.script_Outside_Wrap(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_keypress_13():
	if (((absf((GM.f_instance_number(153.0)) - 0.0) < 0.00001))):
		if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
			(GM.f_sound_play(29.0))
			(GM.f_instance_change(self, 153.0, 1.0))
