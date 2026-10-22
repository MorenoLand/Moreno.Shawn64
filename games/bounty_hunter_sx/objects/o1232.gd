extends "res://games/bounty_hunter_sx/scripts.gd"
var v_blahblah = 0.0
var v_myhealth = 0.0
var v_shot11 = 0.0
var v_shot22 = 0.0
var v_wee = 0.0
func ev_create():
	v_shot11 = 1.0
	v_shot22 = 1.0
	v_myhealth = 650.0
	v_blahblah = 1.0
	(GM.f_sound_play(337.0))
	(GM.f_sound_stop(299.0))
func ev_alarm_1():
	(GM.f_instance_destroy(self))
func ev_alarm_0():
	v_shot11 = 1.0
func ev_step():
	if ((v_myhealth < 1.0)):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 1249.0))
		(GM.f_instance_destroy(self))
	v_wee = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(482.0, "x") + (GM.vb(482.0, "sprite_width") / 2.0)), (GM.vb(482.0, "y") + (GM.vb(482.0, "sprite_height") / 2.0))))
	(GM.f_motion_add(self, v_wee, 0.1))
	if ((speed > 5.0)):
		speed = 5.0
	if (((absf(v_shot11 - 1.0) < 0.00001))):
		if ((((GM.f_random(25.0)) < 1.0))):
			(GM.f_sound_play(296.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 17.5), ((y + (sprite_height / 2.0)) - 17.5), 1250.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 17.5), ((y + (sprite_height / 2.0)) - 17.5), 1251.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 17.5), ((y + (sprite_height / 2.0)) - 17.5), 1252.0))
			alarm[int(0.0)] = 5.0
			v_shot11 = 0.0
		if ((((GM.f_random(25.0)) < 1.0))):
			(GM.f_sound_play(295.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 15.0), ((y + (sprite_height / 2.0)) - 15.0), 1234.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 15.0), ((y + (sprite_height / 2.0)) - 15.0), 1235.0))
			alarm[int(0.0)] = 5.0
			v_shot11 = 0.0
		if ((((GM.f_random(25.0)) < 1.0))):
			(GM.f_sound_play(303.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 4.5), ((y + (sprite_height / 2.0)) - 4.5), 1236.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 4.5), ((y + (sprite_height / 2.0)) - 4.5), 1237.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 4.5), ((y + (sprite_height / 2.0)) - 4.5), 1238.0))
			alarm[int(0.0)] = 5.0
			v_shot11 = 0.0
		if ((((GM.f_random(250.0)) < 1.0))):
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 16.0), ((y + (sprite_height / 2.0)) - 16.0), 1175.0))
	if ((((GM.f_random(500.0)) < 1.0))):
		if (((absf((GM.f_instance_number(1239.0)) - 0.0) < 0.00001))):
			(GM.f_sound_play(298.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 26.0), ((y + (sprite_height / 2.0)) - 26.0), 1239.0))
func ev_col_1201():
	(GM.f_motion_add(self, GM.vb(self.other, "direction"), 0.2))
	for _w424 in GM.with_list((self.other), self):
		if _w424._dead:
			continue
		_w424.other = self
		(GM.f_instance_destroy(_w424))
	(GM.f_sound_play(338.0))
	v_myhealth = v_myhealth - 15.0
func ev_col_1177():
	(GM.f_motion_add(self, GM.vb(self.other, "direction"), 0.2))
	for _w425 in GM.with_list((self.other), self):
		if _w425._dead:
			continue
		_w425.other = self
		(GM.f_instance_destroy(_w425))
	(GM.f_sound_play(338.0))
	v_myhealth = v_myhealth - 15.0
func ev_col_489():
	(GM.f_motion_add(self, GM.vb(self.other, "direction"), 0.2))
	for _w426 in GM.with_list((self.other), self):
		if _w426._dead:
			continue
		_w426.other = self
		(GM.f_instance_destroy(_w426))
	(GM.f_sound_play(338.0))
	v_myhealth = v_myhealth - 2.0
func ev_other_1():
	(self.script_outside_bounce(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	(GM.f_draw_sprite(1146.0, (v_wee / 5.625), (x + 0.0), (y + 0.0)))
