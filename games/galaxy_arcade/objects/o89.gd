extends "res://games/galaxy_arcade/scripts.gd"
func ev_step():
	if (((absf(GM.G["guymisses"] - 0.0) < 0.00001))):
		if (((GM.G["guys"] > GM.G["savehigh"]))):
			GM.G["savehigh"] = GM.G["guys"]
		(GM.f_room_goto(3.0))
	if (((GM.G["guys"] < 20.0))):
		if ((((GM.f_random(600.0)) < 1.0))):
			(GM.f_instance_create((-20.0), 50.0, 90.0))
		if ((((GM.f_random(600.0)) < 1.0))):
			(GM.f_instance_create((-20.0), 150.0, 90.0))
		if ((((GM.f_random(600.0)) < 1.0))):
			(GM.f_instance_create((-20.0), 250.0, 90.0))
		if ((((GM.f_random(600.0)) < 1.0))):
			(GM.f_instance_create((-20.0), 350.0, 90.0))
	if (((GM.G["guys"] > 19.0))):
		if (((GM.G["guys"] < 40.0))):
			if ((((GM.f_random(500.0)) < 1.0))):
				(GM.f_instance_create((-20.0), 50.0, 90.0))
			if ((((GM.f_random(500.0)) < 1.0))):
				(GM.f_instance_create((-20.0), 150.0, 90.0))
			if ((((GM.f_random(500.0)) < 1.0))):
				(GM.f_instance_create((-20.0), 250.0, 90.0))
			if ((((GM.f_random(500.0)) < 1.0))):
				(GM.f_instance_create((-20.0), 350.0, 90.0))
	if (((GM.G["guys"] > 39.0))):
		if (((GM.G["guys"] < 60.0))):
			if ((((GM.f_random(400.0)) < 1.0))):
				(GM.f_instance_create((-20.0), 50.0, 90.0))
			if ((((GM.f_random(400.0)) < 1.0))):
				(GM.f_instance_create((-20.0), 150.0, 90.0))
			if ((((GM.f_random(400.0)) < 1.0))):
				(GM.f_instance_create((-20.0), 250.0, 90.0))
			if ((((GM.f_random(400.0)) < 1.0))):
				(GM.f_instance_create((-20.0), 350.0, 90.0))
	if (((GM.G["guys"] > 59.0))):
		if (((GM.G["guys"] < 80.0))):
			if ((((GM.f_random(200.0)) < 1.0))):
				(GM.f_instance_create((-20.0), 50.0, 90.0))
			if ((((GM.f_random(200.0)) < 1.0))):
				(GM.f_instance_create((-20.0), 150.0, 90.0))
			if ((((GM.f_random(200.0)) < 1.0))):
				(GM.f_instance_create((-20.0), 250.0, 90.0))
			if ((((GM.f_random(200.0)) < 1.0))):
				(GM.f_instance_create((-20.0), 350.0, 90.0))
	if (((GM.G["guys"] > 79.0))):
		if ((((GM.f_random(100.0)) < 1.0))):
			(GM.f_instance_create((-20.0), 50.0, 90.0))
		if ((((GM.f_random(100.0)) < 1.0))):
			(GM.f_instance_create((-20.0), 150.0, 90.0))
		if ((((GM.f_random(100.0)) < 1.0))):
			(GM.f_instance_create((-20.0), 250.0, 90.0))
		if ((((GM.f_random(100.0)) < 1.0))):
			(GM.f_instance_create((-20.0), 350.0, 90.0))
func ev_draw():
	(GM.f_action_draw_font("Transistor", 28.0, 0.0, 0.0))
	(GM.f_draw_set_color(255.0))
	(GM.f_draw_text(50.0, 10.0, ("Score: " + (GM.f_string(GM.G["guys"])))))
	(GM.f_draw_text(320.0, 10.0, ("High Score: " + (GM.f_string(GM.G["savehigh"])))))
	(GM.f_draw_text(50.0, 64.0, ("misses " + (GM.f_string(GM.G["guymisses"])))))
	if (((GM.G["guys"] < 20.0))):
		(GM.f_draw_text(320.0, 64.0, "Level 1"))
	if (((GM.G["guys"] > 19.0))):
		if (((GM.G["guys"] < 40.0))):
			(GM.f_draw_text(320.0, 64.0, "Level 2"))
	if (((GM.G["guys"] > 39.0))):
		if (((GM.G["guys"] < 60.0))):
			(GM.f_draw_text(320.0, 64.0, "Level 3"))
	if (((GM.G["guys"] > 59.0))):
		if (((GM.G["guys"] < 80.0))):
			(GM.f_draw_text(320.0, 64.0, "Level 4"))
	if (((GM.G["guys"] > 79.0))):
		(GM.f_draw_text(320.0, 64.0, "Final Level"))
