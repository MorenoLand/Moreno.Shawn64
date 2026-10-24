extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_other_4():
	GM.G["speedy"] = 100.0
	GM.G["pts"] = 0.0
	GM.G["deaths"] = 5.0
func ev_draw():
	if (((absf((GM.f_instance_number(0.0)) - 1.0) < 0.00001))):
		if (((absf((GM.f_instance_number(1.0)) - 1.0) < 0.00001))):
			(GM.f_draw_set_color(16711680.0))
			(GM.f_draw_line((GM.vb(0.0, "x") + 25.0), (GM.vb(0.0, "y") + 31.0), (GM.vb(1.0, "x") + 25.0), (GM.vb(1.0, "y") + 25.0)))
	if (((absf((GM.f_instance_number(4.0)) - 1.0) < 0.00001))):
		if (((absf((GM.f_instance_number(5.0)) - 1.0) < 0.00001))):
			(GM.f_draw_set_color(16711680.0))
			(GM.f_draw_line((GM.vb(4.0, "x") + 25.0), (GM.vb(4.0, "y") + 31.0), (GM.vb(5.0, "x") + 25.0), (GM.vb(5.0, "y") + 25.0)))
	if (((absf((GM.f_instance_number(6.0)) - 1.0) < 0.00001))):
		if (((absf((GM.f_instance_number(7.0)) - 1.0) < 0.00001))):
			(GM.f_draw_set_color(16711680.0))
			(GM.f_draw_line((GM.vb(6.0, "x") + 25.0), (GM.vb(6.0, "y") + 31.0), (GM.vb(7.0, "x") + 25.0), (GM.vb(7.0, "y") + 25.0)))
	if (((absf((GM.f_instance_number(10.0)) - 1.0) < 0.00001))):
		if (((absf((GM.f_instance_number(9.0)) - 1.0) < 0.00001))):
			(GM.f_draw_set_color(16711680.0))
			(GM.f_draw_line((GM.vb(9.0, "x") + 25.0), (GM.vb(9.0, "y") + 31.0), (GM.vb(10.0, "x") + 25.0), (GM.vb(10.0, "y") + 25.0)))
	if (((absf((GM.f_instance_number(11.0)) - 1.0) < 0.00001))):
		if (((absf((GM.f_instance_number(12.0)) - 1.0) < 0.00001))):
			(GM.f_draw_set_color(16711680.0))
			(GM.f_draw_line((GM.vb(11.0, "x") + 25.0), (GM.vb(11.0, "y") + 31.0), (GM.vb(12.0, "x") + 25.0), (GM.vb(12.0, "y") + 25.0)))
	(GM.f_action_draw_font("Westminster", 14.0, 1.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text(16.0, 80.0, ("Dice Sides: " + (GM.f_string(GM.G["speedy"])))))
	(GM.f_draw_text(16.0, 100.0, ("Score: " + (GM.f_string(GM.G["pts"])))))
	if (((GM.G["deaths"] > 0.0))):
		(GM.f_draw_sprite(41.0, 1.0, 15.0, 120.0))
	if (((GM.G["deaths"] > 1.0))):
		(GM.f_draw_sprite(41.0, 1.0, 45.0, 120.0))
	if (((GM.G["deaths"] > 2.0))):
		(GM.f_draw_sprite(41.0, 1.0, 75.0, 120.0))
	if (((GM.G["deaths"] > 3.0))):
		(GM.f_draw_sprite(41.0, 1.0, 105.0, 120.0))
	if (((GM.G["deaths"] > 4.0))):
		(GM.f_draw_sprite(41.0, 1.0, 135.0, 120.0))
