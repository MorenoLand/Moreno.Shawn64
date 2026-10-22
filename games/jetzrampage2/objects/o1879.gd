extends "res://games/jetzrampage2/scripts.gd"
var v_blah = 0.0
var v_mypower = 0.0
var v_powy = 0.0
var v_start = 0.0
func ev_create():
	(GM.f_sound_play(70.0))
	(GM.f_action_move(self, "000001000", 2.0, 0.0))
	v_blah = 1.0
	v_start = 0.0
	v_mypower = 10.0
	friction = 0.1
func ev_step():
	if (((speed < 0.5))):
		speed = 0.5
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 3.0))
	v_powy = (GM.f_point_direction(((sprite_width / 2.0) + x), ((sprite_height / 2.0) + y), (GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)), (GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0))))
	(GM.f_motion_add(self, v_powy, 0.3))
	if (((speed > 13.0))):
		speed = 10.0
	if (not ((((GM.f_sound_isplaying(69.0)))) >= 0.5)):
		if (not ((((GM.f_sound_isplaying(70.0)))) >= 0.5)):
			if ((((GM.f_random(25.0)) < 1.0))):
				(GM.f_sound_play(69.0))
func ev_col_103():
	(GM.f_sound_play(71.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 105.0))
	for _r334 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	for _w335 in GM.with_list((1880.0), self):
		if _w335._dead:
			continue
		_w335.other = self
		(GM.f_instance_destroy(_w335))
	(GM.f_instance_destroy(self))
func ev_col_10():
	v_mypower = v_mypower + (-1.0)
	if (((v_mypower < 1.0))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 105.0))
		(GM.f_sound_play(71.0))
		for _r336 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
		for _w337 in GM.with_list((1880.0), self):
			if _w337._dead:
				continue
			_w337.other = self
			(GM.f_instance_destroy(_w337))
		(GM.f_instance_destroy(self))
func ev_draw():
	if (((hspeed > 0.0))):
		if (((hspeed < 18.0))):
			(GM.f_draw_sprite(1.0, (hspeed / 0.5), (x + 0.0), (y + 0.0)))
		else:
			(GM.f_draw_sprite(1.0, 36.0, (x + 0.0), (y + 0.0)))
	if (((hspeed < 0.0))):
		if (((hspeed > (-18.0)))):
			(GM.f_draw_sprite(2.0, ((-hspeed) / 0.5), (x + 0.0), (y + 0.0)))
		else:
			(GM.f_draw_sprite(2.0, 36.0, (x + 0.0), (y + 0.0)))
