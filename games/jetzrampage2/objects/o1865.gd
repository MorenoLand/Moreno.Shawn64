extends "res://games/jetzrampage2/scripts.gd"
var v_alive = 0.0
var v_image_single = 0.0
var v_mypower = 0.0
func ev_create():
	v_alive = 1.0
	v_image_single = 0.0
	v_mypower = 5.0
func ev_col_103():
	if (((absf(v_alive - 1.0) < 0.00001))):
		(GM.f_instance_create((x + 0.0), (y + 25.0), 486.0))
		(self.script_random_powerup(0.0, 0.0, 0.0, 0.0, 0.0))
		GM.G["lives"] = GM.G["lives"] + 0.5
		(GM.f_sound_play(179.0))
		for _r324 in range(int((100.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 90.0))
		v_alive = 0.0
		v_image_single = 1.0
func ev_col_10():
	if (((absf(v_alive - 1.0) < 0.00001))):
		if (((v_mypower > 0.0))):
			v_mypower = v_mypower + (-1.0)
		else:
			(GM.f_instance_create((x + 0.0), (y + 25.0), 486.0))
			(self.script_random_powerup(0.0, 0.0, 0.0, 0.0, 0.0))
			GM.G["lives"] = GM.G["lives"] + 0.5
			(GM.f_sound_play(179.0))
			for _r325 in range(int((50.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 90.0))
			v_alive = 0.0
			v_image_single = 1.0
