extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	direction = (GM.f_random(180.0))
	speed = (2.0 + (GM.f_random(1.0)))
func ev_step():
	if (((GM.f_distance_to_object(self, 7.0)) < 250.0)):
		(GM.f_motion_add(self, ((GM.f_point_direction(x, y, GM.vb(7.0, "x"), GM.vb(7.0, "y"))) - 180.0), 0.6))
	if ((speed > 20.0)):
		speed = 20.0
	friction = 0.1
func ev_col_551():
	hspeed = (-hspeed)
	(GM.f_sound_play(135.0))
func ev_col_489():
	vspeed = (-vspeed)
	(GM.f_sound_play(135.0))
func ev_col_7():
	for _r767 in range(int((80.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	if ((absf(image_single - 0.0) < 0.00001)):
		GM.vset(1118.0, "v_have1", 1.0)
	if ((absf(image_single - 1.0) < 0.00001)):
		GM.vset(1118.0, "v_have2", 1.0)
	if ((absf(image_single - 2.0) < 0.00001)):
		GM.vset(1118.0, "v_have3", 1.0)
	if ((absf(image_single - 3.0) < 0.00001)):
		GM.vset(1118.0, "v_have4", 1.0)
	if ((absf(image_single - 4.0) < 0.00001)):
		GM.vset(1118.0, "v_have5", 1.0)
	if ((absf(image_single - 5.0) < 0.00001)):
		GM.vset(1118.0, "v_have6", 1.0)
	if ((absf(image_single - 6.0) < 0.00001)):
		GM.vset(1118.0, "v_have7", 1.0)
	(GM.f_sound_play(205.0))
	(GM.f_instance_destroy(self))
