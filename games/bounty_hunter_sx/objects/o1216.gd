extends "res://games/bounty_hunter_sx/objects/o1114.gd"
func ev_draw():
	(GM.f_draw_sprite(1096.0, (-1.0), ((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5), ((GM.view_yview[0] + (768.0 / 2.0)) - 157.0)))
	(GM.f_action_draw_font("Courier", 10.0, 0.0, 0.0))
	(GM.f_draw_set_color(8421504.0))
	GM.font_align = 0.0
	if ((GM.G["sheild"] == "Shield Level 3")):
		if ((absf(GM.G["myweapon"] - 4.0) < 0.00001)):
			if ((GM.G["ftank"] == "Fuel Tank 2")):
				if ((absf(GM.G["shotspeed"] - 1.0) < 0.00001)):
					if ((absf(GM.G["minelaunch"] - 1.0) < 0.00001)):
						if ((absf(GM.G["missilelaunch"] - 1.0) < 0.00001)):
							if ((absf(GM.G["reverse"] - 1.0) < 0.00001)):
								if ((absf(GM.G["topspeed"] - 21.0) < 0.00001)):
									if ((absf(GM.G["goodluck"] - 1.0) < 0.00001)):
										if ((absf(GM.G["accel"] - 0.7) < 0.00001)):
											if ((absf(GM.G["ucolor"] - 1.0) < 0.00001)):
												if ((absf(GM.G["maphave"] - 0.0) < 0.00001)):
													(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 65.0), "Torn Map - 5000z"))
												else:
													(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 65.0), "SOLD OUT"))
												if ((absf(GM.G["orbhave"] - 0.0) < 0.00001)):
													(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 100.0), "Pirates Orb - 5000z"))
												else:
													(GM.f_draw_text((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 80.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 100.0), "SOLD OUT"))
	(GM.f_action_draw_font("Courier", 15.0, 0.0, 0.0))
	(GM.f_draw_set_color(8421504.0))
	GM.font_align = 1.0
	(GM.f_draw_text((GM.view_xview[0] + (1024.0 / 2.0)), (GM.view_yview[0] + 700.0), "PUSH SHIFT TO EXIT"))
	(GM.f_draw_text((GM.view_xview[0] + (1024.0 / 2.0)), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 17.0), ("" + (GM.f_string(GM.G["planetat"])))))
