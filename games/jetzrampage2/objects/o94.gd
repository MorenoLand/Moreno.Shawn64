extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(200.0))
	if ((((GM.f_random(2.0)) < 1.0))):
		(GM.f_action_move(self, "000001000", 5.0, 0.0))
		sprite_index = 94.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
	else:
		(GM.f_action_move(self, "000100000", 5.0, 0.0))
		sprite_index = 95.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
func ev_destroy():
	(self.script_lives_add(0.0, 0.0, 0.0, 0.0, 0.0))
	for _w46 in GM.with_list((575.0), self):
		if _w46._dead:
			continue
		_w46.other = self
		GM.vset(_w46, "v_killbirds", GM.vget(_w46, "v_killbirds") + (-1.0))
func ev_alarm_0():
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 16.0), ((y + (sprite_height / 2.0)) - 16.0), 169.0))
	alarm[int(0.0)] = 1.0
func ev_col_166():
	if (((absf(vspeed - 0.0) < 0.00001))):
		(GM.f_sound_play(33.0))
	gravity_direction = 270.0
	gravity = 0.2
	alarm[int(0.0)] = 1.0
func ev_col_103():
	(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_col_16():
	(GM.f_sound_play(84.0))
	for _r47 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_col_10():
	for _r48 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
