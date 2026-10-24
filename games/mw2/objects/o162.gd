extends "res://games/mw2/scripts.gd"
func ev_step():
	if ((((GM.f_instance_number(82.0)) < 1.0))):
		if ((((GM.f_instance_number(30.0)) < 1.0))):
			if (((absf((GM.f_instance_number(40.0)) - 0.0) < 0.00001))):
				(GM.f_instance_create(200.0, 160.0, 40.0))
func ev_other_4():
	GM.score = 0.0
	GM.G["missils"] = 400.0
	GM.G["doom"] = 0.0
	GM.G["cool"] = 5.0
	GM.G["cool2"] = 0.0
	GM.G["boom"] = 5.0
	GM.G["mega"] = 0.0
	GM.G["glue"] = 0.0
	GM.G["bow"] = 0.0
	GM.G["scorep2"] = 500.0
	GM.G["missilesp2"] = 0.0
	GM.G["bonusp2"] = 0.0
	GM.G["bombp2"] = 0.0
	GM.G["mgabombp2"] = 0.0
func ev_draw():
	(GM.f_action_draw_font("System", 10.0, 1.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text(40.0, 20.0, ("high score: " + (GM.f_string((GM.f_highscore_value(1.0)))))))
	(GM.f_draw_text(40.0, 40.0, ("" + (GM.f_string((GM.f_highscore_name(1.0)))))))
	(GM.f_draw_text(40.0, 60.0, ("score: " + (GM.f_string(GM.score)))))
	(GM.f_draw_text(40.0, 80.0, ("dice sides: " + (GM.f_string(GM.G["missils"])))))
	(GM.f_draw_text(40.0, 100.0, ("bonus: " + (GM.f_string(GM.G["cool"])))))
	if ((((GM.f_instance_number(92.0)) > 0.0))):
		(GM.f_action_draw_font("System", 10.0, 1.0, 0.0))
		(GM.f_draw_set_color(16776960.0))
		(GM.f_draw_text(40.0, 120.0, ("free blocks: " + (GM.f_string(GM.G["cool2"])))))
	if (((absf((GM.f_instance_number(107.0)) - 1.0) < 0.00001))):
		(GM.f_action_draw_font("Times New Roman", 10.0, 0.0, 0.0))
		(GM.f_draw_set_color(255.0))
		(GM.f_draw_text(40.0, 140.0, ("power up time: " + (GM.f_string(GM.vb(35.0, "alarm")[int(0.0)])))))
	if (((absf((GM.f_instance_number(113.0)) - 1.0) < 0.00001))):
		(GM.f_action_draw_font("Times New Roman", 10.0, 0.0, 0.0))
		(GM.f_draw_set_color(255.0))
		(GM.f_draw_text(40.0, 140.0, ("power up time: " + (GM.f_string(GM.vb(111.0, "alarm")[int(0.0)])))))
	if (((GM.G["boom"] > 0.0))):
		(GM.f_action_draw_font("Times New Roman", 10.0, 0.0, 0.0))
		(GM.f_draw_set_color(65280.0))
		(GM.f_draw_text(40.0, 160.0, ("normal bombs: " + (GM.f_string(GM.G["boom"])))))
	if (((GM.G["mega"] > 0.0))):
		(GM.f_action_draw_font("Times New Roman", 10.0, 0.0, 0.0))
		(GM.f_draw_set_color(65280.0))
		(GM.f_draw_text(40.0, 180.0, ("mega bombs: " + (GM.f_string(GM.G["mega"])))))
	if (((absf((GM.f_instance_number(3.0)) - 1.0) < 0.00001))):
		(GM.f_draw_set_color(16711680.0))
		(GM.f_draw_line((GM.vb(3.0, "x") + 22.5), (GM.vb(3.0, "y") + 22.5), GM.mouse_x, GM.mouse_y))
	(GM.f_action_draw_font("System", 10.0, 1.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text(160.0, 20.0, ("p2 score: " + (GM.f_string(GM.G["scorep2"])))))
	(GM.f_draw_text(160.0, 40.0, ("p2 random: " + (GM.f_string(GM.G["missilesp2"])))))
	(GM.f_draw_text(160.0, 60.0, ("p2 bonus: " + (GM.f_string(GM.G["bonusp2"])))))
	(GM.f_draw_text(160.0, 80.0, ("p2 bombs: " + (GM.f_string(GM.G["bombp2"])))))
	(GM.f_draw_text(160.0, 100.0, ("p2 mbomb: " + (GM.f_string(GM.G["mgabombp2"])))))
