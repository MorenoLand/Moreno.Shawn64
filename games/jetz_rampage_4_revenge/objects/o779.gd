extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_click = 0.0
var v_drawtext = ""
func ev_create():
	(GM.f_sound_play(216.0))
	v_click = 0.0
	alarm[int(0.0)] = 1.0
func ev_alarm_1():
	if ((absf(v_click - 1.0) < 0.00001)):
		(GM.f_instance_activate_all())
		(GM.f_sound_play(216.0))
		(GM.f_instance_destroy(self))
func ev_alarm_0():
	v_click = 1.0
func ev_step():
	(GM.f_instance_deactivate_all(self, 1.0))
func ev_draw():
	(GM.f_draw_sprite(816.0, (-1.0), GM.view_xview[0], GM.view_yview[0]))
	(GM.f_action_draw_font("Impact", 24.0, 1.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	GM.font_align = 1.0
	(GM.f_draw_text_ext((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 170.0), ("" + (GM.f_string(v_drawtext))), (-1.0), 700.0))
func ev_keypress_13():
	alarm[int(1.0)] = 1.0
