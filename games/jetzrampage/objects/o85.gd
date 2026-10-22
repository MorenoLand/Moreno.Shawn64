extends "res://games/jetzrampage/scripts.gd"
var v_alive = 0.0
var v_mypower = 0.0
func ev_create():
	v_mypower = 2.0
	v_alive = 1.0
	if ((((GM.f_random(2.0)) < 1.0))):
		if ((((GM.f_random(2.0)) < 1.0))):
			(GM.f_action_move(self, "000100000", 3.0, 0.0))
			sprite_index = 85.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
		else:
			(GM.f_action_move(self, "000001000", 3.0, 0.0))
			sprite_index = 82.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
	else:
		if ((((GM.f_random(2.0)) < 1.0))):
			(GM.f_action_move(self, "000001000", 3.0, 0.0))
			sprite_index = 83.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
		else:
			sprite_index = 84.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
			(GM.f_action_move(self, "000100000", 3.0, 0.0))
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
func ev_col_126():
	if (((absf(v_alive - 1.0) < 0.00001))):
		v_mypower = v_mypower + (-1.0)
		if (((absf(v_mypower - 0.0) < 0.00001))):
			(GM.f_instance_create((x + 0.0), (y + 0.0), 106.0))
			(GM.f_sound_play(17.0))
			for _r40 in range(int((30.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
			(GM.f_action_move(self, "000010000", 0.0, 0.0))
			if (((absf(sprite_index - 82.0) < 0.00001))):
				sprite_index = 112.0
				if ((1.0 >= 0.0)):
					image_index = 1.0
				image_speed = 0.0
			else:
				if (((absf(sprite_index - 85.0) < 0.00001))):
					sprite_index = 111.0
					if ((1.0 >= 0.0)):
						image_index = 1.0
					image_speed = 0.0
			if (((absf(sprite_index - 83.0) < 0.00001))):
				sprite_index = 113.0
				if ((1.0 >= 0.0)):
					image_index = 1.0
				image_speed = 0.0
			else:
				if (((absf(sprite_index - 84.0) < 0.00001))):
					sprite_index = 114.0
					if ((1.0 >= 0.0)):
						image_index = 1.0
					image_speed = 0.0
			v_alive = 0.0
		else:
			(GM.f_sound_play(17.0))
			for _r41 in range(int((30.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
func ev_col_103():
	if (((absf(v_alive - 1.0) < 0.00001))):
		(GM.f_instance_create(0.0, 0.0, 130.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 106.0))
		for _r42 in range(int((30.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
		(GM.f_action_move(self, "000010000", 0.0, 0.0))
		if (((absf(sprite_index - 82.0) < 0.00001))):
			sprite_index = 112.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
		else:
			if (((absf(sprite_index - 85.0) < 0.00001))):
				sprite_index = 111.0
				if ((1.0 >= 0.0)):
					image_index = 1.0
				image_speed = 0.0
		if (((absf(sprite_index - 83.0) < 0.00001))):
			sprite_index = 113.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
		else:
			if (((absf(sprite_index - 84.0) < 0.00001))):
				sprite_index = 114.0
				if ((1.0 >= 0.0)):
					image_index = 1.0
				image_speed = 0.0
		v_alive = 0.0
func ev_col_10():
	if (((absf(v_alive - 1.0) < 0.00001))):
		v_mypower = v_mypower + (-1.0)
		if (((absf(v_mypower - 0.0) < 0.00001))):
			(GM.f_instance_create(0.0, 0.0, 130.0))
			(GM.f_instance_create((x + 0.0), (y + 0.0), 106.0))
			for _r43 in range(int((30.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
			(GM.f_action_move(self, "000010000", 0.0, 0.0))
			if (((absf(sprite_index - 82.0) < 0.00001))):
				sprite_index = 112.0
				if ((1.0 >= 0.0)):
					image_index = 1.0
				image_speed = 0.0
			else:
				if (((absf(sprite_index - 85.0) < 0.00001))):
					sprite_index = 111.0
					if ((1.0 >= 0.0)):
						image_index = 1.0
					image_speed = 0.0
			if (((absf(sprite_index - 83.0) < 0.00001))):
				sprite_index = 113.0
				if ((1.0 >= 0.0)):
					image_index = 1.0
				image_speed = 0.0
			else:
				if (((absf(sprite_index - 84.0) < 0.00001))):
					sprite_index = 114.0
					if ((1.0 >= 0.0)):
						image_index = 1.0
					image_speed = 0.0
			v_alive = 0.0
		else:
			(GM.f_sound_play(12.0))
			for _r44 in range(int((30.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
