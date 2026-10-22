extends "res://games/mini_golf_pro/scripts.gd"
var v_go = 0.0
var v_implayer = 0.0
var v_omg = 0.0
var v_temp = 0.0
var v_ultra = 0.0
var v_wee = 0.0
var v_wee2 = 0.0
var v_whatball = 0.0
func ev_create():
	v_go = 1.0
	if ((absf(GM.G["online"] - 1.0) < 0.00001)):
		if not ((GM.eq(GM.G["yourplayer"], GM.G["personsturn"]))):
			v_go = 0.0
	v_omg = 0.0
	if (GM.eq(GM.G["personsturn"], 1.0)):
		v_whatball = 243.0
	if (GM.eq(GM.G["personsturn"], 2.0)):
		v_whatball = 248.0
	if (GM.eq(GM.G["personsturn"], 3.0)):
		v_whatball = 249.0
	if (GM.eq(GM.G["personsturn"], 4.0)):
		v_whatball = 250.0
	if (GM.eq(GM.G["personsturn"], 5.0)):
		v_whatball = 251.0
	v_ultra = 1.0
	(GM.f_sound_play(45.0))
	if ((absf((GM.f_instance_number(86.0)) - 1.0) < 0.00001)):
		depth = (-500000.0)
func ev_alarm_2():
	(GM.f_sound_stop(45.0))
	if ((absf(v_go - 1.0) < 0.00001)):
		v_omg = 1.0
		speed = 0.0
		v_temp = (GM.f_instance_create((GM.view_xview[0] + (1024.0 / 2.0)), (GM.view_yview[0] + (GM.view_hview[0] / 2.0)), 149.0))
		GM.vset(v_temp, "v_whatball", v_whatball)
		alarm[int(0.0)] = 9000.0
		v_go = 0.0
func ev_alarm_1():
	if ((absf(v_go - 1.0) < 0.00001)):
		(GM.f_sound_play(45.0))
		x = GM.vb(v_whatball, "x")
		y = GM.vb(v_whatball, "y")
func ev_alarm_0():
	direction = (GM.f_point_direction(x, y, GM.vb(v_whatball, "x"), GM.vb(v_whatball, "y")))
	speed = ((GM.f_point_distance(x, y, GM.vb(v_whatball, "x"), GM.vb(v_whatball, "y"))) / 2.5)
	if ((speed < 2.0)):
		speed = 2.0
	if ((absf(GM.G["online"] - 1.0) < 0.00001)):
		if (((GM.f_instance_number(42.0)) > 0.0)):
			(GM.f_mplay_message_send(0.0, 301.0, GM.vget(42.0, "v_wee")))
		if (((GM.f_instance_number(146.0)) > 0.0)):
			(GM.f_mplay_message_send(0.0, 302.0, GM.vget(146.0, "v_wee")))
func ev_step():
	if ((absf(v_go - 1.0) < 0.00001)):
		if (((GM.f_point_distance(x, y, GM.vb(v_whatball, "x"), GM.vb(v_whatball, "y"))) < 53.0)):
			direction = GM.add(v_wee2, 90.0)
			speed = 2.0
		else:
			if ((absf(alarm[int(1.0)] - (-1.0)) < 0.00001)):
				alarm[int(1.0)] = 45.0
			speed = 0.0
	image_angle = v_wee2
