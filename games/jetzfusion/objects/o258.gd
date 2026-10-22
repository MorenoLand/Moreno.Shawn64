extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	if ((GM.vb(7.0, "x") > x)):
		(GM.f_motion_add(self, 45.0, (5.0 + (GM.f_random(15.0)))))
	else:
		(GM.f_motion_add(self, 135.0, (5.0 + (GM.f_random(15.0)))))
	gravity_direction = 270.0
	gravity = 0.5
	alarm[int(0.0)] = 5.0
func ev_alarm_0():
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 20.0), ((y + (sprite_height / 2.0)) - 20.0), 58.0))
	alarm[int(0.0)] = 5.0
func ev_col_45():
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 150.0), ((y + (sprite_height / 2.0)) - 150.0), 59.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 75.0), ((y + (sprite_height / 2.0)) - 75.0), 14.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 193.0))
	(GM.f_sound_play(23.0))
	for _r350 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 26.0))
	(GM.f_instance_destroy(self))
func ev_col_7():
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 150.0), ((y + (sprite_height / 2.0)) - 150.0), 59.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 75.0), ((y + (sprite_height / 2.0)) - 75.0), 14.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 193.0))
	(GM.f_sound_play(23.0))
	for _r351 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 26.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	if (((y > GM.room_height))):
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite(38.0, (-1.0), (x + 0.0), (y + 0.0)))
