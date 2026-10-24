extends "res://games/galaxy_arcade_2/scripts.gd"
var v_ham = 0.0
var v_kk = 0.0
var v_nomore = 0.0
func ev_create():
	v_kk = 1.0
	v_nomore = 1.0
	v_ham = 1.0
	x = (GM.f_random(5000.0))
	y = (GM.f_random(1000.0))
	(GM.f_action_move(self, "000001000", 20.0, 0.0))
func ev_destroy():
	(GM.f_sound_stop(348.0))
func ev_step():
	if ((((GM.f_distance_to_object(self, 1116.0)) < 500.0))):
		if (not ((((GM.f_sound_isplaying(348.0)))) >= 0.5)):
			(GM.f_sound_loop(348.0))
		for _r172 in range(int((10.0))):
			(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 1196.0))
	else:
		(GM.f_sound_stop(348.0))
func ev_col_1175():
	(GM.f_sound_play(341.0))
	for _r173 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 1191.0))
	(GM.f_instance_destroy(self))
func ev_col_1174():
	if (((absf(v_nomore - 1.0) < 0.00001))):
		gravity_direction = 270.0
		gravity = 0.3
		v_kk = 0.0
		(GM.f_sound_play(341.0))
		for _r174 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
		for _r175 in range(int((2.0))):
			(GM.f_instance_create((x + 0.0), (y + 0.0), 1190.0))
		for _w176 in GM.with_list((self.other), self):
			if _w176._dead:
				continue
			_w176.other = self
			(GM.f_instance_destroy(_w176))
		v_nomore = 0.0
func ev_col_1170():
	if (((absf(v_nomore - 1.0) < 0.00001))):
		gravity_direction = 270.0
		gravity = 0.3
		v_kk = 0.0
		(GM.f_sound_play(341.0))
		for _r177 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
		for _r178 in range(int((2.0))):
			(GM.f_instance_create((x + 0.0), (y + 0.0), 1190.0))
		for _w179 in GM.with_list((self.other), self):
			if _w179._dead:
				continue
			_w179.other = self
			(GM.f_instance_destroy(_w179))
		v_nomore = 0.0
func ev_col_1138():
	if (((absf(v_nomore - 1.0) < 0.00001))):
		gravity_direction = 270.0
		gravity = 0.3
		v_kk = 0.0
		(GM.f_sound_play(341.0))
		for _r180 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
		for _r181 in range(int((2.0))):
			(GM.f_instance_create((x + 0.0), (y + 0.0), 1190.0))
		(GM.f_instance_destroy(self))
		v_nomore = 0.0
func ev_col_1137():
	v_ham = 0.0
	(GM.f_sound_play(341.0))
	for _r182 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 1191.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	(GM.f_draw_sprite(1116.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
