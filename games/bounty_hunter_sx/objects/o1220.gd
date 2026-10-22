extends "res://games/bounty_hunter_sx/scripts.gd"
var v_brush_color = 0.0
var v_pen_color = 0.0
func ev_create():
	(GM.f_instance_create(((GM.room_width / 2.0) - 26.0), ((GM.room_height / 2.0) - 26.0), 1072.0))
	GM.G["ucolor"] = 0.0
	GM.G["pearlgot"] = 0.0
	GM.G["poopooo"] = 0.0
	GM.G["bossbeat"] = 0.0
	GM.G["orbhave"] = 0.0
	GM.G["maphave"] = 0.0
	GM.G["stufflocked"] = 1.0
	GM.G["ftp"] = 0.0
	GM.G["absorbing"] = 0.0
	GM.G["reflecting"] = 0.0
	GM.G["cloaking"] = 0.0
	GM.G["weee"] = 1.0
	GM.G["shotspeed"] = 0.0
	GM.G["accel"] = 0.5
	GM.G["topspeed"] = 15.0
	GM.G["goodluck"] = 0.0
	GM.G["reverse"] = 0.0
	GM.G["minelaunch"] = 0.0
	GM.G["mines"] = 0.0
	GM.G["sound1"] = 1.0
	GM.G["sound2"] = 1.0
	GM.G["missilelaunch"] = 0.0
	GM.G["missiles"] = 0.0
	GM.G["planetat"] = "blah"
	GM.G["mycolor"] = "blue"
	GM.G["aaa"] = 8.0
	GM.G["bbb"] = 90.0
	GM.G["ccc"] = 0.0
	GM.G["ddd"] = 0.0
	GM.G["zz"] = 0.0
	GM.G["myweapon"] = 1.0
	GM.G["fuel"] = 100.0
	GM.G["leads"] = 0.0
	GM.G["coppers"] = 0.0
	GM.G["silvers"] = 0.0
	GM.G["golds"] = 0.0
	GM.G["diamonds"] = 0.0
	GM.G["sheild"] = "Shield Level 1"
	GM.G["ftank"] = "Fuel Tank 1"
	GM.health = 100.0
	(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 1068.0))
	(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 1104.0))
	(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 1105.0))
	(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 1106.0))
	(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 1107.0))
	(GM.f_sound_stop(323.0))
	if (((absf(GM.G["music"] - 1.0) < 0.00001))):
		(GM.f_sound_loop(299.0))
	for _r417 in range(int((25.0))):
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 486.0))
	for _r418 in range(int((50.0))):
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 487.0))
	for _r419 in range(int((300.0))):
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 1066.0))
	for _r420 in range(int((2.0))):
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 1079.0))
	for _r421 in range(int((2.0))):
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 1084.0))
	for _r422 in range(int((2.0))):
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 1090.0))
	(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 1139.0))
	for _r423 in range(int((2.0))):
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 1130.0))
func ev_draw():
	GM.font_align = 1.0
	(GM.f_draw_sprite(1074.0, (-1.0), GM.view_xview[0], GM.view_yview[0]))
	if (((absf(GM.G["missilelaunch"] - 1.0) < 0.00001))):
		if (((GM.G["missiles"] > 0.0))):
			(GM.f_draw_sprite(1117.0, (-1.0), ((GM.view_xview[0] + 1024.0) - 130.0), GM.view_yview[0]))
		else:
			(GM.f_draw_sprite(1119.0, (-1.0), ((GM.view_xview[0] + 1024.0) - 130.0), GM.view_yview[0]))
	if (((absf(GM.G["minelaunch"] - 1.0) < 0.00001))):
		if (((GM.G["mines"] > 0.0))):
			(GM.f_draw_sprite(1118.0, (-1.0), ((GM.view_xview[0] + 1024.0) - 195.0), GM.view_yview[0]))
		else:
			(GM.f_draw_sprite(1120.0, (-1.0), ((GM.view_xview[0] + 1024.0) - 195.0), GM.view_yview[0]))
	if (((absf(GM.G["myweapon"] - 1.0) < 0.00001))):
		(GM.f_draw_sprite(1106.0, (-1.0), ((GM.view_xview[0] + 1024.0) - 65.0), GM.view_yview[0]))
	else:
		if (((absf(GM.G["myweapon"] - 2.0) < 0.00001))):
			(GM.f_draw_sprite(1107.0, (-1.0), ((GM.view_xview[0] + 1024.0) - 65.0), GM.view_yview[0]))
		else:
			if (((absf(GM.G["myweapon"] - 3.0) < 0.00001))):
				(GM.f_draw_sprite(1108.0, (-1.0), ((GM.view_xview[0] + 1024.0) - 65.0), GM.view_yview[0]))
			else:
				if (((absf(GM.G["myweapon"] - 4.0) < 0.00001))):
					(GM.f_draw_sprite(1109.0, (-1.0), ((GM.view_xview[0] + 1024.0) - 65.0), GM.view_yview[0]))
	(GM.f_draw_sprite(1095.0, (-1.0), (GM.view_xview[0] + 392.0), GM.view_yview[0]))
	(GM.f_action_draw_font("Courier", 15.0, 0.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text((GM.view_xview[0] + (1024.0 / 2.0)), (GM.view_yview[0] + 10.0), ("Zyns: " + (GM.f_string(GM.G["zz"])))))
	(GM.f_action_draw_font("Courier", 10.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_healthbar((GM.view_xview[0] + 2.0), (GM.view_yview[0] + 3.0), (GM.view_xview[0] + 149.0), (GM.view_yview[0] + 32.0), GM.health, 0.0, 255.0, 65280.0, 0.0, 1.0, 1.0))
	(GM.f_draw_text((GM.view_xview[0] + 72.0), (GM.view_yview[0] + 5.0), ("" + (GM.f_string(GM.G["sheild"])))))
	v_pen_color = 0.0
	v_brush_color = 0.0
	(GM.f_draw_rectangle((GM.view_xview[0] + 2.0), (GM.view_yview[0] + 34.0), (GM.view_xview[0] + 149.0), (GM.view_yview[0] + 63.0)))
	v_brush_color = 16711680.0
	(GM.f_draw_rectangle((GM.view_xview[0] + 2.0), (GM.view_yview[0] + 34.0), (GM.view_xview[0] + ((149.0 / 100.0) * GM.G["fuel"])), (GM.view_yview[0] + 63.0)))
	(GM.f_draw_text((GM.view_xview[0] + 72.0), (GM.view_yview[0] + 38.0), ("" + (GM.f_string(GM.G["ftank"])))))
	(GM.f_draw_sprite(1063.0, (-1.0), (GM.view_xview[0] + 3.0), (GM.view_yview[0] + 68.0)))
	(GM.f_draw_text((GM.view_xview[0] + 49.0), (GM.view_yview[0] + 68.0), ("" + (GM.f_string(GM.G["diamonds"])))))
	(GM.f_draw_sprite(1062.0, (-1.0), (GM.view_xview[0] + 3.0), (GM.view_yview[0] + 98.0)))
	(GM.f_draw_text((GM.view_xview[0] + 49.0), (GM.view_yview[0] + 98.0), ("" + (GM.f_string(GM.G["golds"])))))
	(GM.f_draw_sprite(1061.0, (-1.0), (GM.view_xview[0] + 3.0), (GM.view_yview[0] + 128.0)))
	(GM.f_draw_text((GM.view_xview[0] + 49.0), (GM.view_yview[0] + 128.0), ("" + (GM.f_string(GM.G["silvers"])))))
	(GM.f_draw_sprite(1060.0, (-1.0), (GM.view_xview[0] + 3.0), (GM.view_yview[0] + 158.0)))
	(GM.f_draw_text((GM.view_xview[0] + 49.0), (GM.view_yview[0] + 158.0), ("" + (GM.f_string(GM.G["coppers"])))))
	(GM.f_draw_sprite(1059.0, (-1.0), (GM.view_xview[0] + 3.0), (GM.view_yview[0] + 188.0)))
	(GM.f_draw_text((GM.view_xview[0] + 49.0), (GM.view_yview[0] + 188.0), ("" + (GM.f_string(GM.G["leads"])))))
	if (((absf(GM.G["cloaking"] - 1.0) < 0.00001))):
		(GM.f_draw_sprite(1138.0, (-1.0), ((GM.view_xview[0] + 1024.0) - 65.0), ((GM.view_yview[0] + 768.0) - 380.0)))
	if (((absf(GM.G["absorbing"] - 1.0) < 0.00001))):
		(GM.f_draw_sprite(1137.0, (-1.0), ((GM.view_xview[0] + 1024.0) - 65.0), ((GM.view_yview[0] + 768.0) - 460.0)))
	if (((absf(GM.G["reflecting"] - 1.0) < 0.00001))):
		(GM.f_draw_sprite(1139.0, (-1.0), ((GM.view_xview[0] + 1024.0) - 65.0), ((GM.view_yview[0] + 768.0) - 540.0)))
	if (((absf(GM.G["ftp"] - 1.0) < 0.00001))):
		(GM.f_draw_sprite(1140.0, (-1.0), ((GM.view_xview[0] + 1024.0) - 65.0), ((GM.view_yview[0] + 768.0) - 620.0)))
func ev_keypress_27():
	if ((((await GM.f_show_question("Are you sure you want to exit?  Have you saved?"))))) >= 0.5:
		(GM.f_room_goto(81.0))
