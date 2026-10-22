extends "res://games/street_bike_fury/scripts.gd"
var v_aa = 0.0
var v_bb = 0.0
var v_gg = 0.0
var v_omlet = 0.0
func ev_create():
	v_aa = 1.0
	v_bb = 5.0
	v_gg = 255.0
	v_omlet = 0.0
	v_omlet = 1.0
	(GM.f_sound_play(16.0))
func ev_step():
	v_aa = v_aa - 0.01
	v_bb = v_bb - 0.1
	v_gg = v_gg - 3.0
	if ((v_aa < 0.0)):
		(GM.f_instance_destroy(self))
	x = GM.vb(0.0, "x")
	if not (((absf(GM.room_speed - 10.0) < 0.00001))):
		GM.room_speed = 10.0
func ev_draw():
	(GM.f_draw_set_halign(1.0))
	(GM.f_draw_set_alpha(v_aa))
	(GM.f_draw_set_font(3.0))
	(GM.f_texture_set_interpolation(1.0))
	(GM.f_draw_set_color(255.0))
	(GM.f_draw_text_transformed((GM.view_xview[0] + (GM.view_wview[0] / 2.0)), ((GM.view_yview[0] + 150.0) - (((255.0 - v_gg)) / 1.8)), "You're dead", v_bb, v_bb, 0.0))
	(GM.f_texture_set_interpolation(0.0))
	(GM.f_draw_set_alpha(1.0))
	(GM.f_draw_set_halign(0.0))
