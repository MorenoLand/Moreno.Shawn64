extends "res://games/mini_golf_pro/scripts.gd"
var v_blahz = 0.0
var v_foo = 0.0
var v_gogo = 0.0
var v_greenbomb = 0.0
var v_hit = 0.0
var v_i = 0.0
var v_implayer = 0.0
var v_jumping = 0.0
var v_onramp = 0.0
var v_out = 0.0
var v_pickhole = 0.0
var v_ramp1 = 0.0
var v_ramp2 = 0.0
var v_upspeed = 0.0
var v_wee = 0.0
var v_wee2 = 0.0
var v_wee3 = 0.0
var v_wo = 0.0
var v_wowzo = 0.0
var v_wowzo2 = 0.0
var v_yam = 0.0
func ev_create():
	if ((absf(GM.G["intro"] - 1.0) < 0.00001)):
		(GM.f_instance_destroy(self))
		return
	GM.G["xxxo"] = x
	GM.G["yyyo"] = y
	if ((GM.G["players"] >= 5.0)):
		v_wo = (GM.f_instance_create((x - 20139423.0), 199999.0, 251.0))
	if ((GM.G["players"] >= 4.0)):
		v_wo = (GM.f_instance_create((x + 200.0), 199999.0, 250.0))
	if ((GM.G["players"] >= 3.0)):
		v_wo = (GM.f_instance_create((x - 1000.0), 199999.0, 249.0))
	if ((GM.G["players"] >= 2.0)):
		v_wo = (GM.f_instance_create((x + 43.0), 199999.0, 248.0))
	if ((GM.G["players"] >= 1.0)):
		v_wo = (GM.f_instance_create(x, y, 243.0))
	(GM.f_instance_destroy(self))
	image_index = 0.0
	image_speed = 0.0
	if (GM.eq(GM.G["levelset"], 10.0)):
		GM.view_yview[0] = (y - (768.0 / 2.0))
		if ((GM.view_yview[0] > (GM.room_height - 768.0))):
			GM.view_yview[0] = (GM.room_height - 768.0)
		if ((GM.view_yview[0] < 0.0)):
			GM.view_yview[0] = 0.0
		GM.view_xview[0] = (x - (1024.0 / 2.0))
		if ((GM.view_xview[0] > (GM.room_width - 1024.0))):
			GM.view_xview[0] = (GM.room_width - 1024.0)
		if ((GM.view_xview[0] < 0.0)):
			GM.view_xview[0] = 0.0
func ev_alarm_7():
	v_gogo = 1.0
func ev_alarm_6():
	(GM.f_sound_stop(7.0))
	v_greenbomb = 0.0
func ev_alarm_5():
	if (((GM.f_instance_number(243.0)) > 0.0)):
		if ((GM.vb(243.0, "speed") > 0.0)):
			alarm[int(5.0)] = 5.0
			return
	if (((GM.f_instance_number(248.0)) > 0.0)):
		if ((GM.vb(248.0, "speed") > 0.0)):
			alarm[int(5.0)] = 5.0
			return
	if (((GM.f_instance_number(249.0)) > 0.0)):
		if ((GM.vb(249.0, "speed") > 0.0)):
			alarm[int(5.0)] = 5.0
			return
	if (((GM.f_instance_number(250.0)) > 0.0)):
		if ((GM.vb(250.0, "speed") > 0.0)):
			alarm[int(5.0)] = 5.0
			return
	if (((GM.f_instance_number(251.0)) > 0.0)):
		if ((GM.vb(251.0, "speed") > 0.0)):
			alarm[int(5.0)] = 5.0
			return
	if (((GM.f_instance_number(115.0)) > 0.0)):
		alarm[int(5.0)] = 5.0
		return
	if (((GM.f_instance_number(41.0)) > 0.0)):
		alarm[int(5.0)] = 5.0
		return
	if (((GM.f_instance_number(37.0)) > 0.0)):
		alarm[int(5.0)] = 5.0
		return
	if (((GM.f_instance_number(40.0)) > 0.0)):
		alarm[int(5.0)] = 5.0
		return
	if (((GM.f_instance_number(113.0)) > 0.0)):
		alarm[int(5.0)] = 5.0
		return
	v_i = 0.0
	while (v_i < (GM.f_instance_number(235.0))):
		v_foo = (GM.f_instance_find(235.0, v_i))
		if (GM.vb(v_foo, "speed") > 0.0):
			alarm[int(5.0)] = 5.0
			return
		v_i = v_i + 1.0
	if ((((((absf(GM.G["player1ready"] - 0.0) < 0.00001) or (absf(GM.G["player2ready"] - 0.0) < 0.00001)) or (absf(GM.G["player3ready"] - 0.0) < 0.00001)) or (absf(GM.G["player4ready"] - 0.0) < 0.00001)) or (absf(GM.G["player5ready"] - 0.0) < 0.00001))):
		alarm[int(5.0)] = 5.0
		return
	if ((absf(speed - 0.0) < 0.00001)):
		if not (((alarm[int(5.0)] > 1.0))):
			self.ev_user(0.0)
			v_blahz = 0.0
			(GM.f_sound_play(16.0))
			GM.view_object[int(0.0)] = 201.0
			if ((absf(GM.G["online"] - 1.0) < 0.00001)):
				if (GM.eq(GM.G["yourplayer"], 1.0)):
					(GM.f_mplay_message_send_guaranteed(0.0, 30.0, GM.G["player1shots"]))
				if (GM.eq(GM.G["yourplayer"], 2.0)):
					(GM.f_mplay_message_send_guaranteed(0.0, 31.0, GM.G["player2shots"]))
				if (GM.eq(GM.G["yourplayer"], 3.0)):
					(GM.f_mplay_message_send_guaranteed(0.0, 32.0, GM.G["player3shots"]))
				if (GM.eq(GM.G["yourplayer"], 4.0)):
					(GM.f_mplay_message_send_guaranteed(0.0, 33.0, GM.G["player4shots"]))
				if (GM.eq(GM.G["yourplayer"], 5.0)):
					(GM.f_mplay_message_send_guaranteed(0.0, 34.0, GM.G["player5shots"]))
				if (GM.eq(GM.G["yourplayer"], GM.G["personsturn"])):
					(GM.f_instance_create(0.0, 0.0, 256.0))
			if ((absf(GM.G["online"] - 0.0) < 0.00001)):
				(self.script_nextturn())
				if ((absf(GM.G["bonus"] - 1.0) < 0.00001)):
					GM.G["bonus"] = 0.0
