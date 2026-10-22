extends "res://games/bubblegum/scripts.gd"
var v_image_single = 0.0
func ev_create():
	v_image_single = (GM.f_random(2.0))
	(GM.f_motion_set(self, (80.0 + (GM.f_random(20.0))), (3.0 + (GM.f_random(5.0)))))
	alarm[int(0.0)] = (1.0 + (GM.f_random(30.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_96():
	(GM.f_instance_destroy(self))
func ev_col_79():
	(GM.f_instance_destroy(self))
func ev_col_23():
	(GM.f_instance_destroy(self))
func ev_col_2():
	(GM.f_instance_destroy(self))
func ev_col_1():
	(GM.f_instance_destroy(self))
