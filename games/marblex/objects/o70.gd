extends "res://games/marblex/scripts.gd"
func ev_create():
	if (((absf(GM.G["km"] - 0.0) < 0.00001))):
		sprite_index = 45.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
	else:
		sprite_index = 46.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
func ev_mouse_4():
	(GM.f_sound_play(19.0))
	if (((absf(sprite_index - 45.0) < 0.00001))):
		GM.G["km"] = 1.0
		sprite_index = 46.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
	else:
		sprite_index = 45.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
		GM.G["km"] = 0.0
