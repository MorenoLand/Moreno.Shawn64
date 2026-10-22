extends "res://games/jetzrampage2/scripts.gd"
var v_blah = 0.0
var v_mypower = 0.0
var v_start = 0.0
func ev_create():
	v_blah = 1.0
	v_start = 0.0
	v_mypower = 25.0
	direction = 0.0
	friction = 0.1
func ev_step():
	if ((((GM.f_random(2.0)) < 1.0))):
		direction = direction + (-1.0)
	else:
		direction = direction + 1.0
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 3.0))
	speed = 15.0
	if (not ((((GM.f_sound_isplaying(69.0)))) >= 0.5)):
		if (not ((((GM.f_sound_isplaying(70.0)))) >= 0.5)):
			if ((((GM.f_random(25.0)) < 1.0))):
				(GM.f_sound_play(69.0))
func ev_col_103():
	(GM.f_sound_play(71.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 105.0))
	for _r186 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	for _w187 in GM.with_list((178.0), self):
		if _w187._dead:
			continue
		_w187.other = self
		(GM.f_instance_destroy(_w187))
	(GM.f_instance_destroy(self))
func ev_col_16():
	vspeed = 0.0
func ev_col_10():
	v_mypower = v_mypower + (-1.0)
	if (((v_mypower < 1.0))):
		(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 480.0))
		for _w188 in GM.with_list((67.0), self):
			if _w188._dead:
				continue
			_w188.other = self
			GM.vset(_w188, "v_currentmoney", GM.vget(_w188, "v_currentmoney") + 300.0)
		for _w189 in GM.with_list((252.0), self):
			if _w189._dead:
				continue
			_w189.other = self
			(GM.f_instance_destroy(_w189))
		for _w190 in GM.with_list((478.0), self):
			if _w190._dead:
				continue
			_w190.other = self
			(GM.f_instance_destroy(_w190))
		(GM.f_sound_play(88.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 105.0))
		for _r191 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
		for _w192 in GM.with_list((178.0), self):
			if _w192._dead:
				continue
			_w192.other = self
			(GM.f_instance_destroy(_w192))
		(GM.f_instance_destroy(self))
func ev_other_1():
	(self.script_outside_bounce(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
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