func ev_alarm_4():
	(GM.f_sound_stop(15.0))
func ev_alarm_2():
	v_ramp1 = 1.0
	v_ramp2 = 1.0
func ev_alarm_1():
	x = v_wowzo
	y = v_wowzo2
	GM.G["bonus"] = 0.0
	if ((absf(v_pickhole - 3.0) < 0.00001)):
		v_wee2 = (GM.f_instance_create(x, y, 37.0))
	else:
		if ((absf(v_pickhole - 7.0) < 0.00001)):
			v_wee2 = (GM.f_instance_create(x, y, 113.0))
		else:
			v_wee2 = (GM.f_instance_create(x, y, 40.0))
	GM.vset(v_wee2, "v_implayer", v_implayer)
	GM.vset(v_wee2, "v_wee", v_wee)
	GM.vset(v_wee2, "v_pickhole", v_pickhole)
	visible = 0.0
	(GM.f_instance_destroy(self))
func ev_alarm_0():
	v_onramp = 0.0
	if ((absf((GM.f_instance_number(320.0)) - 1.0) < 0.00001)):
		if not (GM.truth(((GM.f_instance_position(x, (y + 14.0), 299.0))))):
			gravity = 0.3
		else:
			alarm[int(0.0)] = 1.0
	v_hit = 1.0
func ev_step():
	v_wee = GM.add(v_wee, speed)
	if ((speed > 3.0)):
		(GM.f_instance_create(((x - 10.0) + (GM.f_random(20.0))), ((y - 10.0) + (GM.f_random(20.0))), 14.0))
	if ((absf(v_jumping - 1.0) < 0.00001)):
		v_yam = v_yam + v_upspeed
		v_upspeed = v_upspeed - 0.02
		if ((v_yam < 1.0)):
			v_upspeed = 0.1
			v_yam = 1.0
			v_jumping = 0.0
	if ((speed > 0.0)):
		alarm[int(5.0)] = 15.0
	if ((speed > 30.0)):
		speed = 30.0
func ev_col_315():
	if (((GM.eq(GM.G["yourplayer"], v_implayer) or (absf(GM.G["online"] - 0.0) < 0.00001)) and (absf(v_greenbomb - 0.0) < 0.00001))):
		v_greenbomb = 1.0
		alarm[int(6.0)] = 2.0
		v_jumping = 1.0
		(GM.f_motion_add(self, ((GM.f_point_direction(x, y, GM.vb(self.other, "x"), GM.vb(self.other, "y"))) - 180.0), (25.0 + (GM.f_random(5.0)))))
		self.ev_user(0.0)
func ev_col_314():
	if ((GM.eq(GM.G["yourplayer"], v_implayer) or (absf(GM.G["online"] - 0.0) < 0.00001))):
		(GM.f_mplay_message_send_guaranteed(0.0, 603.0, (((GM.f_string(GM.vb(self.other, "x"))) + "|") + (GM.f_string(GM.vb(self.other, "y"))))))
		(self.script_sound_plays(56.0))
		self.ev_user(0.0)
		for _w1 in GM.with_list((self.other), self):
			if _w1._dead:
				continue
			_w1.other = self
			(GM.f_instance_destroy(_w1))
		alarm[int(3.0)] = 2.0
func ev_col_300():
	gravity = 0.0
	gravity_direction = 270.0
	alarm[int(0.0)] = 2.0
	if ((speed > 0.0)):
		speed = speed - 0.3
	if ((speed < 2.0)):
		speed = 0.0
	if ((absf(sprite_index - 190.0) < 0.00001)):
		sprite_index = 214.0
