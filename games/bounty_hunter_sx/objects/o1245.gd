extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_step():
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
												if ((absf(GM.G["poopooo"] - 0.0) < 0.00001)):
													(GM.f_instance_create(0.0, 0.0, 1246.0))
													GM.G["poopooo"] = 1.0
