extends "res://games/mini_golf_pro/scripts.gd"
var v_what1 = 0.0
var v_what2 = 0.0
var v_what3 = 0.0
var v_what4 = 0.0
func ev_create():
	v_what1 = 1.0
	v_what2 = 1.0
	v_what3 = 1.0
	v_what4 = 1.0
func ev_alarm_3():
	GM.vsetb(251.0, "x", (GM.G["xxxo"] - 2.0))
	GM.vsetb(251.0, "y", GM.G["yyyo"])
	v_what4 = 0.0
	GM.view_xview[0] = (GM.vb(251.0, "x") - (1024.0 / 2.0))
	GM.view_yview[0] = (GM.vb(251.0, "y") - (768.0 / 2.0))
	if ((GM.view_yview[0] > (GM.room_height - 768.0))):
		GM.view_yview[0] = (GM.room_height - 768.0)
	if ((GM.view_yview[0] < 0.0)):
		GM.view_yview[0] = 0.0
	if ((GM.view_xview[0] > (GM.room_width - 1024.0))):
		GM.view_xview[0] = (GM.room_width - 1024.0)
	if ((GM.view_xview[0] < 0.0)):
		GM.view_xview[0] = 0.0
func ev_alarm_2():
	GM.vsetb(250.0, "x", (GM.G["xxxo"] + 2.0))
	GM.vsetb(250.0, "y", GM.G["yyyo"])
	v_what3 = 0.0
	GM.G["p4xxx"] = GM.vb(250.0, "x")
	GM.G["p4yyy"] = GM.vb(250.0, "y")
	GM.view_xview[0] = (GM.vb(250.0, "x") - (1024.0 / 2.0))
	GM.view_yview[0] = (GM.vb(250.0, "y") - (768.0 / 2.0))
	if ((GM.view_yview[0] > (GM.room_height - 768.0))):
		GM.view_yview[0] = (GM.room_height - 768.0)
	if ((GM.view_yview[0] < 0.0)):
		GM.view_yview[0] = 0.0
	if ((GM.view_xview[0] > (GM.room_width - 1024.0))):
		GM.view_xview[0] = (GM.room_width - 1024.0)
	if ((GM.view_xview[0] < 0.0)):
		GM.view_xview[0] = 0.0
func ev_alarm_1():
	GM.vsetb(249.0, "x", (GM.G["xxxo"] + 1.0))
	GM.vsetb(249.0, "y", GM.G["yyyo"])
	v_what2 = 0.0
	GM.G["p3xxx"] = GM.vb(249.0, "x")
	GM.G["p3yyy"] = GM.vb(249.0, "y")
	GM.view_xview[0] = (GM.vb(249.0, "x") - (1024.0 / 2.0))
	GM.view_yview[0] = (GM.vb(249.0, "y") - (768.0 / 2.0))
	if ((GM.view_yview[0] > (GM.room_height - 768.0))):
		GM.view_yview[0] = (GM.room_height - 768.0)
	if ((GM.view_yview[0] < 0.0)):
		GM.view_yview[0] = 0.0
	if ((GM.view_xview[0] > (GM.room_width - 1024.0))):
		GM.view_xview[0] = (GM.room_width - 1024.0)
	if ((GM.view_xview[0] < 0.0)):
		GM.view_xview[0] = 0.0
func ev_alarm_0():
	GM.vsetb(248.0, "x", (GM.G["xxxo"] - 1.0))
	GM.vsetb(248.0, "y", GM.G["yyyo"])
	GM.G["p2xxx"] = GM.vb(248.0, "x")
	GM.G["p2yyy"] = GM.vb(248.0, "y")
	v_what1 = 0.0
	GM.view_xview[0] = (GM.vb(248.0, "x") - (1024.0 / 2.0))
	GM.view_yview[0] = (GM.vb(248.0, "y") - (768.0 / 2.0))
	if ((GM.view_yview[0] > (GM.room_height - 768.0))):
		GM.view_yview[0] = (GM.room_height - 768.0)
	if ((GM.view_yview[0] < 0.0)):
		GM.view_yview[0] = 0.0
	if ((GM.view_xview[0] > (GM.room_width - 1024.0))):
		GM.view_xview[0] = (GM.room_width - 1024.0)
	if ((GM.view_xview[0] < 0.0)):
		GM.view_xview[0] = 0.0
