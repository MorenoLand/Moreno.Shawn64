extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	gravity_direction = 270.0
	gravity = 0.3
	if (((GM.vb(0.0, "hspeed") > 0.0))):
		(GM.f_action_move(self, "000000001", GM.vget(67.0, "v_thrower"), 0.0))
		hspeed = hspeed + GM.vb(0.0, "hspeed")
	else:
		(GM.f_action_move(self, "000000100", GM.vget(67.0, "v_thrower"), 0.0))
		hspeed = hspeed + GM.vb(0.0, "hspeed")
	for _w49 in GM.with_list((0.0), self):
		if _w49._dead:
			continue
		_w49.other = self
		GM.vset(_w49, "v_bombpower", 5.0)
func ev_destroy():
	(GM.f_instance_create(0.0, 0.0, 129.0))
func ev_col_578():
	(GM.f_sound_play(15.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 120.0), ((y + (sprite_height / 2.0)) - 120.0), 103.0))
	for _r50 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_col_517():
	(GM.f_sound_play(15.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 120.0), ((y + (sprite_height / 2.0)) - 120.0), 103.0))
	for _r51 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_col_493():
	(GM.f_sound_play(15.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 120.0), ((y + (sprite_height / 2.0)) - 120.0), 103.0))
	for _r52 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_col_219():
	(GM.f_sound_play(15.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 120.0), ((y + (sprite_height / 2.0)) - 120.0), 103.0))
	for _r53 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_col_142():
	(GM.f_sound_play(15.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 120.0), ((y + (sprite_height / 2.0)) - 120.0), 103.0))
	for _r54 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_col_137():
	(GM.f_sound_play(15.0))
	(GM.f_instance_create((x + (-32.0)), (y + (-32.0)), 103.0))
	for _r55 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_col_115():
	(GM.f_sound_play(15.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 120.0), ((y + (sprite_height / 2.0)) - 120.0), 103.0))
	for _r56 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_col_114():
	(GM.f_sound_play(15.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 120.0), ((y + (sprite_height / 2.0)) - 120.0), 103.0))
	for _r57 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_col_85():
	(GM.f_sound_play(15.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 120.0), ((y + (sprite_height / 2.0)) - 120.0), 103.0))
	for _r58 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_col_82():
	(GM.f_sound_play(15.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 120.0), ((y + (sprite_height / 2.0)) - 120.0), 103.0))
	for _r59 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_col_71():
	(GM.f_sound_play(15.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 120.0), ((y + (sprite_height / 2.0)) - 120.0), 103.0))
	for _r60 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_col_17():
	(GM.f_sound_play(15.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 120.0), ((y + (sprite_height / 2.0)) - 120.0), 103.0))
	for _r61 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_col_16():
	(GM.f_sound_play(15.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 120.0), ((y + (sprite_height / 2.0)) - 120.0), 103.0))
	for _r62 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
