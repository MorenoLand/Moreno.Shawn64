extends "res://games/bounty_hunter_sx/objects/o1114.gd"
func ev_draw():
	(GM.f_draw_sprite(1096.0, (-1.0), ((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5), ((GM.view_yview[0] + (768.0 / 2.0)) - 157.0)))
	(GM.f_action_draw_font("Courier", 10.0, 0.0, 0.0))
	(GM.f_draw_set_color(8421504.0))
	GM.font_align = 0.0
	if (((absf(GM.G["myweapon"] - 1.0) < 0.00001))):
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 65.0), "Gun Upgrade - 500z"))
	if (((absf(GM.G["myweapon"] - 2.0) < 0.00001))):
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 65.0), "Gun Upgrade - 1000z"))
	if (((absf(GM.G["myweapon"] - 3.0) < 0.00001))):
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 65.0), "Gun Upgrade - 1500z"))
	if (((absf(GM.G["myweapon"] - 4.0) < 0.00001))):
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 65.0), "YOUR WEAPON IS FULLY UPGRADED"))
	if (((absf(GM.G["myweapon"] - 5.0) < 0.00001))):
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 65.0), "YOUR WEAPON IS FULLY UPGRADED"))
	if (((absf(GM.G["shotspeed"] - 0.0) < 0.00001))):
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 100.0), "Shot Speed Upgrade - 500z"))
	else:
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 100.0), "SOLD OUT"))
	if (((absf(GM.G["missilelaunch"] - 1.0) < 0.00001))):
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 135.0), "SOLD OUT"))
	else:
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 135.0), "Missile Launcher - 500z"))
	if (not (((absf(GM.G["missiles"] - 10.0) < 0.00001)))):
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 170.0), "Missile Refill - 100z"))
	else:
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 170.0), "MAXIMUM MISSILE CAPASITY"))
	if (not (((absf(GM.G["minelaunch"] - 1.0) < 0.00001)))):
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 205.0), "Mine Launcher - 500z"))
	else:
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 205.0), "SOLD OUT"))
	if (not (((absf(GM.G["mines"] - 10.0) < 0.00001)))):
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 240.0), "10 Mines - 100z"))
	else:
		(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 240.0), "MAXIMUM MINE CAPASITY"))
	if (((absf(GM.G["bossbeat"] - 1.0) < 0.00001))):
		if (((absf(GM.G["myweapon"] - 5.0) < 0.00001))):
			(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 275.0), "SOLD OUT"))
		else:
			(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 275.0), "MEGA GUN - 1000z"))
	(GM.f_action_draw_font("Courier", 15.0, 0.0, 0.0))
	(GM.f_draw_set_color(8421504.0))
	GM.font_align = 1.0
	(GM.f_draw_text((GM.view_xview[0] + (1024.0 / 2.0)), (GM.view_yview[0] + 700.0), "PUSH SHIFT TO EXIT"))
	(GM.f_draw_text((GM.view_xview[0] + (1024.0 / 2.0)), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 17.0), ("" + (GM.f_string(GM.G["planetat"])))))
