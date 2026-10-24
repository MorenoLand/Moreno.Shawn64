extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	image_single = 1.0
	(GM.f_motion_add(self, 0.0, 4.0))
	y = (GM.f_random(280.0))
	x = (GM.f_random(GM.room_width))
func ev_other_0():
	(self.script_Outside_Wrap(0.0, 0.0, 0.0, 0.0, 0.0))
