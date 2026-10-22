extends "res://games/jetzfusion/objects/o53.gd"
var v_what = 0.0
func ev_create():
	alarm[int(2.0)] = 1.0
	(GM.f_sound_play(67.0))
	(GM.f_motion_add(self, GM.vb(7.0, "direction"), GM.vb(7.0, "speed")))
	v_what = 0.0
func ev_alarm_3():
	GM.vsetb(10.0, "visible", 1.0)
	(GM.f_instance_destroy(self))
func ev_alarm_2():
	v_what = 1.0
func ev_step():
	x = (GM.vb(7.0, "x") + 7.0)
	y = (GM.vb(7.0, "y") - 1.0)
func ev_other_7():
	visible = 0.0
	alarm[int(3.0)] = 2.0
func ev_draw():
	(GM.f_draw_sprite(332.0, (-1.0), (GM.vb(7.0, "x") + 7.0), (GM.vb(7.0, "y") - 1.0)))
func ev_keypress_17():
	if (((absf(v_what - 1.0) < 0.00001))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 386.0))
		(GM.f_instance_destroy(self))
