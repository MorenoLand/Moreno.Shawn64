extends "res://games/bounty_hunter_sx/objects/o1114.gd"
func ev_draw():
	(GM.f_draw_sprite(1096.0, (-1.0), ((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5), ((GM.view_yview[0] + (768.0 / 2.0)) - 157.0)))
	(GM.f_action_draw_font("Courier", 10.0, 0.0, 0.0))
	(GM.f_draw_set_color(8421504.0))
	GM.font_align = 0.0
	if (((GM.G["fuel"] < 100.0))):
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 65.0), "Fuel - 1z for 1%"))
	else:
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 65.0), "FULL TANK"))
	if (((GM.health < 100.0))):
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 100.0), "Energy - 1z for 1%"))
	else:
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 100.0), "FULL ENERGY"))
	(GM.f_action_draw_font("Courier", 15.0, 0.0, 0.0))
	(GM.f_draw_set_color(8421504.0))
	GM.font_align = 1.0
	(GM.f_draw_text((GM.view_xview[0] + (1024.0 / 2.0)), (GM.view_yview[0] + 700.0), "PUSH SHIFT TO EXIT"))
	(GM.f_draw_text((GM.view_xview[0] + (1024.0 / 2.0)), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 17.0), ("" + (GM.f_string(GM.G["planetat"])))))