func ev_col_0():
	if ((((absf(v_go - 0.0) < 0.00001) and (absf(v_omg - 1.0) < 0.00001)) and (absf(GM.vget(self.other, "v_implayer") - v_implayer) < 0.00001))):
		if ((absf(GM.G["online"] - 1.0) < 0.00001)):
			(GM.f_mplay_message_send(0.0, 401.0, 0.0))
			GM.G["player1ready"] = 0.0
			if ((GM.G["players"] >= 2.0)):
				GM.G["player2ready"] = 0.0
			if ((GM.G["players"] >= 3.0)):
				GM.G["player3ready"] = 0.0
			if ((GM.G["players"] >= 4.0)):
				GM.G["player4ready"] = 0.0
			if ((GM.G["players"] >= 5.0)):
				GM.G["player5ready"] = 0.0
		GM.vsetb(v_whatball, "direction", direction)
		GM.vsetb(v_whatball, "speed", speed)
		GM.vset(v_whatball, "v_blahz", 1.0)
		if ((absf(GM.G["online"] - 1.0) < 0.00001)):
			if (GM.eq(GM.G["personsturn"], 1.0)):
				(GM.f_mplay_message_send_guaranteed(0.0, 10.0, (((((((GM.f_string(GM.vb(v_whatball, "x"))) + "|") + (GM.f_string(GM.vb(v_whatball, "y")))) + "|") + (GM.f_string(GM.vb(v_whatball, "speed")))) + "|") + (GM.f_string(GM.vb(v_whatball, "direction"))))))
				GM.G["p1xxx"] = GM.vb(v_whatball, "x")
				(GM.f_mplay_message_send_guaranteed(0.0, 40.0, GM.vb(243.0, "x")))
				GM.G["p1yyy"] = GM.vb(v_whatball, "y")
				(GM.f_mplay_message_send_guaranteed(0.0, 41.0, GM.vb(243.0, "y")))
			if (GM.eq(GM.G["personsturn"], 2.0)):
				(GM.f_mplay_message_send_guaranteed(0.0, 14.0, (((((((GM.f_string(GM.vb(v_whatball, "x"))) + "|") + (GM.f_string(GM.vb(v_whatball, "y")))) + "|") + (GM.f_string(GM.vb(v_whatball, "speed")))) + "|") + (GM.f_string(GM.vb(v_whatball, "direction"))))))
				GM.G["p2xxx"] = GM.vb(v_whatball, "x")
				(GM.f_mplay_message_send_guaranteed(0.0, 42.0, GM.vb(248.0, "x")))
				GM.G["p2yyy"] = GM.vb(v_whatball, "y")
				(GM.f_mplay_message_send_guaranteed(0.0, 43.0, GM.vb(248.0, "y")))
			if (GM.eq(GM.G["personsturn"], 3.0)):
				(GM.f_mplay_message_send_guaranteed(0.0, 18.0, (((((((GM.f_string(GM.vb(v_whatball, "x"))) + "|") + (GM.f_string(GM.vb(v_whatball, "y")))) + "|") + (GM.f_string(GM.vb(v_whatball, "speed")))) + "|") + (GM.f_string(GM.vb(v_whatball, "direction"))))))
				GM.G["p3xxx"] = GM.vb(v_whatball, "x")
				(GM.f_mplay_message_send_guaranteed(0.0, 44.0, GM.vb(249.0, "x")))
				GM.G["p3yyy"] = GM.vb(v_whatball, "y")
				(GM.f_mplay_message_send_guaranteed(0.0, 45.0, GM.vb(249.0, "y")))
			if (GM.eq(GM.G["personsturn"], 4.0)):
				(GM.f_mplay_message_send_guaranteed(0.0, 22.0, (((((((GM.f_string(GM.vb(v_whatball, "x"))) + "|") + (GM.f_string(GM.vb(v_whatball, "y")))) + "|") + (GM.f_string(GM.vb(v_whatball, "speed")))) + "|") + (GM.f_string(GM.vb(v_whatball, "direction"))))))
				GM.G["p4xxx"] = GM.vb(v_whatball, "x")
				(GM.f_mplay_message_send_guaranteed(0.0, 46.0, GM.vb(250.0, "x")))
				GM.G["p4yyy"] = GM.vb(v_whatball, "y")
				(GM.f_mplay_message_send_guaranteed(0.0, 47.0, GM.vb(250.0, "y")))
			if (GM.eq(GM.G["personsturn"], 5.0)):
				(GM.f_mplay_message_send_guaranteed(0.0, 26.0, (((((((GM.f_string(GM.vb(v_whatball, "x"))) + "|") + (GM.f_string(GM.vb(v_whatball, "y")))) + "|") + (GM.f_string(GM.vb(v_whatball, "speed")))) + "|") + (GM.f_string(GM.vb(v_whatball, "direction"))))))
				GM.G["p5xxx"] = GM.vb(v_whatball, "x")
				(GM.f_mplay_message_send_guaranteed(0.0, 48.0, GM.vb(251.0, "x")))
				GM.G["p5yyy"] = GM.vb(v_whatball, "y")
				(GM.f_mplay_message_send_guaranteed(0.0, 49.0, GM.vb(251.0, "y")))
			GM.vb(v_whatball, "alarm")[int(3.0)] = 5.0
		else:
			if (GM.eq(GM.G["personsturn"], 1.0)):
				GM.G["p1xxx"] = GM.vb(v_whatball, "x")
				GM.G["p1yyy"] = GM.vb(v_whatball, "y")
			if (GM.eq(GM.G["personsturn"], 2.0)):
				GM.G["p2xxx"] = GM.vb(v_whatball, "x")
				GM.G["p2yyy"] = GM.vb(v_whatball, "y")
			if (GM.eq(GM.G["personsturn"], 3.0)):
				GM.G["p3xxx"] = GM.vb(v_whatball, "x")
				GM.G["p3yyy"] = GM.vb(v_whatball, "y")
			if (GM.eq(GM.G["personsturn"], 4.0)):
				GM.G["p4xxx"] = GM.vb(v_whatball, "x")
				GM.G["p4yyy"] = GM.vb(v_whatball, "y")
			if (GM.eq(GM.G["personsturn"], 5.0)):
				GM.G["p5xxx"] = GM.vb(v_whatball, "x")
				GM.G["p5yyy"] = GM.vb(v_whatball, "y")
		(self.script_sound_plays(0.0))
		GM.view_object[int(0.0)] = v_whatball
		GM.view_vborder[0] = ((GM.view_hview[0] / 2.0) - (GM.vb(v_whatball, "sprite_height") / 2.0))
		GM.view_hborder[0] = ((GM.view_wview[0] / 2.0) - (GM.vb(v_whatball, "sprite_width") / 2.0))
		if (GM.eq(GM.G["personsturn"], 1.0)):
			GM.G["player1shots"] = GM.add(GM.G["player1shots"], 1.0)
			(GM.f_mplay_message_send_guaranteed(0.0, 30.0, GM.G["player1shots"]))
		if (GM.eq(GM.G["personsturn"], 2.0)):
			GM.G["player2shots"] = GM.add(GM.G["player2shots"], 1.0)
			(GM.f_mplay_message_send_guaranteed(0.0, 31.0, GM.G["player2shots"]))
		if (GM.eq(GM.G["personsturn"], 3.0)):
			GM.G["player3shots"] = GM.add(GM.G["player3shots"], 1.0)
			(GM.f_mplay_message_send_guaranteed(0.0, 32.0, GM.G["player3shots"]))
		if (GM.eq(GM.G["personsturn"], 4.0)):
			GM.G["player4shots"] = GM.add(GM.G["player4shots"], 1.0)
			(GM.f_mplay_message_send_guaranteed(0.0, 33.0, GM.G["player4shots"]))
		if (GM.eq(GM.G["personsturn"], 5.0)):
			GM.G["player5shots"] = GM.add(GM.G["player5shots"], 1.0)
			(GM.f_mplay_message_send_guaranteed(0.0, 34.0, GM.G["player5shots"]))
		(GM.f_instance_destroy(self))
	if not (((absf(GM.room - 58.0) < 0.00001))):
		if ((GM.vb(v_whatball, "speed") > 0.0)):
			(GM.f_instance_destroy(self))
