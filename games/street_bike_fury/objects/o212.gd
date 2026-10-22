extends "res://games/street_bike_fury/scripts.gd"
var v_textt = 0.0
func ev_create():
	v_textt = ""
func ev_draw():
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_set_halign(1.0))
	(GM.f_draw_set_font(4.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 500.0), ("" + (GM.f_string(v_textt)))))
	(GM.f_draw_set_halign(0.0))
