extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_poom1 = 0.0
var v_poom2 = 0.0
func ev_create():
	v_poom1 = x
	v_poom2 = y
	alarm[int(0.0)] = ((GM.f_random(25.0)) + 1.0)
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_7():
	(GM.f_instance_destroy(self))
	if ((absf((GM.f_instance_number(765.0)) - 0.0) < 0.00001)):
		(GM.f_instance_create(x, GM.room_height, 765.0))
func ev_draw():
	if ((((GM.f_random(4.0)) < 1.0))):
		(GM.f_instance_create(x, y, 766.0))
	(GM.f_draw_set_color(16777215.0))
	v_poom1 = v_poom1 + ((-50.0) + (GM.f_random(100.0)))
	v_poom2 = v_poom2 + ((-50.0) + (GM.f_random(100.0)))
	if (((GM.f_distance_to_object(self, 7.0)) < 60.0)):
		if ((absf((GM.f_instance_number(765.0)) - 0.0) < 0.00001)):
			(GM.f_instance_create(x, GM.room_height, 765.0))
	(GM.f_draw_line(v_poom1, v_poom2, x, y))
	x = v_poom1
	y = v_poom2
