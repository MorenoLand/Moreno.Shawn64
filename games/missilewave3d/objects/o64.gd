extends "res://games/missilewave3d/scripts.gd"
var v_jscore = 0.0
var v_mspeed = 0.0
var v_pup1 = 0.0
var v_pup2 = 0.0
var v_pup3 = 0.0
var v_randoom = 0.0
var v_wave1 = 0.0
var v_wave2 = 0.0
var v_wave3 = 0.0
var v_wave4 = 0.0
var v_wave5 = 0.0
var v_wave6 = 0.0
var v_wave7 = 0.0
var v_wave8 = 0.0
func ev_create():
	v_wave1 = 1.0
	v_wave2 = 1.0
	v_wave3 = 1.0
	v_wave4 = 1.0
	v_wave5 = 1.0
	v_wave6 = 1.0
	v_wave7 = 1.0
	v_wave8 = 1.0
	v_pup1 = 1.0
	v_pup2 = 1.0
	v_pup3 = 1.0
	v_mspeed = 50.0
	v_jscore = 0.0
	GM.health = 100.0
	(GM.f_sound_play(8.0))
func ev_step():
	if (((GM.health < 50.0))):
		if ((((GM.f_random(50.0)) < 1.0))):
			(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 103.0))
	if (((GM.health < 0.0))):
		if (((absf((GM.f_instance_number(105.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create(315.5, 20.0, 105.0))
	(GM.f_instance_create((GM.view_xview[int(0.0)] + (GM.f_random(800.0))), (GM.view_yview[int(0.0)] + (GM.f_random(600.0))), 23.0))
	if ((((GM.f_random(v_mspeed)) < 1.0))):
		v_randoom = (GM.f_round((GM.f_random(10.0))))
		if ((absf(v_randoom - 1.0) < 0.00001)):
			(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 20.0))
		else:
			if ((absf(v_randoom - 2.0) < 0.00001)):
				(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 8.0))
			else:
				if ((absf(v_randoom - 3.0) < 0.00001)):
					(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 4.0))
				else:
					if ((absf(v_randoom - 4.0) < 0.00001)):
						(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 45.0))
					else:
						if ((absf(v_randoom - 5.0) < 0.00001)):
							(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 43.0))
						else:
							if ((absf(v_randoom - 6.0) < 0.00001)):
								(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 52.0))
							else:
								if ((absf(v_randoom - 7.0) < 0.00001)):
									(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 28.0))
								else:
									if ((absf(v_randoom - 8.0) < 0.00001)):
										(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 33.0))
									else:
										if ((absf(v_randoom - 9.0) < 0.00001)):
											(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 1.0))
										else:
											if ((absf(v_randoom - 10.0) < 0.00001)):
												(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(80.0)), 99.0))
	if ((absf(v_wave1 - 1.0) < 0.00001)):
		if ((v_jscore > 19.0)):
			(GM.f_instance_create(0.0, 0.0, 74.0))
			v_wave1 = 0.0
	if ((absf(v_wave2 - 1.0) < 0.00001)):
		if ((v_jscore > 39.0)):
			(GM.f_instance_create(0.0, 0.0, 74.0))
			v_wave2 = 0.0
	if ((absf(v_wave3 - 1.0) < 0.00001)):
		if ((v_jscore > 59.0)):
			(GM.f_instance_create(0.0, 0.0, 74.0))
			v_wave3 = 0.0
	if ((absf(v_wave4 - 1.0) < 0.00001)):
		if ((v_jscore > 79.0)):
			(GM.f_instance_create(0.0, 0.0, 74.0))
			v_wave4 = 0.0
	if ((absf(v_wave5 - 1.0) < 0.00001)):
		if ((v_jscore > 99.0)):
			(GM.f_instance_create(0.0, 0.0, 74.0))
			v_wave5 = 0.0
	if ((absf(v_wave6 - 1.0) < 0.00001)):
		if ((v_jscore > 119.0)):
			(GM.f_instance_create(0.0, 0.0, 74.0))
			v_wave6 = 0.0
	if ((absf(v_wave7 - 1.0) < 0.00001)):
		if ((v_jscore > 139.0)):
			(GM.f_instance_create(0.0, 0.0, 74.0))
			v_wave7 = 0.0
	if ((absf(v_wave8 - 1.0) < 0.00001)):
		if ((v_jscore > 159.0)):
			(GM.f_instance_create(0.0, 0.0, 74.0))
			v_wave8 = 0.0
	if ((absf(v_pup1 - 1.0) < 0.00001)):
		if ((GM.health < 75.0)):
			(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 79.0))
			v_pup1 = 0.0
	if ((absf(v_pup2 - 1.0) < 0.00001)):
		if ((GM.health < 50.0)):
			(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 79.0))
			v_pup2 = 0.0
	if ((absf(v_pup3 - 1.0) < 0.00001)):
		if ((GM.health < 25.0)):
			(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 79.0))
			v_pup3 = 0.0
	if (((GM.health < 25.0))):
		if (((absf((GM.f_instance_number(104.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create(0.0, 0.0, 104.0))
		if ((((GM.f_random(10.0)) < 1.0))):
			(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 103.0))
func ev_other_4():
	(GM.f_sound_loop(7.0))
func ev_draw():
	(GM.f_action_draw_font("Courier", 0.0, 0.0, 0.0))
	(GM.f_draw_set_color(0.0))
	GM.font_align = 1.0
	(GM.f_draw_text(400.0, 20.0, "Classic Mode"))
	(GM.f_draw_text(400.0, 40.0, ("Score: " + (GM.f_string(v_jscore)))))
	(GM.f_draw_text(400.0, 580.0, ("High Score: " + (GM.f_string(GM.G["practiceh"])))))
	(GM.f_draw_healthbar(300.0, 0.0, 500.0, 20.0, GM.health, 0.0, 255.0, 65280.0, 0.0, 1.0, 1.0))
