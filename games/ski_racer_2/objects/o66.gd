extends "res://games/ski_racer_2/scripts.gd"
var v_blinker = 0.0
var v_hitme = 0.0
var v_is = 0.0
var v_showme = 0.0
var v_speedy = 0.0
var v_up = 0.0
func ev_create():
	(GM.f_action_move(self, "010000000", 15.0, 0.0))
	GM.view_object[int(1.0)] = 66.0
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
	if ((((GM.f_keyboard_check_direct((GM.f_ord("A"))))))) >= 0.5:
		if (not ((((GM.f_sound_isplaying(25.0)))) >= 0.5)):
			(GM.f_sound_loop(25.0))
	if ((((GM.f_keyboard_check_direct((GM.f_ord("D"))))))) >= 0.5:
		if (not ((((GM.f_sound_isplaying(25.0)))) >= 0.5)):
			(GM.f_sound_loop(25.0))
	if (not ((((GM.f_keyboard_check_direct((GM.f_ord("A")))))) >= 0.5)):
		if (not ((((GM.f_keyboard_check_direct((GM.f_ord("D")))))) >= 0.5)):
			(GM.f_sound_stop(25.0))
func ev_col_76():
	(GM.f_sound_play(28.0))
	await GM.f_show_message("Player 2 Wins!")
	(GM.f_room_goto(2.0))
func ev_col_60():
	if (((absf(v_blinker - 0.0) < 0.00001))):
		(GM.f_sound_play(21.0))
		(GM.f_sound_play(4.0))
		(GM.f_motion_add(self, 270.0, 6.0))
		alarm[int(1.0)] = 2.0
		alarm[int(2.0)] = 25.0
		GM.G["hits2"] = GM.G["hits2"] - 1.0
		v_blinker = 1.0
	if (((GM.G["hits2"] < 1.0))):
		(GM.f_sound_play(28.0))
		await GM.f_show_message("Player 1 Wins!")
		(GM.f_room_goto(2.0))
func ev_col_55():
	self.ev_user(0.0)
func ev_col_51():
	self.ev_user(0.0)
func ev_col_47():
	x = GM.vb(self.other, "x")
	(GM.f_sound_play(18.0))
	GM.view_object[int(1.0)] = 69.0
	(GM.f_instance_create((x + 0.0), (y + 0.0), 69.0))
	if (((hspeed > 0.0))):
		for _w22 in GM.with_list((69.0), self):
			if _w22._dead:
				continue
			_w22.other = self
			GM.vset(_w22, "v_right", 1.0)
	else:
		for _w23 in GM.with_list((69.0), self):
			if _w23._dead:
				continue
			_w23.other = self
			GM.vset(_w23, "v_right", 0.0)
	(GM.f_instance_destroy(self))
func ev_col_31():
	GM.G["maxx2"] = 1.5
	v_up = 1.0
	(GM.f_sound_loop(26.0))
	GM.view_object[int(1.0)] = 68.0
	(GM.f_instance_change(self, 68.0, 0.0))
func ev_col_30():
	speed = 25.0
	if (not ((((GM.f_sound_isplaying(24.0)))) >= 0.5)):
		(GM.f_sound_play(24.0))
func ev_col_29():
	self.ev_user(0.0)
func ev_col_28():
	GM.G["maxx2"] = 2.5
	v_up = 1.0
	(GM.f_sound_loop(26.0))
	GM.view_object[int(1.0)] = 68.0
	(GM.f_instance_change(self, 68.0, 0.0))
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
	GM.G["maxx2"] = 2.0
	v_up = 1.0
	(GM.f_sound_loop(26.0))
	GM.view_object[int(1.0)] = 68.0
	(GM.f_instance_change(self, 68.0, 0.0))
func ev_col_6():
	v_is = (v_is * 1.02)
func ev_key_68():
	direction = direction - 5.625
func ev_key_65():
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
		GM.G["hits2"] = GM.G["hits2"] - 1.0
		v_blinker = 1.0
	if (((GM.G["hits2"] < 1.0))):
		(GM.f_sound_play(28.0))
		await GM.f_show_message("Player 1 Wins!")
		(GM.f_room_goto(2.0))
func ev_draw():
	if (((absf(v_showme - 1.0) < 0.00001))):
		if ((GM.G["p2"] == "s64")):
			(GM.f_draw_sprite_scaled(0.0, (direction / 5.625), x, y, v_is))
		if ((GM.G["p2"] == "dex")):
			(GM.f_draw_sprite_scaled(8.0, (direction / 5.625), x, y, v_is))
		if ((GM.G["p2"] == "snow")):
			(GM.f_draw_sprite_scaled(13.0, (direction / 5.625), x, y, v_is))
		if ((GM.G["p2"] == "elf")):
			(GM.f_draw_sprite_scaled(34.0, (direction / 5.625), x, y, v_is))
		if ((GM.G["p2"] == "blink")):
			(GM.f_draw_sprite_scaled(36.0, (direction / 5.625), x, y, v_is))
