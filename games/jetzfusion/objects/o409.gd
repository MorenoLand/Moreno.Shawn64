extends "res://games/jetzfusion/scripts.gd"
var v_wrightthis = ""
func ev_create():
	alarm[int(0.0)] = 100.0
	v_wrightthis = ""
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_rectangle(0.0, 560.0, (GM.view_xview[0] + 800.0), 600.0, (1.0 if not (((0.0)) >= 0.5) else 0.0)))
	GM.font_align = 1.0
	(GM.f_action_draw_font("Dot-Matrix", 22.0, 0.0, 0.0))
	(GM.f_draw_set_color(255.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 570.0), ("" + (GM.f_string(v_wrightthis)))))
	(GM.f_draw_sprite(6.0, (-1.0), (GM.view_xview[0] + 10.0), 570.0))
