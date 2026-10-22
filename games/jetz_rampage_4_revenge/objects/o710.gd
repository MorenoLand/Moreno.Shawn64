extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_falling = 0.0
var v_lala1 = 0.0
var v_lala2 = 0.0
var v_lala3 = 0.0
var v_lala4 = 0.0
var v_persond = 0.0
var v_throw = 0.0
var v_woot = 0.0
func ev_create():
	v_lala1 = (GM.vb(7.0, "x") + 10.0)
	v_lala2 = (GM.vb(7.0, "y") + 10.0)
	v_lala3 = (GM.vb(7.0, "x") + 10.0)
	v_lala4 = (GM.vb(7.0, "y") + 10.0)
	v_falling = 0.0
	v_throw = 0.0
	alarm[int(0.0)] = 2.0
	image_speed = 0.5
	alarm[int(1.0)] = 100.0
func ev_alarm_2():
	if (((absf(v_throw - 1.0) < 0.00001)) and not ((((GM.f_place_meeting(self, x, y, 489.0)))) >= 0.5)):
		(GM.f_sound_play(152.0))
		x = (GM.vb(7.0, "x") + 10.0)
		y = (GM.vb(7.0, "y") + 10.0)
		v_woot = (GM.f_instance_create(x, y, 711.0))
		GM.vsetb(v_woot, "sprite_index", sprite_index)
		GM.vset(v_woot, "v_persond", v_persond)
		GM.vsetb(v_woot, "vspeed", GM.vb(7.0, "vspeed"))
		GM.vsetb(v_woot, "hspeed", GM.vb(7.0, "hspeed"))
		for _w406 in GM.with_list((v_woot), self):
			if _w406._dead:
				continue
			_w406.other = self
			GM.vset(_w406, "v_mypower", (-1.0))
			_w406.ev_user(0.0)
			_w406.ev_user(1.0)
		(GM.f_instance_destroy(self))
		return
func ev_alarm_1():
	if (((absf(v_throw - 1.0) < 0.00001)) and not ((((GM.f_place_meeting(self, x, y, 489.0)))) >= 0.5)):
		(GM.f_sound_play(152.0))
		x = (GM.vb(7.0, "x") + 10.0)
		y = (GM.vb(7.0, "y") + 10.0)
		v_woot = (GM.f_instance_create(x, y, 711.0))
		GM.vsetb(v_woot, "sprite_index", sprite_index)
		GM.vset(v_woot, "v_persond", v_persond)
		GM.vsetb(v_woot, "vspeed", GM.vb(7.0, "vspeed"))
		GM.vsetb(v_woot, "hspeed", GM.vb(7.0, "hspeed"))
		for _w407 in GM.with_list((v_woot), self):
			if _w407._dead:
				continue
			_w407.other = self
			GM.vset(_w407, "v_mypower", (-1.0))
			_w407.ev_user(0.0)
			_w407.ev_user(1.0)
		(GM.f_instance_destroy(self))
		return
func ev_alarm_0():
	v_throw = 1.0
func ev_stepend():
	x = (GM.vb(7.0, "x") + 10.0)
	y = (GM.vb(7.0, "y") + 10.0)
func ev_step():
	if ((((GM.f_random(25.0)) < 1.0))):
		(self.script_personscream())
