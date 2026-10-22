extends "res://games/jetzrampage2/scripts.gd"
var v_image_single = 0.0
var v_mypower = 0.0
var v_shootnow = 0.0
func ev_create():
	v_shootnow = 1.0
	v_image_single = 0.0
	v_mypower = 5.0
func ev_alarm_0():
	v_shootnow = 1.0
	v_image_single = 0.0
func ev_step():
	if (((absf(v_shootnow - 1.0) < 0.00001))):
		if ((((GM.f_random(50.0)) < 1.0))):
			if (((x > GM.view_xview[0]))):
				if (((x < (GM.view_xview[0] + 800.0)))):
					(GM.f_sound_play(193.0))
			v_image_single = 1.0
			(GM.f_instance_create((x + 33.0), (y + 26.0), 139.0))
			alarm[int(0.0)] = 3.0
			v_shootnow = 0.0
func ev_col_103():
	(GM.f_sound_play(15.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 233.0))
	(self.script_lives_add(0.0, 0.0, 0.0, 0.0, 0.0))
	(self.script_random_powerup(0.0, 0.0, 0.0, 0.0, 0.0))
	for _r237 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 90.0))
	(GM.f_instance_destroy(self))
func ev_col_10():
	if (((v_mypower > 0.0))):
		v_mypower = v_mypower + (-1.0)
	else:
		(GM.f_sound_play(15.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 233.0))
		(self.script_lives_add(0.0, 0.0, 0.0, 0.0, 0.0))
		(self.script_random_powerup(0.0, 0.0, 0.0, 0.0, 0.0))
		for _r238 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 90.0))
		(GM.f_instance_destroy(self))
