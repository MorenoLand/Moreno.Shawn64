extends "res://games/street_bike_fury/scripts.gd"
var v_textt = 0.0
func ev_create():
	alarm[int(0.0)] = 60.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	x = GM.vb(0.0, "x")
	y = GM.vb(0.0, "y")
func ev_draw():
	(GM.f_draw_set_color(65535.0))
	(GM.f_draw_set_halign(1.0))
	(GM.f_draw_set_font(0.0))
	(GM.f_draw_text(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 70.0), ("" + (GM.f_string(v_textt)))))
	(GM.f_draw_set_halign(0.0))