func ev_other_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	if ((absf(v_falling - 0.0) < 0.00001)):
		v_lala1 = (GM.vb(7.0, "x") + 10.0)
		v_lala2 = (GM.vb(7.0, "y") + 10.0)
		v_lala3 = (GM.vb(7.0, "x") + 10.0)
		v_lala4 = (GM.vb(7.0, "y") + 10.0)
	else:
		v_lala1 = x
		v_lala2 = y
		v_lala3 = x
		v_lala4 = y
	if ((absf(GM.vget(7.0, "v_guyright") - 1.0) < 0.00001)):
		if ((absf(v_persond - 0.0) < 0.00001)):
			(GM.f_draw_sprite(504.0, (-1.0), v_lala1, v_lala2))
		if ((absf(v_persond - 1.0) < 0.00001)):
			(GM.f_draw_sprite(627.0, (-1.0), v_lala1, v_lala2))
		if ((absf(v_persond - 2.0) < 0.00001)):
			(GM.f_draw_sprite(636.0, (-1.0), v_lala1, v_lala2))
		if ((absf(v_persond - 3.0) < 0.00001)):
			(GM.f_draw_sprite(654.0, (-1.0), v_lala1, v_lala2))
		if ((absf(v_persond - 4.0) < 0.00001)):
			(GM.f_draw_sprite(659.0, (-1.0), v_lala1, v_lala2))
		if ((absf(v_persond - 5.0) < 0.00001)):
			(GM.f_draw_sprite(717.0, (-1.0), v_lala1, v_lala2))
		if ((absf(v_persond - 6.0) < 0.00001)):
			(GM.f_draw_sprite(683.0, (-1.0), v_lala1, v_lala2))
		if ((absf(v_persond - 7.0) < 0.00001)):
			(GM.f_draw_sprite(688.0, (-1.0), v_lala1, v_lala2))
		if ((absf(v_persond - 8.0) < 0.00001)):
			(GM.f_draw_sprite(692.0, (-1.0), v_lala1, v_lala2))
		if ((absf(v_persond - 9.0) < 0.00001)):
			(GM.f_draw_sprite(697.0, (-1.0), v_lala1, v_lala2))
		if ((absf(v_persond - 10.0) < 0.00001)):
			(GM.f_draw_sprite(702.0, (-1.0), v_lala1, v_lala2))
		if ((absf(v_persond - 11.0) < 0.00001)):
			(GM.f_draw_sprite(707.0, (-1.0), v_lala1, v_lala2))
		if ((absf(v_persond - 12.0) < 0.00001)):
			(GM.f_draw_sprite(712.0, (-1.0), v_lala1, v_lala2))
	if ((absf(GM.vget(7.0, "v_guyleft") - 1.0) < 0.00001)):
		if ((absf(v_persond - 0.0) < 0.00001)):
			(GM.f_draw_sprite(513.0, (-1.0), v_lala3, v_lala4))
		if ((absf(v_persond - 1.0) < 0.00001)):
			(GM.f_draw_sprite(633.0, (-1.0), v_lala3, v_lala4))
		if ((absf(v_persond - 2.0) < 0.00001)):
			(GM.f_draw_sprite(639.0, (-1.0), v_lala3, v_lala4))
		if ((absf(v_persond - 3.0) < 0.00001)):
			(GM.f_draw_sprite(655.0, (-1.0), v_lala3, v_lala4))
		if ((absf(v_persond - 4.0) < 0.00001)):
			(GM.f_draw_sprite(661.0, (-1.0), v_lala3, v_lala4))
		if ((absf(v_persond - 5.0) < 0.00001)):
			(GM.f_draw_sprite(718.0, (-1.0), v_lala3, v_lala4))
		if ((absf(v_persond - 6.0) < 0.00001)):
			(GM.f_draw_sprite(684.0, (-1.0), v_lala3, v_lala4))
		if ((absf(v_persond - 7.0) < 0.00001)):
			(GM.f_draw_sprite(689.0, (-1.0), v_lala3, v_lala4))
		if ((absf(v_persond - 8.0) < 0.00001)):
			(GM.f_draw_sprite(693.0, (-1.0), v_lala3, v_lala4))
		if ((absf(v_persond - 9.0) < 0.00001)):
			(GM.f_draw_sprite(698.0, (-1.0), v_lala3, v_lala4))
		if ((absf(v_persond - 10.0) < 0.00001)):
			(GM.f_draw_sprite(703.0, (-1.0), v_lala3, v_lala4))
		if ((absf(v_persond - 11.0) < 0.00001)):
			(GM.f_draw_sprite(708.0, (-1.0), v_lala3, v_lala4))
		if ((absf(v_persond - 12.0) < 0.00001)):
			(GM.f_draw_sprite(713.0, (-1.0), v_lala3, v_lala4))
func ev_keypress_32():
	alarm[int(2.0)] = 1.0
