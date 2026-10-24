extends "res://games/missilewave3d/scripts.gd"
var v_jscore = 0.0
var v_level = 0.0
var v_mis = 0.0
var v_mspeed = 0.0
var v_points = 0.0
var v_pup1 = 0.0
var v_pup2 = 0.0
var v_pup3 = 0.0
func ev_create():
	(GM.f_sound_play(8.0))
	v_level = 1.0
	v_mis = 1.0
	v_points = 20.0
	v_pup1 = 1.0
	v_pup2 = 1.0
	v_pup3 = 1.0
	v_mspeed = 25.0
	v_jscore = 0.0
	v_jscore = 0.0
	GM.health = 100.0
	(GM.f_sound_play(8.0))
func ev_step():
	if (((GM.health < 50.0))):
		if ((((GM.f_random(50.0)) < 1.0))):
			(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 103.0))
	if (((GM.health < 25.0))):
		if (((absf((GM.f_instance_number(104.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create(0.0, 0.0, 104.0))
		if ((((GM.f_random(10.0)) < 1.0))):
			(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 103.0))
	if ((((GM.f_random(v_mspeed)) < 1.0))):
		if ((v_level > 1.0)):
			v_mis = (GM.f_round((GM.f_random(v_level))))
		if ((absf(v_level - 4.0) < 0.00001)):
			v_mis = 4.0
		if ((absf(v_level - 8.0) < 0.00001)):
			v_mis = 8.0
		if ((absf(v_level - 12.0) < 0.00001)):
			v_mis = 12.0
		if ((absf(v_mis - 1.0) < 0.00001)):
			(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 20.0))
		if ((absf(v_mis - 2.0) < 0.00001)):
			(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 8.0))
		if ((absf(v_mis - 3.0) < 0.00001)):
			(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 4.0))
		if ((absf(v_mis - 5.0) < 0.00001)):
			(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 1.0))
		if ((absf(v_mis - 6.0) < 0.00001)):
			(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 28.0))
		if ((absf(v_mis - 7.0) < 0.00001)):
			(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 52.0))
		if ((absf(v_mis - 9.0) < 0.00001)):
			(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 33.0))
		if ((absf(v_mis - 10.0) < 0.00001)):
			(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 43.0))
		if ((absf(v_mis - 11.0) < 0.00001)):
			(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 45.0))
		if ((absf(v_mis - 13.0) < 0.00001)):
			(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 99.0))
		if ((absf(v_mis - 14.0) < 0.00001)):
			(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 20.0))
		if ((absf(v_mis - 15.0) < 0.00001)):
			(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 20.0))
		if ((absf(v_mis - 16.0) < 0.00001)):
			(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 20.0))
		if ((absf(v_mis - 17.0) < 0.00001)):
			(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 20.0))
		if ((absf(v_mis - 18.0) < 0.00001)):
			(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 20.0))
		if ((absf(v_mis - 19.0) < 0.00001)):
			(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 20.0))
		if ((absf(v_mis - 20.0) < 0.00001)):
			(GM.f_instance_create((GM.f_random(580.0)), (GM.f_random(380.0)), 20.0))
		if ((absf((GM.f_instance_number(74.0)) - 0.0) < 0.00001)):
			if ((absf(v_level - 4.0) < 0.00001)):
				(GM.f_instance_create(0.0, 0.0, 74.0))
			if ((absf(v_level - 8.0) < 0.00001)):
				(GM.f_instance_create(0.0, 0.0, 74.0))
			if ((absf(v_level - 12.0) < 0.00001)):
				(GM.f_instance_create(0.0, 0.0, 74.0))
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
	(GM.f_instance_create((GM.view_xview[int(0.0)] + (GM.f_random(800.0))), (GM.view_yview[int(0.0)] + (GM.f_random(600.0))), 23.0))
	if (((v_points < 1.0))):
		(GM.f_sound_play(8.0))
		v_level = v_level + 1.0
		v_points = 20.0
	if (((GM.health < 0.0))):
		if (((absf((GM.f_instance_number(106.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create(315.5, 20.0, 106.0))
func ev_other_4():
	(GM.f_sound_loop(7.0))
func ev_draw():
	(GM.f_action_draw_font("Courier", 0.0, 0.0, 0.0))
	(GM.f_draw_set_color(0.0))
	GM.font_align = 1.0
	(GM.f_draw_text(400.0, 20.0, (((("Wave " + (GM.f_string(v_level))) + " ") + (GM.f_string(v_points))) + "/20")))
	(GM.f_draw_text(400.0, 40.0, ("Score: " + (GM.f_string(v_jscore)))))
	(GM.f_draw_text(400.0, 580.0, ("High Score: " + (GM.f_string(GM.G["stageh"])))))
	(GM.f_draw_healthbar(300.0, 0.0, 500.0, 20.0, GM.health, 0.0, 255.0, 65280.0, 0.0, 1.0, 1.0))
