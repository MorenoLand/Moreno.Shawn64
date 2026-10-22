extends "res://games/jetzrampage2/objects/o543.gd"
func ev_step():
	if (((absf(v_shootnow - 1.0) < 0.00001))):
		if ((((GM.f_random(50.0)) < 1.0))):
			if (((x > GM.view_xview[0]))):
				if (((x < (GM.view_xview[0] + 800.0)))):
					(GM.f_sound_play(193.0))
			v_image_single = 1.0
			(GM.f_instance_create((x + 24.0), (y + 25.0), 140.0))
			alarm[int(0.0)] = 3.0
			v_shootnow = 0.0
