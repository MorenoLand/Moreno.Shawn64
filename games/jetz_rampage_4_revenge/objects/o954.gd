extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_draw():
	(GM.f_draw_sprite(975.0, (-1.0), x, y))
	(GM.f_draw_healthbar((GM.view_xview[0] + 50.0), (GM.view_yview[0] + 550.0), (GM.view_xview[0] + 750.0), (GM.view_yview[0] + 590.0), GM.vget(946.0, "v_mypower"), 0.0, 255.0, 16711680.0, 0.0, 1.0, 1.0))
	GM.font_align = 1.0
	(GM.f_action_draw_font("Times New Roman", 26.0, 0.0, 0.0))
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 550.0), "Mega Cop"))
