extends "res://games/bubblegum/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000001000", 2.0, 0.0))
func ev_step():
	if (((hspeed > 0.0))):
		sprite_index = 5.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
	else:
		if (((vspeed > 0.0))):
			sprite_index = 7.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
		else:
			if (((hspeed < 0.0))):
				sprite_index = 8.0
				if ((1.0 >= 0.0)):
					image_index = 1.0
				image_speed = 0.0
			else:
				if (((vspeed < 0.0))):
					sprite_index = 6.0
					if ((1.0 >= 0.0)):
						image_index = 1.0
					image_speed = 0.0
func ev_col_10():
	(GM.f_action_move(self, "010000000", 2.0, 0.0))
	sprite_index = 7.0
	if ((1.0 >= 0.0)):
		image_index = 1.0
	image_speed = 0.0
func ev_col_9():
	(GM.f_action_move(self, "000001000", 2.0, 0.0))
	sprite_index = 5.0
	if ((1.0 >= 0.0)):
		image_index = 1.0
	image_speed = 0.0
func ev_col_8():
	(GM.f_action_move(self, "000100000", 2.0, 0.0))
	sprite_index = 8.0
	if ((1.0 >= 0.0)):
		image_index = 1.0
	image_speed = 0.0
func ev_col_7():
	(GM.f_action_move(self, "000000010", 2.0, 0.0))
	sprite_index = 6.0
	if ((1.0 >= 0.0)):
		image_index = 1.0
	image_speed = 0.0
func ev_col_0():
	(GM.f_sound_play(22.0))
	for _r19 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 25.0))
	(GM.f_instance_destroy(self))