func ev_mouse_56():
	alarm[int(2.0)] = 1.0
func ev_mouse_54():
	GM.G["shoot"] = 1.0
	(GM.f_instance_destroy(self))
	return
func ev_draw():
	(GM.f_draw_sprite_ext(1.0, 0.0, x, y, 1.0, 1.0, v_wee2, 16777215.0, 1.0))
	(GM.f_draw_set_color(255.0))
	v_wee = (GM.f_round((GM.f_point_distance(x, y, GM.vb(v_whatball, "x"), GM.vb(v_whatball, "y")))))
	if ((v_wee > 100.0)):
		v_wee = 100.0
	(GM.f_draw_sprite_ext(182.0, 0.0, GM.vb(v_whatball, "x"), GM.vb(v_whatball, "y"), 1.0, 1.0, 0.0, 16777215.0, (v_wee / 300.0)))
	if (((absf(speed - 2.0) < 0.00001) or (absf(speed - 0.0) < 0.00001))):
		(GM.f_draw_sprite_ext(195.0, 0.0, GM.vb(v_whatball, "x"), GM.vb(v_whatball, "y"), 1.0, 1.0, 0.0, 16777215.0, 0.2))
		(GM.f_draw_sprite_ext(193.0, (v_wee / 2.45), GM.vb(v_whatball, "x"), GM.vb(v_whatball, "y"), 1.0, 1.0, 0.0, 16777215.0, 0.7))
	(GM.f_draw_set_alpha(1.0))
