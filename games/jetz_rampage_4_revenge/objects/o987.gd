extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_blah = 0.0
var v_wee = 0.0
var v_wow = 0.0
func ev_create():
	v_wow = (GM.f_round((GM.f_random(5.0))))
	v_blah = (-1.0)
	if ((absf((GM.f_instance_number(988.0)) - 0.0) < 0.00001)):
		hspeed = (3.0 + (GM.f_random(3.0)))
	else:
		hspeed = (6.0 + (GM.f_random(3.0)))
	y = 1103.0
	x = (GM.f_random(GM.room_width))
func ev_col_502():
	(GM.f_sound_play(190.0))
	for _r649 in range(int((20.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 664.0))
		GM.vsetb(v_wee, "direction", (50.0 + (GM.f_random(80.0))))
		GM.vset(v_wee, "v_yyy", ((y + sprite_height) - 6.0))
		GM.vsetb(v_wee, "depth", (depth - 1.0))
	for _r650 in range(int((10.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 653.0))
		GM.vsetb(v_wee, "direction", (50.0 + (GM.f_random(80.0))))
		GM.vset(v_wee, "v_yyy", ((y + sprite_height) - 6.0))
		GM.vsetb(v_wee, "depth", (depth - 1.0))
	for _r651 in range(int((10.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 978.0))
		GM.vsetb(v_wee, "direction", (40.0 + (GM.f_random(100.0))))
		GM.vset(v_wee, "v_yyy", ((y + sprite_height) - 6.0))
		GM.vsetb(v_wee, "depth", (depth - 1.0))
	if ((absf((GM.f_instance_number(987.0)) - 1.0) < 0.00001)):
		if ((absf((GM.f_instance_number(988.0)) - 1.0) < 0.00001)):
			GM.G["j4var11"] = GM.G["j4var11"] + 200.0
			(GM.f_sound_play(224.0))
			for _w652 in GM.with_list((680.0), self):
				if _w652._dead:
					continue
				_w652.other = self
				_w652.ev_user(0.0)
			for _w653 in GM.with_list((988.0), self):
				if _w653._dead:
					continue
				_w653.other = self
				(GM.f_instance_destroy(_w653))
		if ((absf((GM.f_instance_number(984.0)) - 1.0) < 0.00001)):
			GM.G["j4var11"] = GM.G["j4var11"] + 100.0
			(GM.f_sound_play(224.0))
			for _w654 in GM.with_list((680.0), self):
				if _w654._dead:
					continue
				_w654.other = self
				_w654.ev_user(0.0)
			for _w655 in GM.with_list((984.0), self):
				if _w655._dead:
					continue
				_w655.other = self
				(GM.f_instance_create(_w655.x, _w655.y, 988.0))
				(GM.f_instance_destroy(_w655))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(self.script_Outside_Wrap(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	if (GM.eq(v_wow, 0.0)):
		(GM.f_draw_sprite(504.0, v_blah, x, y))
	if (GM.eq(v_wow, 1.0)):
		(GM.f_draw_sprite(688.0, v_blah, x, y))
	if (GM.eq(v_wow, 2.0)):
		(GM.f_draw_sprite(702.0, v_blah, x, y))
	if (GM.eq(v_wow, 3.0)):
		(GM.f_draw_sprite(707.0, v_blah, x, y))
	if (GM.eq(v_wow, 4.0)):
		(GM.f_draw_sprite(712.0, v_blah, x, y))
	if (GM.eq(v_wow, 5.0)):
		(GM.f_draw_sprite(627.0, v_blah, x, y))
	(GM.f_draw_sprite(840.0, (-1.0), x, (y - 20.0)))
