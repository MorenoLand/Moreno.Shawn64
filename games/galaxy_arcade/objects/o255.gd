extends "res://games/galaxy_arcade/scripts.gd"
func ev_draw():
	(GM.f_action_draw_font("Vagabond", 20.0, 0.0, 0.0))
	(GM.f_draw_set_color(16711680.0))
	(GM.f_draw_text(50.0, 10.0, ("Score: " + (GM.f_string(GM.G["missils"])))))
	(GM.f_draw_text(320.0, 10.0, ("High Score: " + (GM.f_string(GM.G["missilshigh"])))))
	if (((GM.G["missils"] < 20.0))):
		(GM.f_draw_text(320.0, 64.0, "Level 1"))
	if (((GM.G["missils"] > 19.0))):
		if (((GM.G["missils"] < 40.0))):
			(GM.f_draw_text(320.0, 64.0, "Level 2"))
	if (((GM.G["missils"] > 39.0))):
		if (((GM.G["missils"] < 60.0))):
			(GM.f_draw_text(320.0, 64.0, "Level 3"))
	if (((GM.G["missils"] > 59.0))):
		if (((GM.G["missils"] < 80.0))):
			(GM.f_draw_text(320.0, 64.0, "Level 4"))
	if (((GM.G["missils"] > 79.0))):
		if (((GM.G["missils"] < 100.0))):
			(GM.f_draw_text(320.0, 64.0, "FINAL LEVEL"))
	if (((GM.G["missils"] > 100.0))):
		pass