func ev_col_299():
	if ((((GM.f_place_meeting(self, x, (y + 35.0), 299.0))) >= 0.5 and (vspeed > 0.0))):
		vspeed = (vspeed / 1.5)
	if ((((GM.f_place_meeting(self, x, (y - 35.0), 299.0))) >= 0.5 and (vspeed < 0.0))):
		vspeed = (vspeed / 1.5)
	if ((((GM.f_place_meeting(self, (x + 35.0), y, 299.0))) >= 0.5 and (hspeed > 0.0))):
		hspeed = (hspeed / 1.5)
	if ((((GM.f_place_meeting(self, (x - 35.0), y, 299.0))) >= 0.5 and (hspeed < 0.0))):
		hspeed = (hspeed / 1.5)
	if not (GM.truth(((GM.f_instance_position(x, (y + 35.0), 299.0))))):
		if ((GM.vb(self.other, "y") > y)):
			if ((x < GM.vb(self.other, "x"))):
				hspeed = hspeed - 2.0
			if ((x > GM.vb(self.other, "x"))):
				hspeed = hspeed + 2.0
	if ((speed > 0.0)):
		(GM.f_sound_play(0.0))
		(GM.f_sound_play(20.0))
	if ((speed < 0.5)):
		gravity = 0.0
	alarm[int(0.0)] = 1.0
	if ((speed < 1.0)):
		speed = 0.0
	alarm[int(3.0)] = 1.0
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_292():
	alarm[int(3.0)] = 1.0
	if ((GM.eq(GM.G["yourplayer"], v_implayer) or (absf(GM.G["online"] - 0.0) < 0.00001))):
		self.ev_user(0.0)
		v_wee3 = (GM.f_instance_create(x, y, 237.0))
		GM.vset(v_wee3, "v_showtext", "+500 Strokes!")
		(GM.f_mplay_message_send(0.0, 555.0, "+500 Strokes!"))
		if ((absf(v_implayer - 1.0) < 0.00001)):
			GM.G["player1shots"] = GM.add(GM.G["player1shots"], 500.0)
			(GM.f_mplay_message_send_guaranteed(0.0, 30.0, GM.G["player1shots"]))
		if ((absf(v_implayer - 2.0) < 0.00001)):
			GM.G["player2shots"] = GM.add(GM.G["player2shots"], 500.0)
			(GM.f_mplay_message_send_guaranteed(0.0, 31.0, GM.G["player2shots"]))
		if ((absf(v_implayer - 3.0) < 0.00001)):
			GM.G["player3shots"] = GM.add(GM.G["player3shots"], 500.0)
			(GM.f_mplay_message_send_guaranteed(0.0, 32.0, GM.G["player3shots"]))
		if ((absf(v_implayer - 4.0) < 0.00001)):
			GM.G["player4shots"] = GM.add(GM.G["player4shots"], 500.0)
			(GM.f_mplay_message_send_guaranteed(0.0, 33.0, GM.G["player4shots"]))
		if ((absf(v_implayer - 5.0) < 0.00001)):
			GM.G["player5shots"] = GM.add(GM.G["player5shots"], 500.0)
			(GM.f_mplay_message_send_guaranteed(0.0, 34.0, GM.G["player5shots"]))
		(GM.f_sound_play(16.0))
		for _w2 in GM.with_list((self.other), self):
			if _w2._dead:
				continue
			_w2.other = self
			(GM.f_instance_destroy(_w2))
func ev_col_277():
	if ((absf(GM.G["online"] - 1.0) < 0.00001)):
		if ((GM.eq(GM.G["yourplayer"], GM.G["personsturn"]) and GM.eq(GM.G["yourplayer"], v_implayer))):
			if (GM.eq(GM.G["personsturn"], 1.0)):
				GM.G["player1shots"] = GM.G["player1shots"] - 1.0
				(GM.f_mplay_message_send(0.0, 30.0, GM.G["player1shots"]))
			if (GM.eq(GM.G["personsturn"], 2.0)):
				GM.G["player2shots"] = GM.G["player2shots"] - 1.0
				(GM.f_mplay_message_send(0.0, 31.0, GM.G["player2shots"]))
			if (GM.eq(GM.G["personsturn"], 3.0)):
				GM.G["player3shots"] = GM.G["player3shots"] - 1.0
				(GM.f_mplay_message_send(0.0, 32.0, GM.G["player3shots"]))
			if (GM.eq(GM.G["personsturn"], 4.0)):
				GM.G["player4shots"] = GM.G["player4shots"] - 1.0
				(GM.f_mplay_message_send(0.0, 33.0, GM.G["player4shots"]))
			if (GM.eq(GM.G["personsturn"], 5.0)):
				GM.G["player5shots"] = GM.G["player5shots"] - 1.0
				(GM.f_mplay_message_send(0.0, 34.0, GM.G["player5shots"]))
			GM.G["bonus"] = 1.0
			(GM.f_sound_play(35.0))
			v_wee3 = (GM.f_instance_create(x, y, 237.0))
			GM.vset(v_wee3, "v_showtext", "Extra Turn!")
			(GM.f_mplay_message_send(0.0, 555.0, "Extra Turn!"))
			self.ev_user(0.0)
			for _w3 in GM.with_list((self.other), self):
				if _w3._dead:
					continue
				_w3.other = self
				(GM.f_instance_destroy(_w3))
	else:
		if ((absf(GM.G["online"] - 0.0) < 0.00001)):
			if (GM.eq(GM.G["personsturn"], v_implayer)):
				if ((absf(v_implayer - 1.0) < 0.00001)):
					GM.G["player1shots"] = GM.G["player1shots"] - 1.0
				if ((absf(v_implayer - 2.0) < 0.00001)):
					GM.G["player2shots"] = GM.G["player2shots"] - 1.0
				if ((absf(v_implayer - 3.0) < 0.00001)):
					GM.G["player3shots"] = GM.G["player3shots"] - 1.0
				if ((absf(v_implayer - 4.0) < 0.00001)):
					GM.G["player4shots"] = GM.G["player4shots"] - 1.0
				if ((absf(v_implayer - 5.0) < 0.00001)):
					GM.G["player5shots"] = GM.G["player5shots"] - 1.0
				GM.G["bonus"] = 1.0
				(GM.f_sound_play(35.0))
				v_wee3 = (GM.f_instance_create(x, y, 237.0))
				GM.vset(v_wee3, "v_showtext", "Extra Turn!")
				for _w4 in GM.with_list((self.other), self):
					if _w4._dead:
						continue
					_w4.other = self
					(GM.f_instance_destroy(_w4))
func ev_col_235():
	if ((GM.eq(GM.G["yourplayer"], v_implayer) or (absf(GM.G["online"] - 0.0) < 0.00001))):
		(self.script_collisionss())
		self.ev_user(0.0)
