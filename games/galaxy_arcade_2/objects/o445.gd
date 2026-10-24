extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	if (((alarm[int(0.0)] > 200.0))):
		if ((((GM.f_random(4.0)) < 1.0))):
			sprite_index = 437.0
			image_speed = 1.0
		else:
			if ((((GM.f_random(3.0)) < 1.0))):
				sprite_index = 438.0
				image_speed = 1.0
			else:
				if ((((GM.f_random(2.0)) < 1.0))):
					sprite_index = 439.0
					image_speed = 1.0
				else:
					sprite_index = 436.0
					image_speed = 1.0
	else:
		sprite_index = 437.0
		image_speed = 1.0
	(GM.f_action_move(self, "000000010", ((GM.f_random(8.0)) + 4.0), 0.0))
func ev_col_1251():
	if (((absf(sprite_index - 496.0) < 0.00001))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_sound_play(126.0))
		GM.G["airscore2"] = GM.G["airscore2"] + (-100.0)
		(GM.f_instance_destroy(self))
	if (((absf(sprite_index - 437.0) < 0.00001))):
		(GM.f_sound_play(0.0))
		GM.G["airscore2"] = GM.G["airscore2"] + 100.0
		(GM.f_instance_destroy(self))
	if (((absf(sprite_index - 438.0) < 0.00001))):
		(GM.f_sound_play(0.0))
		GM.G["airscore2"] = GM.G["airscore2"] + 50.0
		(GM.f_instance_destroy(self))
	if (((absf(sprite_index - 439.0) < 0.00001))):
		(GM.f_sound_play(0.0))
		GM.G["airscore2"] = GM.G["airscore2"] + 25.0
		(GM.f_instance_destroy(self))
func ev_col_442():
	if (((absf(sprite_index - 496.0) < 0.00001))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 455.0))
		(GM.f_sound_play(126.0))
		GM.G["airscore"] = GM.G["airscore"] + (-100.0)
		(GM.f_instance_destroy(self))
	if (((absf(sprite_index - 437.0) < 0.00001))):
		(GM.f_sound_play(0.0))
		GM.G["airscore"] = GM.G["airscore"] + 100.0
		(GM.f_instance_destroy(self))
	if (((absf(sprite_index - 438.0) < 0.00001))):
		(GM.f_sound_play(0.0))
		GM.G["airscore"] = GM.G["airscore"] + 50.0
		(GM.f_instance_destroy(self))
	if (((absf(sprite_index - 439.0) < 0.00001))):
		(GM.f_sound_play(0.0))
		GM.G["airscore"] = GM.G["airscore"] + 25.0
		(GM.f_instance_destroy(self))
