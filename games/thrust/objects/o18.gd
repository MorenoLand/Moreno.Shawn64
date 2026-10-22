extends "res://games/thrust/scripts.gd"
var v_image_single = 0.0
var v_wow = 0.0
func ev_create():
	v_wow = (GM.f_round((GM.f_random(2.0))))
	if ((absf(v_wow - 0.0) < 0.00001)):
		v_image_single = 0.0
		(GM.f_motion_add(self, 90.0, 15.0))
	if ((absf(v_wow - 1.0) < 0.00001)):
		v_image_single = 1.0
		(GM.f_motion_add(self, 90.0, 10.0))
	if ((absf(v_wow - 2.0) < 0.00001)):
		v_image_single = 2.0
		(GM.f_motion_add(self, 90.0, 5.0))
func ev_col_19():
	(GM.f_instance_destroy(self))
