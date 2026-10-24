extends "res://games/galaxy_arcade/scripts.gd"
func ev_draw():
	(GM.f_action_draw_font("Transistor", 28.0, 0.0, 0.0))
	(GM.f_draw_set_color(255.0))
	(GM.f_draw_text(50.0, 10.0, ("Score: " + (GM.f_string(GM.G["pacscore"])))))
	(GM.f_draw_text(320.0, 10.0, ("Lives: " + (GM.f_string(GM.G["paclives"])))))
	(GM.f_draw_text(590.0, 10.0, ("HighScore: " + (GM.f_string(GM.G["pachigh"])))))
