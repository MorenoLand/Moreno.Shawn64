extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 36.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	GM.font_align = 1.0
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 550.0), (("Targets: " + (GM.f_string((3.0 - (GM.f_instance_number(1001.0)))))) + "/3")))
