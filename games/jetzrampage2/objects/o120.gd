extends "res://games/jetzrampage2/scripts.gd"
var v_mypower = 0.0
func ev_create():
	hspeed = 20.0
	depth = (GM.room_width + 5.0)
	v_mypower = 5.0
func ev_step():
	if (((GM.G["lives"] > 59.0))):
		if (((x > (GM.vb(0.0, "x") - 550.0)))):
			if (((x < (GM.vb(0.0, "x") - 350.0)))):
				if ((((GM.f_random(5.0)) < 1.0))):
					depth = (-30.0)
					(GM.f_instance_create((x + 40.0), (y + 46.0), 124.0))
func ev_col_16():
	(GM.f_sound_play(15.0))
	(GM.f_instance_create(0.0, 0.0, 491.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 233.0))
	(GM.f_instance_destroy(self))
func ev_col_10():
	v_mypower = v_mypower + (-1.0)
	if (((v_mypower < 1.0))):
		(GM.f_sound_play(15.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 233.0))
		gravity_direction = 270.0
		gravity = 0.3
func ev_other_0():
	(GM.f_instance_create(0.0, 0.0, 491.0))
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite(120.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
