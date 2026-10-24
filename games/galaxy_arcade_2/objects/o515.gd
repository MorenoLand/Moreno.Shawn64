extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 12.0, 1.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text(20.0, 20.0, ("Score: " + (GM.f_string(GM.G["pacpoints"])))))
	(GM.f_draw_text(20.0, 50.0, ("Lives: " + (GM.f_string(GM.lives)))))
