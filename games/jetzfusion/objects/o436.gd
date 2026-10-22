extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	hspeed = ((GM.vb(7.0, "hspeed") - 5.0) + (GM.f_random(10.0)))
	vspeed = (2.0 + (GM.f_random(5.0)))
	gravity_direction = 270.0
	gravity = 0.3
func ev_col_45():
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 150.0), ((y + (sprite_height / 2.0)) - 150.0), 59.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 193.0))
	(GM.f_sound_play(23.0))
	for _r583 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 26.0))
	(GM.f_instance_destroy(self))
func ev_col_7():
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 150.0), ((y + (sprite_height / 2.0)) - 150.0), 59.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 75.0), ((y + (sprite_height / 2.0)) - 75.0), 14.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 193.0))
	(GM.f_sound_play(23.0))
	for _r584 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 26.0))
	for _w585 in GM.with_list((436.0), self):
		if _w585._dead:
			continue
		_w585.other = self
		(GM.f_instance_destroy(_w585))
func ev_other_0():
	if (((y > GM.room_height))):
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite(204.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
