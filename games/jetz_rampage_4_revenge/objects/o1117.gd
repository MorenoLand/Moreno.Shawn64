extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wee = 0.0
func ev_create():
	direction = (GM.f_random(180.0))
	speed = (15.0 + (GM.f_random(10.0)))
	gravity = 0.5
	gravity_direction = 270.0
	alarm[int(0.0)] = 1.0
func ev_alarm_0():
	if ((absf((GM.f_instance_number(1096.0)) - 1.0) < 0.00001)):
		v_wee = (GM.f_instance_create(x, y, 1119.0))
		GM.vsetb(v_wee, "image_single", image_single)
		(GM.f_instance_destroy(self))
func ev_col_551():
	hspeed = (-hspeed)
	(GM.f_sound_play(135.0))
func ev_col_489():
	vspeed = (-vspeed)
	(GM.f_sound_play(135.0))
func ev_col_7():
	for _r762 in range(int((80.0))):
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
