extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	if ((((GM.f_random(2.0)) < 1.0))):
		sprite_index = 427.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
	alarm[int(0.0)] = ((GM.f_random(250.0)) + 250.0)
func ev_alarm_0():
	if (((absf(speed - 0.0) < 0.00001))):
		(GM.f_sound_play(82.0))
		if (((absf(sprite_index - 427.0) < 0.00001))):
			sprite_index = 428.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
		else:
			sprite_index = 235.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
		gravity_direction = 270.0
		gravity = 0.3
func ev_col_108():
	if (((absf(speed - 0.0) < 0.00001))):
		(GM.f_sound_play(82.0))
		if (((absf(sprite_index - 427.0) < 0.00001))):
			sprite_index = 428.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
		else:
			sprite_index = 235.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
		gravity_direction = 270.0
		gravity = 0.3
func ev_col_103():
	if (((absf(speed - 0.0) < 0.00001))):
		(GM.f_sound_play(82.0))
		if (((absf(sprite_index - 427.0) < 0.00001))):
			sprite_index = 428.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
		else:
			sprite_index = 235.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
		gravity_direction = 270.0
		gravity = 0.3
func ev_col_17():
	if (((absf(speed - 0.0) < 0.00001))):
		if (((speed > 0.0))):
			(GM.f_sound_play(82.0))
			if (((absf(sprite_index - 427.0) < 0.00001))):
				sprite_index = 428.0
				if ((1.0 >= 0.0)):
					image_index = 1.0
				image_speed = 0.0
			else:
				sprite_index = 235.0
				if ((1.0 >= 0.0)):
					image_index = 1.0
				image_speed = 0.0
			gravity_direction = 270.0
			gravity = 0.3
func ev_col_16():
	(self.script_lives_add(0.0, 0.0, 0.0, 0.0, 0.0))
	for _w94 in GM.with_list((436.0), self):
		if _w94._dead:
			continue
		_w94.other = self
		GM.vset(_w94, "v_bdead", GM.vget(_w94, "v_bdead") + (-1.0))
	if (((absf(sprite_index - 428.0) < 0.00001))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 427.0))
	else:
		(GM.f_instance_create((x + 0.0), (y + 0.0), 234.0))
	(GM.f_instance_destroy(self))
func ev_col_10():
	if (((absf(speed - 0.0) < 0.00001))):
		(GM.f_sound_play(82.0))
		if (((absf(sprite_index - 427.0) < 0.00001))):
			sprite_index = 428.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
		else:
			sprite_index = 235.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
		gravity_direction = 270.0
		gravity = 0.3
