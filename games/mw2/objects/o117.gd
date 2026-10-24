extends "res://games/mw2/objects/o30.gd"
func ev_destroy():
	(GM.f_mplay_message_send(0.0, 10.0, 0.0))
	if ((((GM.f_random(12.0)) < 1.0))):
		(GM.f_instance_create((GM.f_random(520.0)), (-20.0), 106.0))
	else:
		if ((((GM.f_random(11.0)) < 1.0))):
			(GM.f_instance_create((GM.f_random(520.0)), (-20.0), 112.0))
		else:
			if ((((GM.f_random(10.0)) < 1.0))):
				(GM.f_instance_create((GM.f_random(520.0)), (-20.0), 124.0))
			else:
				if ((((GM.f_random(9.0)) < 1.0))):
					(GM.f_instance_create((GM.f_random(520.0)), (-20.0), 127.0))
				else:
					if ((((GM.f_random(8.0)) < 1.0))):
						(GM.f_instance_create((GM.f_random(520.0)), (-20.0), 131.0))
					else:
						if ((((GM.f_random(7.0)) < 1.0))):
							(GM.f_instance_create((GM.f_random(520.0)), (-20.0), 121.0))
						else:
							if ((((GM.f_random(6.0)) < 1.0))):
								(GM.f_instance_create((GM.f_random(520.0)), (-20.0), 122.0))
							else:
								if ((((GM.f_random(5.0)) < 1.0))):
									(GM.f_instance_create((GM.f_random(520.0)), (-20.0), 135.0))
								else:
									if ((((GM.f_random(4.0)) < 1.0))):
										(GM.f_instance_create((GM.f_random(520.0)), (-20.0), 147.0))
									else:
										if ((((GM.f_random(3.0)) < 1.0))):
											(GM.f_instance_create((GM.f_random(520.0)), (-20.0), 167.0))
										else:
											if ((((GM.f_random(2.0)) < 1.0))):
												(GM.f_instance_create((GM.f_random(520.0)), (-20.0), 175.0))
											else:
												(GM.f_instance_create((GM.f_random(520.0)), (-20.0), 179.0))
