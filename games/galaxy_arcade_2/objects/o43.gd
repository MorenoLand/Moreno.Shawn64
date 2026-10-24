extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_alarm_0():
	(GM.f_instance_create(384.0, 519.0, 40.0))
func ev_step():
	if (((absf((GM.f_instance_number(57.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(58.0)) - 0.0) < 0.00001))):
			if (((absf((GM.f_instance_number(46.0)) - 0.0) < 0.00001))):
				if (((absf((GM.f_instance_number(47.0)) - 0.0) < 0.00001))):
					if (((absf((GM.f_instance_number(52.0)) - 0.0) < 0.00001))):
						if (((absf((GM.f_instance_number(60.0)) - 0.0) < 0.00001))):
							if (((absf((GM.f_instance_number(457.0)) - 0.0) < 0.00001))):
								(GM.f_room_goto_next())
							else:
								if (((GM.score > GM.G["zzhigh"]))):
									GM.G["zzhigh"] = GM.score
								(GM.f_room_goto(2.0))
