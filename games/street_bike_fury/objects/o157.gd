extends "res://games/street_bike_fury/scripts.gd"
var v_alpha = 0.0
var v_maketext = ""
var v_mouseonme = 0.0
var v_psound = 0.0
func ev_create():
	v_psound = 1.0
	v_alpha = 0.0
func ev_step():
	if (((GM.f_position_meeting(GM.mouse_x, GM.mouse_y, self)))) >= 0.5:
		if ((absf(v_psound - 1.0) < 0.00001)):
			(GM.f_sound_play(35.0))
			v_psound = 0.0
		v_alpha = 0.3
		v_mouseonme = 1.0
	else:
		v_alpha = 1.0
		v_psound = 1.0
		v_mouseonme = 0.0
func ev_mouse_4():
	pass
func ev_draw():
	(GM.f_draw_set_font(0.0))
	(GM.f_draw_set_color(16711680.0))
	(GM.f_draw_set_alpha(v_alpha))
	(GM.f_draw_text(x, y, ("" + (GM.f_string(v_maketext)))))