func ev_step():
	if (((((GM.G["players"] >= 2.0) and GM.eq(GM.G["personsturn"], 2.0)) and (absf(v_what1 - 1.0) < 0.00001)) and (absf(alarm[int(0.0)] - (-1.0)) < 0.00001))):
		alarm[int(0.0)] = 1.0
	if (((((GM.G["players"] >= 3.0) and GM.eq(GM.G["personsturn"], 3.0)) and (absf(v_what2 - 1.0) < 0.00001)) and (absf(alarm[int(1.0)] - (-1.0)) < 0.00001))):
		alarm[int(1.0)] = 1.0
	if (((((GM.G["players"] >= 4.0) and GM.eq(GM.G["personsturn"], 4.0)) and (absf(v_what3 - 1.0) < 0.00001)) and (absf(alarm[int(2.0)] - (-1.0)) < 0.00001))):
		alarm[int(2.0)] = 1.0
	if (((((GM.G["players"] >= 5.0) and GM.eq(GM.G["personsturn"], 5.0)) and (absf(v_what4 - 1.0) < 0.00001)) and (absf(alarm[int(3.0)] - (-1.0)) < 0.00001))):
		alarm[int(3.0)] = 1.0
func ev_draw():
	(GM.f_draw_set_font(1.0))
	(GM.f_draw_set_halign(1.0))
	(GM.f_draw_sprite_ext(161.0, 0.0, (GM.view_xview[0] + 12.0), (GM.view_yview[0] + 12.0), 1.0, 1.0, 0.0, 16777215.0, 0.4))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_set_halign(0.0))
	(GM.f_draw_text((GM.view_xview[0] + 22.0), (GM.view_yview[0] + 22.0), "Multiplayer Scores:"))
	(GM.f_draw_text((GM.view_xview[0] + 22.0), (GM.view_yview[0] + 52.0), ((("Player1 Score: " + (GM.f_string(GM.G["player1score"]))) + "    Shots: ") + (GM.f_string(GM.G["player1shots"])))))
	(GM.f_draw_text((GM.view_xview[0] + 22.0), (GM.view_yview[0] + 82.0), ((("Player2 Score: " + (GM.f_string(GM.G["player2score"]))) + "    Shots: ") + (GM.f_string(GM.G["player2shots"])))))
	if ((GM.G["players"] >= 3.0)):
		(GM.f_draw_text((GM.view_xview[0] + 22.0), (GM.view_yview[0] + 112.0), ((("Player3 Score: " + (GM.f_string(GM.G["player3score"]))) + "    Shots: ") + (GM.f_string(GM.G["player3shots"])))))
	if ((GM.G["players"] >= 4.0)):
		(GM.f_draw_text((GM.view_xview[0] + 22.0), (GM.view_yview[0] + 142.0), ((("Player4 Score: " + (GM.f_string(GM.G["player4score"]))) + "    Shots: ") + (GM.f_string(GM.G["player4shots"])))))
	if ((GM.G["players"] >= 5.0)):
		(GM.f_draw_text((GM.view_xview[0] + 22.0), (GM.view_yview[0] + 172.0), ((("Player5 Score: " + (GM.f_string(GM.G["player5score"]))) + "    Shots: ") + (GM.f_string(GM.G["player5shots"])))))
	if (GM.eq(GM.G["personsturn"], 1.0)):
		(GM.f_draw_text((GM.view_xview[0] + 22.0), (GM.view_yview[0] + 212.0), (("" + (GM.f_string(GM.G["p1name"]))) + "'s turn")))
	if (GM.eq(GM.G["personsturn"], 2.0)):
		(GM.f_draw_text((GM.view_xview[0] + 22.0), (GM.view_yview[0] + 212.0), (("" + (GM.f_string(GM.G["p2name"]))) + "'s turn")))
	if (GM.eq(GM.G["personsturn"], 3.0)):
		(GM.f_draw_text((GM.view_xview[0] + 22.0), (GM.view_yview[0] + 212.0), (("" + (GM.f_string(GM.G["p3name"]))) + "'s turn")))
	if (GM.eq(GM.G["personsturn"], 4.0)):
		(GM.f_draw_text((GM.view_xview[0] + 22.0), (GM.view_yview[0] + 212.0), (("" + (GM.f_string(GM.G["p4name"]))) + "'s turn")))
	if (GM.eq(GM.G["personsturn"], 5.0)):
		(GM.f_draw_text((GM.view_xview[0] + 22.0), (GM.view_yview[0] + 212.0), (("" + (GM.f_string(GM.G["p5name"]))) + "'s turn")))