func ev_col_213():
	(GM.f_sound_play(0.0))
	if GM.truth(((GM.f_instance_position(x, (y - 15.0), 213.0)))):
		y = ((GM.vb(self.other, "y") + GM.vb(self.other, "sprite_height")) + 13.0)
		vspeed = ((-vspeed) / 1.05)
	if GM.truth(((GM.f_instance_position(x, (y + 15.0), 213.0)))):
		y = (GM.vb(self.other, "y") - 13.0)
		vspeed = ((-vspeed) / 1.05)
	if GM.truth(((GM.f_instance_position((x - 15.0), y, 213.0)))):
		x = ((GM.vb(self.other, "x") + 306.0) - 13.0)
		if ((vspeed > (-15.0))):
			vspeed = vspeed - 1.0
		hspeed = GM.vb(self.other, "hspeed")
	if GM.truth(((GM.f_instance_position((x + 15.0), y, 213.0)))):
		x = ((GM.vb(self.other, "x") + 334.0) + 14.0)
		if ((vspeed > (-15.0))):
			vspeed = vspeed - 1.0
		hspeed = GM.vb(self.other, "hspeed")
	alarm[int(3.0)] = 2.0
func ev_col_204():
	if ((GM.eq(GM.G["yourplayer"], v_implayer) or (absf(GM.G["online"] - 0.0) < 0.00001))):
		(GM.f_mplay_message_send_guaranteed(0.0, 603.0, (((GM.f_string(GM.vb(self.other, "x"))) + "|") + (GM.f_string(GM.vb(self.other, "y"))))))
		(GM.f_motion_add(self, ((direction - 45.0) + (GM.f_random(90.0))), (GM.f_random(5.0))))
		(self.script_sound_plays(19.0))
		if ((absf(v_implayer - 1.0) < 0.00001)):
			(GM.f_instance_create(x, y, 208.0))
			(GM.f_mplay_message_send(0.0, 605.0, 0.0))
		if ((absf(v_implayer - 2.0) < 0.00001)):
			(GM.f_instance_create(x, y, 252.0))
			(GM.f_mplay_message_send(0.0, 606.0, 0.0))
		if ((absf(v_implayer - 3.0) < 0.00001)):
			(GM.f_instance_create(x, y, 253.0))
			(GM.f_mplay_message_send(0.0, 607.0, 0.0))
		if ((absf(v_implayer - 4.0) < 0.00001)):
			(GM.f_instance_create(x, y, 254.0))
			(GM.f_mplay_message_send(0.0, 608.0, 0.0))
		if ((absf(v_implayer - 5.0) < 0.00001)):
			(GM.f_instance_create(x, y, 255.0))
			(GM.f_mplay_message_send(0.0, 609.0, 0.0))
		v_jumping = 1.0
		self.ev_user(0.0)
func ev_col_198():
	if ((vspeed > 0.0)):
		(GM.f_sound_play(31.0))
		v_wee = (x - GM.vb(self.other, "x"))
		x = GM.add(GM.vb(197.0, "x"), v_wee)
		y = GM.vb(197.0, "y")
		(GM.f_instance_create(x, y, 203.0))
func ev_col_197():
	if ((vspeed < 0.0)):
		(GM.f_sound_play(31.0))
		v_wee = (x - GM.vb(self.other, "x"))
		x = GM.add(GM.vb(198.0, "x"), v_wee)
		y = GM.vb(198.0, "y")
		(GM.f_instance_create(x, y, 203.0))
func ev_col_196():
	if ((vspeed > 0.0)):
		(GM.f_sound_play(31.0))
		v_wee = (x - GM.vb(self.other, "x"))
		x = GM.add(GM.vb(195.0, "x"), v_wee)
		y = GM.vb(195.0, "y")
		(GM.f_instance_create(x, y, 203.0))
func ev_col_195():
	if ((vspeed < 0.0)):
		(GM.f_sound_play(31.0))
		v_wee = (x - GM.vb(self.other, "x"))
		x = GM.add(GM.vb(196.0, "x"), v_wee)
		y = GM.vb(196.0, "y")
		(GM.f_instance_create(x, y, 203.0))
func ev_col_194():
	if ((hspeed < 0.0)):
		(GM.f_sound_play(31.0))
		x = GM.vb(192.0, "x")
		v_wee = (y - GM.vb(self.other, "y"))
		y = GM.add(GM.vb(192.0, "y"), v_wee)
		(GM.f_instance_create(x, y, 203.0))
func ev_col_192():
	if ((hspeed > 0.0)):
		x = GM.vb(194.0, "x")
		v_wee = (y - GM.vb(self.other, "y"))
		y = GM.add(GM.vb(194.0, "y"), v_wee)
		(GM.f_sound_play(31.0))
		(GM.f_instance_create(x, y, 203.0))
func ev_col_181():
	(GM.f_motion_add(self, ((GM.f_point_direction(x, y, GM.vb(self.other, "x"), GM.vb(self.other, "y"))) + 90.0), 0.2))
	alarm[int(3.0)] = 2.0
func ev_col_178():
	(GM.f_motion_add(self, ((GM.f_point_direction(x, y, GM.vb(self.other, "x"), GM.vb(self.other, "y"))) - 90.0), 0.2))
	alarm[int(3.0)] = 2.0
func ev_col_159():
	(GM.f_motion_add(self, 270.0, 0.3))
	if not ((((GM.f_sound_isplaying(7.0)))) >= 0.5):
		(GM.f_sound_loop(7.0))
	alarm[int(6.0)] = 2.0
func ev_col_158():
	(GM.f_motion_add(self, 270.0, 0.3))
	if not ((((GM.f_sound_isplaying(7.0)))) >= 0.5):
		(GM.f_sound_loop(7.0))
	alarm[int(6.0)] = 2.0
func ev_col_153():
	(GM.f_motion_add(self, 270.0, 0.4))
