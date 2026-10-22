extends "res://games/mini_golf_pro/objects/o0.gd"
var v_coll = 0.0
var v_ham = 0.0
var v_mass = 0.0
var v_scaleme = 0.0
var v_what = 0.0
func ev_create():
	alarm[int(3.0)] = 5.0
	v_coll = 0.0
	v_implayer = 2.0
	v_gogo = 1.0
	v_mass = 1.0
	v_wee = 0.0
	v_ramp1 = 1.0
	v_ramp2 = 1.0
	friction = 0.1
	v_scaleme = 1.0
	v_ham = 90.0
	v_jumping = 0.0
	v_upspeed = 0.1
	v_yam = 1.0
	v_out = 1.0
	v_blahz = 0.0
	GM.G["p2xxx"] = x
	GM.G["p2yyy"] = y
	v_greenbomb = 0.0
func ev_alarm_3():
	if ((GM.eq(GM.G["yourplayer"], 2.0) and (absf(GM.G["online"] - 1.0) < 0.00001))):
		if ((speed > 0.0)):
			alarm[int(3.0)] = 100.0
		else:
			alarm[int(3.0)] = 200.0
		self.ev_user(0.0)
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
	if (((speed > 0.0) and GM.eq(GM.G["personsturn"], 2.0))):
		if ((absf(GM.G["online"] - 1.0) < 0.00001)):
			if (GM.eq(GM.G["yourplayer"], 2.0)):
				alarm[int(5.0)] = 15.0
		else:
			alarm[int(5.0)] = 15.0
	if ((speed > 30.0)):
		speed = 30.0
func ev_mouse_53():
	if ((((absf((GM.f_instance_number(182.0)) - 0.0) < 0.00001) and (absf((GM.f_instance_number(302.0)) - 0.0) < 0.00001)) and (absf(GM.G["shoot"] - 1.0) < 0.00001))):
		if ((absf(GM.G["online"] - 1.0) < 0.00001)):
			if not ((GM.eq(GM.G["yourplayer"], 2.0))):
				return
		if not ((GM.eq(GM.G["personsturn"], 2.0))):
			return
		if ((((((absf(GM.G["player1ready"] - 0.0) < 0.00001) or (absf(GM.G["player2ready"] - 0.0) < 0.00001)) or (absf(GM.G["player3ready"] - 0.0) < 0.00001)) or (absf(GM.G["player4ready"] - 0.0) < 0.00001)) or (absf(GM.G["player5ready"] - 0.0) < 0.00001))):
			return
		if ((((((absf((GM.f_instance_number(2.0)) - 0.0) < 0.00001) and (absf(speed - 0.0) < 0.00001)) and (absf(visible - 1.0) < 0.00001)) and (absf(alarm[int(5.0)] - (-1.0)) < 0.00001)) and (absf(v_gogo - 1.0) < 0.00001))):
			v_what = (GM.f_instance_create(GM.vb(248.0, "x"), GM.vb(248.0, "y"), 2.0))
			GM.vset(v_what, "v_wee2", v_wee2)
			GM.vset(v_what, "v_implayer", v_implayer)
			v_gogo = 0.0
			alarm[int(7.0)] = 30.0
func ev_other_10():
	if (GM.eq(GM.G["yourplayer"], 2.0)):
		(GM.f_mplay_message_send_guaranteed(0.0, 14.0, (((((((GM.f_string(x)) + "|") + (GM.f_string(y))) + "|") + (GM.f_string(speed))) + "|") + (GM.f_string(direction)))))
func ev_draw():
	(GM.f_draw_set_font(3.0))
	(GM.f_draw_set_halign(0.0))
	(GM.f_draw_set_color(41984.0))
	if GM.truth(((GM.f_instance_position(x, y, 65.0)))):
		(GM.f_draw_sprite_ext(35.0, 0.0, x, (y + ((((GM.vb(65.0, "y") + GM.vb(65.0, "sprite_height")) - y)) / 2.0)), 1.0, 1.0, v_wee, 16777215.0, 0.1))
	if ((absf((GM.f_instance_number(2.0)) - 0.0) < 0.00001)):
		v_wee3 = (GM.f_point_direction(x, y, GM.mouse_x, GM.mouse_y))
	v_wee2 = ((GM.f_point_direction(x, y, GM.mouse_x, GM.mouse_y)) - 90.0)
	if ((((absf(speed - 0.0) < 0.00001) and (absf(alarm[int(5.0)] - (-1.0)) < 0.00001)) and GM.eq(GM.G["personsturn"], 2.0))):
		if ((GM.eq(GM.G["yourplayer"], 2.0) or (absf(GM.G["online"] - 0.0) < 0.00001))):
			(GM.f_draw_arrow(x, y, (x + (GM.f_lengthdir_x(25.0, (v_wee3 - 180.0)))), (y + (GM.f_lengthdir_y(25.0, (v_wee3 - 180.0)))), 13.0))
	(GM.f_draw_sprite_ext(35.0, 0.0, x, (y - ((45.0 - (v_yam * 45.0)))), 1.0, 1.0, v_wee, 16777215.0, 0.5))
	(GM.f_draw_sprite_ext(0.0, GM.G["player2ball"], x, y, v_yam, v_yam, v_wee, 16777215.0, 1.0))
	(GM.f_draw_sprite_ext(61.0, 0.0, x, y, v_yam, v_yam, 0.0, 16777215.0, 1.0))
	if (((((absf((GM.f_instance_number(2.0)) - 0.0) < 0.00001) and (absf(speed - 0.0) < 0.00001)) and (absf(alarm[int(5.0)] - (-1.0)) < 0.00001)) and GM.eq(GM.G["personsturn"], 2.0))):
		if ((GM.eq(GM.G["yourplayer"], 2.0) or (absf(GM.G["online"] - 0.0) < 0.00001))):
			(GM.f_draw_sprite_ext(1.0, 0.0, x, y, 1.0, 1.0, v_wee2, 16777215.0, 1.0))
	if ((GM.eq(GM.G["yourplayer"], 2.0) or (absf(GM.G["online"] - 0.0) < 0.00001))):
		return
	(GM.f_draw_set_halign(1.0))
	(GM.f_draw_text(x, (y - 50.0), ("" + (GM.f_string(GM.G["p2name"])))))
