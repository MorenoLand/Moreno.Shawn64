extends "res://games/ski_racer_2/scripts.gd"
var v_blinker = 0.0
var v_hitme = 0.0
var v_image_single = 0.0
var v_is = 0.0
var v_showme = 0.0
var v_speedy = 0.0
var v_up = 0.0
func ev_create():
	(GM.f_action_move(self, "010000000", 15.0, 0.0))
	GM.view_object[0] = 0.0
	v_is = 1.0
	v_speedy = 0.0
	v_showme = 1.0
	v_blinker = 0.0
	alarm[int(0.0)] = 20.0
func ev_alarm_3():
	v_showme = 1.0
	if (((absf(v_blinker - 1.0) < 0.00001))):
		alarm[int(1.0)] = 2.0
func ev_alarm_2():
	v_blinker = 0.0
func ev_alarm_1():
	v_showme = 0.0
	if (((absf(v_blinker - 1.0) < 0.00001))):
		alarm[int(3.0)] = 2.0
	else:
		v_showme = 1.0
func ev_alarm_0():
	v_hitme = 1.0
func ev_step():
	if (not (((absf(GM.room - 3.0) < 0.00001)))):
		for _r1 in range(int(((speed / 2.0)))):
			(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 4.0))
	if ((direction < 200.0)):
		direction = 200.0
	if ((direction > 340.0)):
		direction = 340.0
	gravity = 0.5
	if ((speed > 20.0)):
		speed = speed - 0.6
	if ((v_is > 1.0)):
		if not ((((GM.f_place_meeting(self, x, y, 6.0)))) >= 0.5):
			v_is = (v_is / 1.02)
	if ((v_is < 1.01)):
		v_is = 1.0
	if ((x < 10.0)):
		x = 10.0
		direction = direction + 6.0
	if ((x > ((GM.room_width - sprite_width) - 10.0))):
		x = ((GM.room_width - sprite_width) - 10.0)
		direction = direction - 6.0
	if ((((GM.f_keyboard_check(37.0))))) >= 0.5:
		if (not ((((GM.f_sound_isplaying(2.0)))) >= 0.5)):
			(GM.f_sound_loop(2.0))
	if ((((GM.f_keyboard_check(39.0))))) >= 0.5:
		if (not ((((GM.f_sound_isplaying(2.0)))) >= 0.5)):
			(GM.f_sound_loop(2.0))
	if (not ((((GM.f_keyboard_check(37.0)))) >= 0.5)):
		if (not ((((GM.f_keyboard_check(39.0)))) >= 0.5)):
			(GM.f_sound_stop(2.0))
func ev_col_76():
	(GM.f_sound_play(28.0))
	await GM.f_show_message("Player 1 Wins!")
	(GM.f_room_goto(2.0))
func ev_col_73():
	(GM.f_sound_play(28.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 75.0))
	GM.vset(75.0, "v_image_single", v_image_single)
	GM.score = GM.score + 1000.0
	(GM.f_registry_write_string("secretChar", "0"))
	await GM.f_show_message("Nice Job:  Unlocked Snowman")
	(GM.f_instance_destroy(self))
func ev_col_60():
	if (((absf(v_blinker - 0.0) < 0.00001))):
		(GM.f_sound_play(21.0))
		(GM.f_sound_play(4.0))
		(GM.f_motion_add(self, 270.0, 6.0))
		alarm[int(1.0)] = 2.0
		alarm[int(2.0)] = 25.0
		GM.G["hits"] = GM.G["hits"] - 1.0
		v_blinker = 1.0
	if (((GM.G["hits"] < 1.0))):
		if (((absf(GM.room - 3.0) < 0.00001))):
			(GM.f_sound_play(28.0))
			await GM.f_show_message("Player 2 Wins!")
			(GM.f_room_goto(2.0))
		else:
			(GM.f_sound_stop(16.0))
			(GM.f_room_goto(2.0))
func ev_col_55():
	self.ev_user(0.0)
func ev_col_51():
	self.ev_user(0.0)
