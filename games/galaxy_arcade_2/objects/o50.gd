extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 8.0, 0.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text(14.0, 581.0, ("score:  " + (GM.f_string(GM.score)))))
	(GM.f_draw_text(108.0, 581.0, ("lives:  " + (GM.f_string(GM.lives)))))
