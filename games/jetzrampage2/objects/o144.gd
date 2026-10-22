extends "res://games/jetzrampage2/scripts.gd"
var v_woopy = 0.0
func ev_create():
	gravity_direction = 270.0
	gravity = 0.1
	v_woopy = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)), (GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0))))
	(GM.f_motion_set(self, v_woopy, 20.0))
func ev_destroy():
	(GM.f_instance_create(0.0, 0.0, 129.0))
func ev_col_0():
	(GM.f_sound_play(15.0))
	(GM.f_instance_create((x + (-32.0)), (y + (-32.0)), 103.0))
	for _r87 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	if (((absf(sprite_index - 121.0) < 0.00001))):
		(GM.f_draw_sprite(121.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
	else:
		(GM.f_draw_sprite(137.0, (-1.0), (x + 0.0), (y + 0.0)))
