extends "res://games/street_bike_fury/scripts.gd"
var v_xset = 0.0
func ev_create():
	v_xset = (GM.f_random(760.0))
	alarm[int(0.0)] = 5.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_set_blend_mode(1.0))
	(GM.f_draw_sprite_ext(97.0, 0.0, (GM.view_xview[0] + v_xset), GM.view_yview[0], 1.0, 1.0, 0.0, 8388736.0, 0.9))
	(GM.f_draw_set_blend_mode(0.0))
