extends "res://games/cookiebuster/scripts.gd"
var v_pacc = 0.0
var v_start = 0.0
func ev_create():
	v_pacc = 0.0
	v_start = 0.0
	alarm[int(0.0)] = 2.0
func ev_destroy():
	(GM.f_sound_stop(0.0))
func ev_alarm_3():
	if (((absf(v_start - 1.0) < 0.00001))):
		(GM.f_sound_play(0.0))
	v_pacc = 0.0
	alarm[int(0.0)] = 2.0
func ev_alarm_2():
	v_pacc = 1.0
	alarm[int(3.0)] = 2.0
func ev_alarm_1():
	v_pacc = 2.0
	alarm[int(2.0)] = 2.0
func ev_alarm_0():
	v_pacc = 1.0
	alarm[int(1.0)] = 2.0
func ev_step():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 1.0))
	for _r1 in range(int((3.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 5.0))
func ev_col_20():
	self.ev_user(0.0)
func ev_col_19():
	self.ev_user(0.0)
func ev_col_10():
	self.ev_user(0.0)
func ev_col_9():
	self.ev_user(0.0)
func ev_col_8():
	self.ev_user(0.0)
func ev_key_39():
	if (((absf(v_start - 1.0) < 0.00001))):
		direction = direction - 5.0
func ev_key_37():
	if (((absf(v_start - 1.0) < 0.00001))):
		direction = direction + 5.0
func ev_other_10():
	(GM.f_sound_stop(6.0))
	GM.lives = GM.lives + (-1.0)
	(GM.f_sound_stop(0.0))
	(GM.f_sound_play(5.0))
	(GM.f_sound_play(3.0))
	if (((absf(GM.lives - 0.0) < 0.00001))):
		GM.G["levely"] = 1.0
		GM.score = 0.0
		GM.lives = 5.0
		(GM.f_room_goto(4.0))
	(GM.f_instance_create(0.0, 0.0, 22.0))
	gravity_direction = 270.0
	gravity = 0.2
	(GM.f_instance_change(self, 23.0, 0.0))
func ev_other_1():
	(self.script_outsidebounce(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	if (((absf(v_pacc - 0.0) < 0.00001))):
		(GM.f_draw_sprite(0.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
	if (((absf(v_pacc - 1.0) < 0.00001))):
		(GM.f_draw_sprite(1.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
	if (((absf(v_pacc - 2.0) < 0.00001))):
		(GM.f_draw_sprite(2.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
