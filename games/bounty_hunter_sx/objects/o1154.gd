extends "res://games/bounty_hunter_sx/objects/o1114.gd"
func ev_draw():
	(GM.f_draw_sprite(1096.0, (-1.0), ((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5), ((GM.view_yview[0] + (768.0 / 2.0)) - 157.0)))
	(GM.f_action_draw_font("Courier", 10.0, 0.0, 0.0))
	(GM.f_draw_set_color(8421504.0))
	GM.font_align = 0.0
	if (((absf(GM.G["reverse"] - 0.0) < 0.00001))):
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 65.0), "Reverse Boosters - 200z"))
	else:
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 65.0), "SOLD OUT"))
	if (((absf(GM.G["topspeed"] - 15.0) < 0.00001))):
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 100.0), "Speed Upgrade - 500z"))
	else:
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 100.0), "SOLD OUT"))
	if (((absf(GM.G["goodluck"] - 0.0) < 0.00001))):
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 135.0), "Good Luck Charm - 750z"))
	else:
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 135.0), "SOLD OUT"))
	if (((GM.G["ftank"] == "Fuel Tank 1"))):
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 170.0), "Fuel Efficient Engine - 750z"))
	else:
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 170.0), "SOLD OUT"))
	if (((absf(GM.G["accel"] - 0.5) < 0.00001))):
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 205.0), "Acceleration Upgrade - 400z"))
	else:
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 205.0), "SOLD OUT"))
	(GM.f_action_draw_font("Courier", 15.0, 0.0, 0.0))
	(GM.f_draw_set_color(8421504.0))
	GM.font_align = 1.0
	(GM.f_draw_text((GM.view_xview[0] + (1024.0 / 2.0)), (GM.view_yview[0] + 700.0), "PUSH SHIFT TO EXIT"))
	(GM.f_draw_text((GM.view_xview[0] + (1024.0 / 2.0)), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 17.0), ("" + (GM.f_string(GM.G["planetat"])))))
