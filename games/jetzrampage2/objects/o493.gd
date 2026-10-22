extends "res://games/jetzrampage2/scripts.gd"
var v_image_single = 0.0
func ev_create():
	(GM.f_action_move(self, "000100000", 15.0, 0.0))
	v_image_single = (GM.f_random(3.0))
func ev_alarm_0():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 233.0))
	alarm[int(0.0)] = 4.0
func ev_col_493():
	(GM.f_instance_create(GM.room_width, 560.0, 494.0))
	(GM.f_instance_destroy(self))
func ev_col_103():
	vspeed = (-10.0)
	gravity_direction = 270.0
	gravity = 0.5
	(GM.f_instance_create((x + 0.0), (y + 0.0), 233.0))
	alarm[int(0.0)] = 2.0
func ev_other_0():
	if (((x < (-300.0)))):
		(GM.f_instance_create(GM.room_width, 560.0, 494.0))
		(GM.f_instance_destroy(self))
	if (((y > GM.room_height))):
		(GM.f_instance_create(GM.room_width, 560.0, 494.0))
		(GM.f_sound_play(15.0))
		(GM.f_instance_destroy(self))
