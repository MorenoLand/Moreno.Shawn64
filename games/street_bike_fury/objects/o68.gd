extends "res://games/street_bike_fury/scripts.gd"
var v_aa = 0.0
var v_gg = 0.0
var v_omlet = 0.0
var v_set1 = 0.0
var v_tt = 0.0
func ev_create():
	v_aa = 1.0
	v_gg = 255.0
	v_omlet = 0.0
	if (((GM.f_instance_number(68.0)) > 1.0)):
		v_omlet = 1.0
		for _w52 in GM.with_list((68.0), self):
			if _w52._dead:
				continue
			_w52.other = self
			if ((absf(GM.vget(_w52, "v_omlet") - 0.0) < 0.00001)):
				GM.vset(_w52, "v_aa", GM.vget(_w52, "v_aa") - 0.3)
		v_omlet = 0.0
	(GM.f_sound_play(16.0))
func ev_step():
	v_aa = v_aa - 0.01
	v_gg = v_gg - 3.0
	if ((v_aa < 0.0)):
		(GM.f_instance_destroy(self))
	x = GM.vb(0.0, "x")
func ev_draw():
	(GM.f_draw_set_halign(1.0))
	(GM.f_draw_set_alpha(v_aa))
	(GM.f_draw_set_font(3.0))
	(GM.f_texture_set_interpolation(1.0))
	(GM.f_draw_set_color(v_set1))
	(GM.f_draw_text_transformed((GM.view_xview[0] + (GM.view_wview[0] / 2.0)), ((GM.view_yview[0] + 150.0) - (((255.0 - v_gg)) / 1.8)), ("" + (GM.f_string(v_tt))), v_aa, v_aa, 0.0))
	(GM.f_texture_set_interpolation(0.0))
	(GM.f_draw_set_alpha(1.0))
	(GM.f_draw_set_halign(0.0))