func ev_col_150():
	if ((GM.eq(GM.G["yourplayer"], v_implayer) or (absf(GM.G["online"] - 0.0) < 0.00001))):
		(GM.f_mplay_message_send_guaranteed(0.0, 603.0, (((GM.f_string((GM.vb(self.other, "x") + 20.0))) + "|") + (GM.f_string((GM.vb(self.other, "y") + 20.0))))))
		if ((absf((GM.f_instance_number(158.0)) - 1.0) < 0.00001)):
			(GM.f_sound_play(20.0))
			(GM.f_motion_add(self, ((GM.f_point_direction(x, y, (GM.vb(self.other, "x") + (GM.vb(self.other, "sprite_width") / 2.0)), (GM.vb(self.other, "y") + (GM.vb(self.other, "sprite_height") / 2.0)))) - 180.0), (10.0 + (GM.f_random(5.0)))))
		else:
			(GM.f_motion_add(self, ((GM.f_point_direction(x, y, (GM.vb(self.other, "x") + (GM.vb(self.other, "sprite_width") / 2.0)), (GM.vb(self.other, "y") + (GM.vb(self.other, "sprite_height") / 2.0)))) - 180.0), (15.0 + (GM.f_random(5.0)))))
			(self.script_sound_plays(19.0))
		self.ev_user(0.0)
		v_jumping = 1.0
		for _w5 in GM.with_list((self.other), self):
			if _w5._dead:
				continue
			_w5.other = self
			(GM.f_instance_destroy(_w5))
func ev_col_146():
	if ((speed < 30.0)):
		direction = ((GM.f_point_direction(x, y, GM.vb(self.other, "x"), GM.vb(self.other, "y"))) + 120.0)
	speed = ((11.8668832 * (GM.f_point_distance(x, y, GM.vb(self.other, "x"), GM.vb(self.other, "y")))) / 170.0)
	x = x + (hspeed / 5.0)
	y = y + (vspeed / 5.0)
	(GM.f_sound_play(18.0))
	alarm[int(3.0)] = 2.0
func ev_col_140():
	(GM.f_motion_add(self, 0.0, 0.4))
	if not ((((GM.f_sound_isplaying(15.0)))) >= 0.5):
		(GM.f_sound_loop(15.0))
	alarm[int(4.0)] = 2.0
	alarm[int(3.0)] = 2.0
func ev_col_139():
	(GM.f_motion_add(self, 270.0, 0.4))
func ev_col_136():
	if ((absf(depth - (-1.0)) < 0.00001)):
		x = xprevious
		y = yprevious
		hspeed = (-hspeed)
		speed = (speed / 1.05)
		(self.script_sound_plays(0.0))
func ev_col_135():
	if ((absf(depth - (-1215752199.0)) < 0.00001)):
		x = xprevious
		y = yprevious
		vspeed = (-vspeed)
		speed = (speed / 1.05)
		(self.script_sound_plays(0.0))
func ev_col_131():
	(GM.f_motion_add(self, 270.0, 0.4))
func ev_col_122():
	(GM.f_motion_add(self, 90.0, 0.4))
	if not ((((GM.f_sound_isplaying(15.0)))) >= 0.5):
		(GM.f_sound_loop(15.0))
	alarm[int(4.0)] = 2.0
	alarm[int(3.0)] = 2.0
func ev_col_121():
	(GM.f_motion_add(self, 270.0, 0.4))
	if not ((((GM.f_sound_isplaying(15.0)))) >= 0.5):
		(GM.f_sound_loop(15.0))
	alarm[int(4.0)] = 2.0
	alarm[int(3.0)] = 2.0
func ev_col_120():
	(GM.f_motion_add(self, 180.0, 0.4))
	if not ((((GM.f_sound_isplaying(15.0)))) >= 0.5):
		(GM.f_sound_loop(15.0))
	alarm[int(4.0)] = 2.0
	alarm[int(3.0)] = 2.0
func ev_col_82():
	if ((absf(v_ramp1 - 1.0) < 0.00001)):
		if ((hspeed < 0.0)):
			direction = (((-((180.0 - direction)))) + 135.0)
		else:
			direction = ((-((315.0 - direction))))
		v_ramp1 = 0.0
	alarm[int(2.0)] = 2.0
func ev_col_81():
	if ((absf(v_ramp1 - 1.0) < 0.00001)):
		if ((hspeed < 0.0)):
			direction = (((-((135.0 - direction)))) + 180.0)
		else:
			direction = (((-((-direction)))) - 45.0)
		v_ramp1 = 0.0
	alarm[int(2.0)] = 2.0
func ev_col_72():
	(GM.f_motion_add(self, 225.0, 0.2))
func ev_col_71():
	if ((absf(GM.G["online"] - 1.0) < 0.00001)):
		if not ((GM.eq(GM.G["yourplayer"], v_implayer))):
			if not ((GM.eq(GM.G["yourplayer"], GM.G["personsturn"]))):
				(GM.f_sound_play(12.0))
				speed = 0.0
				if ((absf(v_implayer - 1.0) < 0.00001)):
					x = GM.G["p1xxx"]
					y = GM.G["p1yyy"]
				if ((absf(v_implayer - 2.0) < 0.00001)):
					x = GM.G["p2xxx"]
					y = GM.G["p2yyy"]
				if ((absf(v_implayer - 3.0) < 0.00001)):
					x = GM.G["p3xxx"]
					y = GM.G["p3yyy"]
				if ((absf(v_implayer - 4.0) < 0.00001)):
					x = GM.G["p4xxx"]
					y = GM.G["p4yyy"]
				if ((absf(v_implayer - 5.0) < 0.00001)):
					x = GM.G["p5xxx"]
					y = GM.G["p5yyy"]
				return
	v_wee2 = (GM.f_instance_create(x, y, 115.0))
	GM.vset(v_wee2, "v_wee", v_wee)
	GM.vset(v_wee2, "v_implayer", v_implayer)
	(GM.f_instance_destroy(self))
