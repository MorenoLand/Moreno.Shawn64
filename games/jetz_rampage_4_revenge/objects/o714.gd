extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_weez = 0.0
func ev_create():
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 545.0))
	alarm[int(0.0)] = 20.0
func ev_alarm_1():
	visible = 1.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_7():
	(GM.f_sound_play(127.0))
	for _r408 in range(int((20.0))):
		v_weez = (GM.f_instance_create((x + (GM.f_random((sprite_width - 3.0)))), (y + (GM.f_random((sprite_height - 3.0)))), 593.0))
		GM.vsetb(v_weez, "direction", (GM.f_random(360.0)))
		GM.vsetb(v_weez, "speed", (1.0 + (GM.f_random(4.0))))
		GM.vb(v_weez, "alarm")[int(0.0)] = (1.0 + (GM.f_random(5.0)))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
