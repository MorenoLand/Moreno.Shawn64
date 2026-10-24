extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	(GM.f_sound_loop(9.0))
	alarm[int(0.0)] = 2000.0
func ev_alarm_1():
	GM.G["distancetotarget"] = GM.G["distancetotarget"] + (-1.0)
	alarm[int(1.0)] = 1.0
func ev_alarm_0():
	(GM.f_instance_create((x + 5.0), (y + 1000.0), 110.0))
	(GM.f_instance_create(0.0, 1800.0, 115.0))
func ev_step():
	if (((absf((GM.f_instance_number(105.0)) - 1.0) < 0.00001))):
		alarm[int(1.0)] = 1.0
	if ((((GM.f_random(250.0)) < 1.0))):
		(GM.f_instance_create(100.0, 1000.0, 114.0))
	if ((((GM.f_random(250.0)) < 1.0))):
		(GM.f_instance_create(200.0, 1000.0, 114.0))
	if ((((GM.f_random(250.0)) < 1.0))):
		(GM.f_instance_create(300.0, 1000.0, 114.0))
	if ((((GM.f_random(250.0)) < 1.0))):
		(GM.f_instance_create(400.0, 1000.0, 114.0))
	if ((((GM.f_random(250.0)) < 1.0))):
		(GM.f_instance_create(500.0, 1000.0, 114.0))
	if ((((GM.f_random(250.0)) < 1.0))):
		(GM.f_instance_create(600.0, 1000.0, 114.0))
	if ((((GM.f_random(250.0)) < 1.0))):
		(GM.f_instance_create(700.0, 1000.0, 114.0))
	if ((((GM.f_random(250.0)) < 1.0))):
		(GM.f_instance_create(100.0, 1000.0, 122.0))
	if ((((GM.f_random(250.0)) < 1.0))):
		(GM.f_instance_create(200.0, 1000.0, 122.0))
	if ((((GM.f_random(250.0)) < 1.0))):
		(GM.f_instance_create(300.0, 1000.0, 122.0))
	if ((((GM.f_random(250.0)) < 1.0))):
		(GM.f_instance_create(400.0, 1000.0, 122.0))
	if ((((GM.f_random(250.0)) < 1.0))):
		(GM.f_instance_create(500.0, 1000.0, 122.0))
	if ((((GM.f_random(250.0)) < 1.0))):
		(GM.f_instance_create(600.0, 1000.0, 122.0))
	if ((((GM.f_random(250.0)) < 1.0))):
		(GM.f_instance_create(700.0, 1000.0, 122.0))
func ev_draw():
	(GM.f_action_draw_font("Transistor", 24.0, 1.0, 0.0))
	(GM.f_draw_set_color(255.0))
	(GM.f_draw_text(340.0, 10.0, ("High Score: " + (GM.f_string(GM.G["skyhighscore"])))))
	(GM.f_draw_text(340.0, 50.0, ("Score: " + (GM.f_string(GM.G["sky"])))))
	if (((absf((GM.f_instance_number(105.0)) - 1.0) < 0.00001))):
		(GM.f_action_draw_font("Transistor", 24.0, 1.0, 0.0))
		(GM.f_draw_set_color(255.0))
		(GM.f_draw_text(0.0, 0.0, ("ft to target   " + (GM.f_string(GM.G["distancetotarget"])))))
	else:
		(GM.f_draw_text(0.0, 0.0, "ft to target  ???"))