func ev_col_65():
	(GM.f_motion_add(self, 270.0, 0.2))
func ev_col_59():
	if ((absf(v_ramp2 - 1.0) < 0.00001)):
		if ((hspeed < 0.0)):
			direction = (((-((225.0 - direction)))) + 180.0)
		else:
			if (((direction > 0.0) and (direction < 90.0))):
				direction = (((-((0.0 - direction)))) + 45.0)
			else:
				direction = (((360.0 - ((0.0 - direction)))) + 45.0)
		v_ramp2 = 0.0
	alarm[int(2.0)] = 2.0
func ev_col_58():
	if ((absf(v_ramp1 - 1.0) < 0.00001)):
		if ((hspeed < 0.0)):
			direction = (((-((180.0 - direction)))) + 225.0)
		else:
			direction = ((-((45.0 - direction))))
		v_ramp1 = 0.0
	alarm[int(2.0)] = 2.0
func ev_col_42():
	if ((((y > 660.0) and (direction > 0.0)) and (direction < 180.0))):
		(self.script_sound_plays(6.0))
		vspeed = (-vspeed)
		alarm[int(3.0)] = 2.0
func ev_col_39():
	if ((absf(GM.vget(self.other, "v_pickhole") - 1.0) < 0.00001)):
		if ((absf(GM.G["online"] - 1.0) < 0.00001)):
			if not ((GM.eq(v_implayer, GM.G["yourplayer"]))):
				if (((absf(v_implayer - 1.0) < 0.00001) and (absf(GM.G["p1holetrans1"] - 0.0) < 0.00001))):
					return
				if (((absf(v_implayer - 2.0) < 0.00001) and (absf(GM.G["p2holetrans1"] - 0.0) < 0.00001))):
					return
				if (((absf(v_implayer - 3.0) < 0.00001) and (absf(GM.G["p3holetrans1"] - 0.0) < 0.00001))):
					return
				if (((absf(v_implayer - 4.0) < 0.00001) and (absf(GM.G["p4holetrans1"] - 0.0) < 0.00001))):
					return
				if (((absf(v_implayer - 5.0) < 0.00001) and (absf(GM.G["p5holetrans1"] - 0.0) < 0.00001))):
					return
	if ((absf(GM.vget(self.other, "v_pickhole") - 2.0) < 0.00001)):
		if ((absf(GM.G["online"] - 1.0) < 0.00001)):
			if not ((GM.eq(v_implayer, GM.G["yourplayer"]))):
				if (((absf(v_implayer - 1.0) < 0.00001) and (absf(GM.G["p1holetrans2"] - 0.0) < 0.00001))):
					return
				if (((absf(v_implayer - 2.0) < 0.00001) and (absf(GM.G["p2holetrans2"] - 0.0) < 0.00001))):
					return
				if (((absf(v_implayer - 3.0) < 0.00001) and (absf(GM.G["p3holetrans2"] - 0.0) < 0.00001))):
					return
				if (((absf(v_implayer - 4.0) < 0.00001) and (absf(GM.G["p4holetrans2"] - 0.0) < 0.00001))):
					return
				if (((absf(v_implayer - 5.0) < 0.00001) and (absf(GM.G["p5holetrans2"] - 0.0) < 0.00001))):
					return
	if ((absf(GM.vget(self.other, "v_pickhole") - 6.0) < 0.00001)):
		if ((absf(GM.G["online"] - 1.0) < 0.00001)):
			if not ((GM.eq(v_implayer, GM.G["yourplayer"]))):
				if (((absf(v_implayer - 1.0) < 0.00001) and (absf(GM.G["p1holetrans3"] - 0.0) < 0.00001))):
					return
				if (((absf(v_implayer - 2.0) < 0.00001) and (absf(GM.G["p2holetrans3"] - 0.0) < 0.00001))):
					return
				if (((absf(v_implayer - 3.0) < 0.00001) and (absf(GM.G["p3holetrans3"] - 0.0) < 0.00001))):
					return
				if (((absf(v_implayer - 4.0) < 0.00001) and (absf(GM.G["p4holetrans3"] - 0.0) < 0.00001))):
					return
				if (((absf(v_implayer - 5.0) < 0.00001) and (absf(GM.G["p5holetrans3"] - 0.0) < 0.00001))):
					return
	if ((((speed < 8.0) and ((GM.f_distance_to_point(self, GM.vb(self.other, "x"), GM.vb(self.other, "y"))) < 25.0)) and (absf(v_jumping - 0.0) < 0.00001))):
		if (GM.eq(v_out, 1.0)):
			self.ev_user(0.0)
			if ((absf(GM.vget(self.other, "v_pickhole") - 1.0) < 0.00001)):
				if (((absf(v_implayer - 1.0) < 0.00001) and GM.eq(GM.G["yourplayer"], 1.0))):
					(GM.f_mplay_message_send(0.0, 55.0, 0.0))
				if (((absf(v_implayer - 2.0) < 0.00001) and GM.eq(GM.G["yourplayer"], 2.0))):
					(GM.f_mplay_message_send(0.0, 56.0, 0.0))
				if (((absf(v_implayer - 3.0) < 0.00001) and GM.eq(GM.G["yourplayer"], 3.0))):
					(GM.f_mplay_message_send(0.0, 57.0, 0.0))
				if (((absf(v_implayer - 4.0) < 0.00001) and GM.eq(GM.G["yourplayer"], 4.0))):
					(GM.f_mplay_message_send(0.0, 58.0, 0.0))
				if (((absf(v_implayer - 5.0) < 0.00001) and GM.eq(GM.G["yourplayer"], 5.0))):
					(GM.f_mplay_message_send(0.0, 59.0, 0.0))
			if ((absf(GM.vget(self.other, "v_pickhole") - 2.0) < 0.00001)):
				if (((absf(v_implayer - 1.0) < 0.00001) and GM.eq(GM.G["yourplayer"], 1.0))):
					(GM.f_mplay_message_send(0.0, 60.0, 0.0))
				if (((absf(v_implayer - 2.0) < 0.00001) and GM.eq(GM.G["yourplayer"], 2.0))):
					(GM.f_mplay_message_send(0.0, 61.0, 0.0))
				if (((absf(v_implayer - 3.0) < 0.00001) and GM.eq(GM.G["yourplayer"], 3.0))):
					(GM.f_mplay_message_send(0.0, 62.0, 0.0))
				if (((absf(v_implayer - 4.0) < 0.00001) and GM.eq(GM.G["yourplayer"], 4.0))):
					(GM.f_mplay_message_send(0.0, 63.0, 0.0))
				if (((absf(v_implayer - 5.0) < 0.00001) and GM.eq(GM.G["yourplayer"], 5.0))):
					(GM.f_mplay_message_send(0.0, 64.0, 0.0))
			if ((absf(GM.vget(self.other, "v_pickhole") - 6.0) < 0.00001)):
				if (((absf(v_implayer - 1.0) < 0.00001) and GM.eq(GM.G["yourplayer"], 1.0))):
					(GM.f_mplay_message_send(0.0, 65.0, 0.0))
				if (((absf(v_implayer - 2.0) < 0.00001) and GM.eq(GM.G["yourplayer"], 2.0))):
					(GM.f_mplay_message_send(0.0, 66.0, 0.0))
				if (((absf(v_implayer - 3.0) < 0.00001) and GM.eq(GM.G["yourplayer"], 3.0))):
					(GM.f_mplay_message_send(0.0, 67.0, 0.0))
				if (((absf(v_implayer - 4.0) < 0.00001) and GM.eq(GM.G["yourplayer"], 4.0))):
					(GM.f_mplay_message_send(0.0, 68.0, 0.0))
				if (((absf(v_implayer - 5.0) < 0.00001) and GM.eq(GM.G["yourplayer"], 5.0))):
					(GM.f_mplay_message_send(0.0, 69.0, 0.0))
			if ((absf(GM.vget(self.other, "v_pickhole") - 7.0) < 0.00001)):
				if ((absf(GM.G["online"] - 1.0) < 0.00001)):
					if not ((GM.eq(v_implayer, GM.G["yourplayer"]))):
						speed = 0.0
						(GM.f_sound_play(12.0))
						if ((absf(v_implayer - 1.0) < 0.00001)):
							x = GM.G["p1xxx"]
							y = GM.G["p1yyy"]
						if ((absf(v_implayer - 2.0) < 0.00001)):
							x = GM.G["p2xxx"]
							y = GM.G["p2yyy"]
						if ((absf(v_implayer - 3.0) < 0.00001)):
							x = GM.G["p3xxx"]
							y = GM.G["p3yyy"]
						if ((absf(v_implayer - 4.0) < 0.00001)):
							x = GM.G["p4xxx"]
							y = GM.G["p4yyy"]
						if ((absf(v_implayer - 5.0) < 0.00001)):
							x = GM.G["p5xxx"]
							y = GM.G["p5yyy"]
						return
			(self.script_sound_plays(1.0))
			v_pickhole = GM.vget(self.other, "v_pickhole")
			v_wowzo = GM.vb(self.other, "x")
			v_wowzo2 = GM.vb(self.other, "y")
			alarm[int(1.0)] = 15.0
		v_out = 0.0
		speed = 3.0
		direction = (GM.f_point_direction(x, y, GM.vb(self.other, "x"), GM.vb(self.other, "y")))
	else:
		if (((direction < ((GM.f_point_direction(x, y, GM.vb(self.other, "x"), GM.vb(self.other, "y"))) + 20.0)) and (direction > ((GM.f_point_direction(x, y, GM.vb(self.other, "x"), GM.vb(self.other, "y"))) - 20.0)))):
			if ((absf(v_jumping - 0.0) < 0.00001)):
				direction = direction + ((-30.0) + (GM.f_random(60.0)))
				v_jumping = 1.0
				(self.script_sound_plays(5.0))
		else:
			(GM.f_motion_add(self, (GM.f_point_direction(x, y, GM.vb(self.other, "x"), GM.vb(self.other, "y"))), (2.0 - (speed / 20.0))))
