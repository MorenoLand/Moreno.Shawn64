extends "res://games/jetzfusion/scripts.gd"
var v_image_single = 0.0
func ev_create():
	v_image_single = (GM.f_random(2.0))
	(GM.f_motion_set(self, (260.0 + (GM.f_random(20.0))), (5.0 + (GM.f_random(5.0)))))
	alarm[int(0.0)] = (1.0 + (GM.f_random(15.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_17():
	for _r540 in range(int((5.0))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 25.0))
	(GM.f_instance_destroy(self))
