extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	if ((((GM.f_random(2.0)) < 1.0))):
		if ((((GM.f_random(2.0)) < 1.0))):
			sprite_index = 1163.0
			image_speed = 1.0
			(GM.f_action_move(self, "000001000", 4.0, 0.0))
		else:
			sprite_index = 1165.0
			image_speed = 1.0
			(GM.f_action_move(self, "000100000", 4.0, 0.0))
	else:
		if ((((GM.f_random(2.0)) < 1.0))):
			sprite_index = 1164.0
			image_speed = 1.0
			(GM.f_action_move(self, "000001000", 4.0, 0.0))
		else:
			sprite_index = 1166.0
			image_speed = 1.0
			(GM.f_action_move(self, "000100000", 4.0, 0.0))
func ev_destroy():
	(GM.f_instance_create((x + (-5.0)), (y + 0.0), 1190.0))
func ev_col_1185():
	(GM.f_sound_play(344.0))
	for _r156 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_destroy(self))
func ev_col_1182():
	hspeed = (-hspeed)
	if (((absf(sprite_index - 1164.0) < 0.00001))):
		sprite_index = 1166.0
		image_speed = 1.0
	else:
		if (((absf(sprite_index - 1166.0) < 0.00001))):
			sprite_index = 1164.0
			image_speed = 1.0
		else:
			if (((absf(sprite_index - 1165.0) < 0.00001))):
				sprite_index = 1163.0
				image_speed = 1.0
			else:
				if (((absf(sprite_index - 1163.0) < 0.00001))):
					sprite_index = 1165.0
					image_speed = 1.0
func ev_col_1174():
	(GM.f_sound_play(344.0))
	for _r157 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_destroy(self))
func ev_col_1170():
	(GM.f_sound_play(344.0))
	for _r158 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_destroy(self))
func ev_col_1138():
	(GM.f_sound_play(344.0))
	for _r159 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_destroy(self))