func ev_col_35():
	if ((absf(GM.G["online"] - 1.0) < 0.00001)):
		if not ((GM.eq(v_implayer, GM.G["yourplayer"]))):
			if (((absf(v_implayer - 1.0) < 0.00001) and (absf(GM.G["p1hole"] - 0.0) < 0.00001))):
				return
			if (((absf(v_implayer - 2.0) < 0.00001) and (absf(GM.G["p2hole"] - 0.0) < 0.00001))):
				return
			if (((absf(v_implayer - 3.0) < 0.00001) and (absf(GM.G["p3hole"] - 0.0) < 0.00001))):
				return
			if (((absf(v_implayer - 4.0) < 0.00001) and (absf(GM.G["p4hole"] - 0.0) < 0.00001))):
				return
			if (((absf(v_implayer - 5.0) < 0.00001) and (absf(GM.G["p5hole"] - 0.0) < 0.00001))):
				return
	if ((((speed < 8.0) and ((GM.f_distance_to_point(self, GM.vb(self.other, "x"), GM.vb(self.other, "y"))) < 25.0)) and (absf(v_jumping - 0.0) < 0.00001))):
		if (GM.eq(v_out, 1.0)):
			if (((absf(v_implayer - 1.0) < 0.00001) and GM.eq(GM.G["yourplayer"], 1.0))):
				(GM.f_mplay_message_send(0.0, 50.0, 0.0))
			if (((absf(v_implayer - 2.0) < 0.00001) and GM.eq(GM.G["yourplayer"], 2.0))):
				(GM.f_mplay_message_send(0.0, 51.0, 0.0))
			if (((absf(v_implayer - 3.0) < 0.00001) and GM.eq(GM.G["yourplayer"], 3.0))):
				(GM.f_mplay_message_send(0.0, 52.0, 0.0))
			if (((absf(v_implayer - 4.0) < 0.00001) and GM.eq(GM.G["yourplayer"], 4.0))):
				(GM.f_mplay_message_send(0.0, 53.0, 0.0))
			if (((absf(v_implayer - 5.0) < 0.00001) and GM.eq(GM.G["yourplayer"], 5.0))):
				(GM.f_mplay_message_send(0.0, 54.0, 0.0))
			self.ev_user(0.0)
			(self.script_sound_plays(1.0))
			v_pickhole = 3.0
			v_wowzo = GM.vb(self.other, "x")
			v_wowzo2 = GM.vb(self.other, "y")
			alarm[int(1.0)] = 15.0
		v_out = 0.0
		speed = 3.0
		direction = (GM.f_point_direction(x, y, GM.vb(self.other, "x"), GM.vb(self.other, "y")))
	else:
		if (((direction < ((GM.f_point_direction(x, y, GM.vb(self.other, "x"), GM.vb(self.other, "y"))) + 20.0)) and (direction > ((GM.f_point_direction(x, y, GM.vb(self.other, "x"), GM.vb(self.other, "y"))) - 20.0)))):
			if ((absf(v_jumping - 0.0) < 0.00001)):
				direction = direction + ((-30.0) + (GM.f_random(60.0)))
				v_jumping = 1.0
				(self.script_sound_plays(5.0))
				alarm[int(3.0)] = 1.0
		else:
			alarm[int(3.0)] = 1.0
			(GM.f_motion_add(self, (GM.f_point_direction(x, y, GM.vb(self.other, "x"), GM.vb(self.other, "y"))), (2.0 - (speed / 20.0))))
