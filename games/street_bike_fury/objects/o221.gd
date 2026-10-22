extends "res://games/street_bike_fury/scripts.gd"
var v_levelset = 0.0
var v_mouseover = 0.0
var v_psound = 0.0
var v_texxt = ""
func ev_create():
	x = (GM.room_width / 2.0)
	v_psound = 1.0
	v_mouseover = 0.0
	x = x - 100.0
func ev_step():
	if (((GM.f_position_meeting(GM.mouse_x, GM.mouse_y, self)))) >= 0.5:
		v_mouseover = 1.0
	else:
		v_mouseover = 0.0
func ev_mouse_4():
	(GM.f_sound_stop(33.0))
	(GM.f_sound_play(16.0))
	if ((absf(v_levelset - 1.0) < 0.00001)):
		GM.G["levelon"] = 1.0
	if ((absf(v_levelset - 2.0) < 0.00001)):
		GM.G["levelon"] = 2.0
	(GM.f_room_goto(2.0))
	(GM.f_room_goto(19.0))
func ev_draw():
	if ((absf(v_mouseover - 1.0) < 0.00001)):
		(GM.f_draw_set_alpha(0.5))
	else:
		(GM.f_draw_set_alpha(1.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_set_font(5.0))
	(GM.f_draw_set_halign(0.0))
	(GM.f_draw_text(x, y, ("" + (GM.f_string(v_texxt)))))
	(GM.f_draw_set_halign(0.0))
	(GM.f_draw_set_alpha(1.0))
