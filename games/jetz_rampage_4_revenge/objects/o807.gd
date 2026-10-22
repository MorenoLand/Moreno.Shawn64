extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_blah = 0.0
var v_wow = 0.0
func ev_create():
	v_wow = (GM.f_round((GM.f_random(5.0))))
	if ((absf((GM.f_instance_number(814.0)) - 0.0) < 0.00001)):
		v_blah = 2.0
	else:
		v_blah = (-1.0)
		hspeed = (3.0 + (GM.f_random(3.0)))
func ev_col_791():
	if ((absf((GM.f_instance_number(810.0)) - 1.0) < 0.00001)):
		for _w482 in GM.with_list((810.0), self):
			if _w482._dead:
				continue
			_w482.other = self
			(GM.f_instance_destroy(_w482))
		(GM.f_instance_create(0.0, 0.0, 806.0))
		GM.vset(809.0, "v_counting", GM.vget(809.0, "v_counting") + 1.0)
		(GM.f_sound_play(152.0))
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
