extends "res://games/jetzrampage2/objects/o85.gd"
func ev_col_202():
	if (((x > (GM.vb(self.other, "x") + 38.0)))):
		if (((x < (GM.vb(self.other, "x") + 42.0)))):
			if ((((GM.f_random(5.0)) < 1.0))):
				(GM.f_instance_create((GM.vb(self.other, "x") + 40.0), (GM.vb(self.other, "y") + 40.0), 232.0))
				(GM.f_instance_create((GM.vb(self.other, "x") + 40.0), y, 230.0))
				(GM.f_instance_destroy(self))
func ev_col_166():
	if (((absf(sprite_index - 82.0) < 0.00001))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 168.0))
		(GM.f_instance_destroy(self))
	if (((absf(sprite_index - 85.0) < 0.00001))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 168.0))
		(GM.f_instance_destroy(self))
	if (((absf(sprite_index - 83.0) < 0.00001))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 173.0))
		(GM.f_instance_destroy(self))
	if (((absf(sprite_index - 84.0) < 0.00001))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 173.0))
		(GM.f_instance_destroy(self))
func ev_col_103():
	if (((absf(v_alive - 1.0) < 0.00001))):
		x = (x - 10.0)
		y = y
		(GM.f_instance_create(0.0, 0.0, 130.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 106.0))
		for _r366 in range(int((30.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
		(self.script_person_died(0.0, 0.0, 0.0, 0.0, 0.0))
		if ((absf(direction - 0.0) < 0.00001)):
			v_image_single = 0.0
		else:
			v_image_single = 1.0
		(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_col_10():
	if (((absf(v_alive - 1.0) < 0.00001))):
		v_mypower = v_mypower + (-1.0)
		if (((v_mypower > 0.0))):
			(GM.f_sound_play(86.0))
		if (((absf(v_mypower - 0.0) < 0.00001))):
			x = (x - 10.0)
			y = y
			(GM.f_instance_create(0.0, 0.0, 130.0))
			(GM.f_instance_create((x + 0.0), (y + 0.0), 106.0))
			for _r367 in range(int((30.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
			(self.script_person_died(0.0, 0.0, 0.0, 0.0, 0.0))
			if ((absf(direction - 0.0) < 0.00001)):
				v_image_single = 0.0
			else:
				v_image_single = 1.0
			(GM.f_action_move(self, "000010000", 0.0, 0.0))
		else:
			(GM.f_sound_play(12.0))
			for _r368 in range(int((30.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