func ev_col_3():
	(GM.f_move_bounce_solid(self, 1.0))
	speed = (speed / 1.05)
	(self.script_sound_plays(0.0))
	alarm[int(3.0)] = 30.0
func ev_col_0():
	alarm[int(3.0)] = 90.0
	(self.script_collisionss(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	(GM.f_draw_set_font(3.0))
	(GM.f_draw_set_halign(0.0))
	(GM.f_draw_set_color(41984.0))
	if GM.truth(((GM.f_instance_position(x, y, 65.0)))):
		(GM.f_draw_sprite_ext(35.0, 0.0, x, (y + ((((GM.vb(65.0, "y") + GM.vb(65.0, "sprite_height")) - y)) / 2.0)), 1.0, 1.0, v_wee, 16777215.0, 0.1))
	if ((absf((GM.f_instance_number(2.0)) - 0.0) < 0.00001)):
		v_wee3 = (GM.f_point_direction(x, y, GM.mouse_x, GM.mouse_y))
	v_wee2 = ((GM.f_point_direction(x, y, GM.mouse_x, GM.mouse_y)) - 90.0)
	if (((absf(speed - 0.0) < 0.00001) and (absf(alarm[int(5.0)] - (-1.0)) < 0.00001))):
		if (GM.eq(GM.G["personsturn"], GM.G["yourplayer"])):
			(GM.f_draw_arrow(x, y, (x + (GM.f_lengthdir_x(25.0, (v_wee3 - 180.0)))), (y + (GM.f_lengthdir_y(25.0, (v_wee3 - 180.0)))), 13.0))
	(GM.f_draw_sprite_ext(35.0, 0.0, x, (y - ((45.0 - (v_yam * 45.0)))), 1.0, 1.0, v_wee, 16777215.0, 0.5))
	if (GM.eq(GM.G["personsturn"], 1.0)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player1ball"], x, y, v_yam, v_yam, v_wee, 16777215.0, 1.0))
	if (GM.eq(GM.G["personsturn"], 2.0)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player2ball"], x, y, v_yam, v_yam, v_wee, 16777215.0, 1.0))
	if (GM.eq(GM.G["personsturn"], 3.0)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player3ball"], x, y, v_yam, v_yam, v_wee, 16777215.0, 1.0))
	if (GM.eq(GM.G["personsturn"], 4.0)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player4ball"], x, y, v_yam, v_yam, v_wee, 16777215.0, 1.0))
	if (GM.eq(GM.G["personsturn"], 5.0)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player5ball"], x, y, v_yam, v_yam, v_wee, 16777215.0, 1.0))
	(GM.f_draw_sprite_ext(61.0, 0.0, x, y, v_yam, v_yam, 0.0, 16777215.0, 1.0))
	if ((((absf((GM.f_instance_number(2.0)) - 0.0) < 0.00001) and (absf(speed - 0.0) < 0.00001)) and (absf(alarm[int(5.0)] - (-1.0)) < 0.00001))):
		if (GM.eq(GM.G["personsturn"], GM.G["yourplayer"])):
			(GM.f_draw_sprite_ext(1.0, 0.0, x, y, 1.0, 1.0, v_wee2, 16777215.0, 1.0))
func ev_keypress_13():
	pass
