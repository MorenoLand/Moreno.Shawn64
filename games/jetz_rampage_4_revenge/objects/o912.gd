extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_yyy = 0.0
func ev_create():
	image_single = (GM.f_floor((GM.f_random(2.999))))
	(GM.f_motion_add(self, (GM.f_random(360.0)), (GM.f_random(2.0))))
	gravity_direction = 270.0
	gravity = 0.4
	alarm[int(0.0)] = (5.0 + (GM.f_random(15.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	if (((y > v_yyy))):
		(GM.f_action_move(self, "000010000", 0.0, 0.0))
		gravity_direction = 0.0
		gravity = 0.0
func ev_col_489():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
