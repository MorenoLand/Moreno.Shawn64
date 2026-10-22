extends "res://games/jetzfusion/scripts.gd"
var v_countingg = 0.0
func ev_create():
	v_countingg = 0.0
func ev_draw():
	(GM.f_action_draw_font("Dot-Matrix", 22.0, 0.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), 160.0, (("SCORE: " + (GM.f_string(v_countingg))) + "/25")))
