extends "res://games/jetzrampage/scripts.gd"
func ev_other_4():
	GM.G["lives"] = 0.0
func ev_draw():
	(GM.f_action_draw_font("System", 0.0, 0.0, 0.0))
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_text((GM.view_xview[int(0.0)] + 25.0), (GM.view_yview[int(0.0)] + 5.0), "Health"))