func ev_col_47():
	x = GM.vb(self.other, "x")
	(GM.f_sound_play(18.0))
	GM.view_object[0] = 48.0
	(GM.f_instance_create((x + 0.0), (y + 0.0), 48.0))
	if (((hspeed > 0.0))):
		for _w2 in GM.with_list((48.0), self):
			if _w2._dead:
				continue
			_w2.other = self
			GM.vset(_w2, "v_right", 1.0)
	else:
		for _w3 in GM.with_list((48.0), self):
			if _w3._dead:
				continue
			_w3.other = self
			GM.vset(_w3, "v_right", 0.0)
	(GM.f_instance_destroy(self))
func ev_col_39():
	for _w4 in GM.with_list((37.0), self):
		if _w4._dead:
			continue
		_w4.other = self
		(GM.f_instance_destroy(_w4))
func ev_col_38():
	if (((absf((GM.f_instance_number(37.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(0.0, 0.0, 37.0))
func ev_col_31():
	GM.G["maxx"] = 1.5
	v_up = 1.0
	(GM.f_sound_loop(3.0))
	GM.view_object[0] = 8.0
	(GM.f_instance_change(self, 8.0, 0.0))
func ev_col_30():
	speed = 25.0
	if (not ((((GM.f_sound_isplaying(24.0)))) >= 0.5)):
		(GM.f_sound_play(24.0))
func ev_col_29():
	self.ev_user(0.0)
func ev_col_28():
	GM.G["maxx"] = 2.5
	v_up = 1.0
	(GM.f_sound_loop(3.0))
	GM.view_object[0] = 8.0
	(GM.f_instance_change(self, 8.0, 0.0))
func ev_col_27():
	v_is = (v_is * 1.02)
func ev_col_20():
	self.ev_user(0.0)
func ev_col_19():
	if (((speed > 5.0))):
		speed = speed + (-3.0)
	if (not ((((GM.f_sound_isplaying(10.0)))) >= 0.5)):
		(GM.f_sound_play(10.0))
func ev_col_18():
	self.ev_user(0.0)
func ev_col_7():
	GM.G["maxx"] = 2.0
	v_up = 1.0
	(GM.f_sound_loop(3.0))
	GM.view_object[0] = 8.0
	(GM.f_instance_change(self, 8.0, 0.0))
func ev_col_6():
	v_is = (v_is * 1.02)
func ev_key_39():
	for _r5 in range(int((20.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 14.0))
	direction = direction - 5.625
func ev_key_37():
	for _r6 in range(int((20.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 13.0))
	direction = direction + 5.625
func ev_other_10():
	if (((absf(v_blinker - 0.0) < 0.00001))):
		(GM.f_sound_play(21.0))
		(GM.f_sound_play(4.0))
		if ((((GM.f_random(2.0)) < 1.0))):
			(GM.f_motion_add(self, 180.0, 10.0))
		else:
			(GM.f_motion_add(self, 0.0, 10.0))
		alarm[int(1.0)] = 2.0
		alarm[int(2.0)] = 25.0
		GM.G["hits"] = GM.G["hits"] - 1.0
		v_blinker = 1.0
	if (((GM.G["hits"] < 1.0))):
		if (((absf(GM.room - 3.0) < 0.00001))):
			(GM.f_sound_play(28.0))
			await GM.f_show_message("Player 2 Wins!")
			(GM.f_room_goto(2.0))
		else:
			(GM.f_sound_stop(16.0))
			(GM.f_room_goto(2.0))
func ev_draw():
	if (((absf(v_showme - 1.0) < 0.00001))):
		if ((GM.G["p1"] == "s64")):
			(GM.f_draw_sprite_scaled(0.0, (direction / 5.625), x, y, v_is))
		if ((GM.G["p1"] == "dex")):
			(GM.f_draw_sprite_scaled(8.0, (direction / 5.625), x, y, v_is))
		if ((GM.G["p1"] == "snow")):
			(GM.f_draw_sprite_scaled(13.0, (direction / 5.625), x, y, v_is))
		if ((GM.G["p1"] == "elf")):
			(GM.f_draw_sprite_scaled(34.0, (direction / 5.625), x, y, v_is))
		if ((GM.G["p1"] == "blink")):
			(GM.f_draw_sprite_scaled(36.0, (direction / 5.625), x, y, v_is))
