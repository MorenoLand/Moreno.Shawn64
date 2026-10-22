extends "res://games/jetzfusion/scripts.gd"
var v_image_single = 0.0
func ev_create():
	if ((((GM.f_random(2.0)) < 1.0))):
		v_image_single = 0.0
		(GM.f_motion_add(self, 180.0, 4.0))
	else:
		v_image_single = 1.0
		(GM.f_motion_add(self, 0.0, 4.0))
	y = (GM.f_random(280.0))
	x = (GM.f_random(GM.room_width))
func ev_other_0():
	(self.script_Outside_Wrap(0.0, 0.0, 0.0, 0.0, 0.0))
