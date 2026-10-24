extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_Menu = 0.0
var v_drawtext = ""
var v_mission = 0.0
var v_mymoney = 0.0
var v_wee = 0.0
var v_woot = 0.0
var v_wow = 0.0
func ev_create():
	(GM.f_sound_stop(109.0))
	(GM.f_sound_play(216.0))
	(GM.f_sound_stop(111.0))
	(GM.f_sound_stop(114.0))
	(GM.f_sound_play(112.0))
	(GM.f_sound_stop(115.0))
	(GM.f_sound_stop(243.0))
	alarm[int(0.0)] = 1.0
func ev_alarm_0():
	if ((GM.G["warning"] > 50.0)):
		if not (((absf(v_mission - 4.0) < 0.00001))):
			if not (((absf(v_mission - 24.0) < 0.00001))):
				v_drawtext = "Come back when your damage meter is lower!"
func ev_step():
	(GM.f_instance_deactivate_all(self, 1.0))
func ev_draw():
	(GM.f_draw_sprite(815.0, (-1.0), GM.view_xview[0], GM.view_yview[0]))
	(GM.f_action_draw_font("Times New Roman", 24.0, 1.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	GM.font_align = 1.0
	(GM.f_draw_text_ext((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 170.0), ("" + (GM.f_string(v_drawtext))), (-1.0), 700.0))
func ev_keypress_89():
	(GM.f_instance_activate_all())
	(GM.f_instance_deactivate_object(1083.0))
	(GM.f_instance_deactivate_object(1082.0))
	if ((GM.G["warning"] > 50.0)):
		if not (((absf(v_mission - 4.0) < 0.00001))):
			if not (((absf(v_mission - 24.0) < 0.00001))):
				(GM.f_sound_play(216.0))
				(GM.f_instance_destroy(self))
				return
	if ((absf(v_mission - 1.0) < 0.00001)):
		(GM.f_instance_create((GM.view_xview[0] - 200.0), (GM.view_yview[0] + 400.0), 785.0))
		(GM.f_instance_create(0.0, 700.0, 784.0))
		v_wow = (GM.f_instance_create(x, y, 920.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 2.0) < 0.00001)):
		(GM.f_instance_create((GM.view_xview[0] - 200.0), (GM.view_yview[0] + 400.0), 785.0))
		(GM.f_instance_create((GM.view_xview[0] + 1000.0), (GM.view_yview[0] + 400.0), 785.0))
		(GM.f_instance_create(0.0, 700.0, 784.0))
		v_wow = (GM.f_instance_create(x, y, 786.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 3.0) < 0.00001)):
		for _r447 in range(int((1.0))):
			(GM.f_instance_create(x, y, 987.0))
		v_wee = (GM.f_instance_create(x, y, 986.0))
		GM.vset(v_wee, "v_weapon", 10.0)
		GM.vsetb(7.0, "y", 40.0)
		(GM.f_instance_create(0.0, 150.0, 784.0))
		v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 4.0) < 0.00001)):
		if ((GM.G["j4var11"] >= 500.0)):
			(GM.f_sound_play(224.0))
			GM.G["j4var11"] = GM.G["j4var11"] - 500.0
			GM.G["warning"] = GM.G["warning"] - 50.0
			if ((GM.G["warning"] < 0.0)):
				GM.G["warning"] = 0.0
	if ((absf(v_mission - 5.0) < 0.00001)):
		(GM.f_instance_create(0.0, 0.0, 809.0))
		(GM.f_instance_create(0.0, 0.0, 808.0))
		(GM.f_instance_create(0.0, 0.0, 806.0))
		(GM.f_instance_create(GM.vb(790.0, "x"), GM.vb(790.0, "y"), 791.0))
		GM.vsetb(790.0, "visible", 0.0)
		v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 6.0) < 0.00001)):
		(GM.f_instance_create(0.0, 0.0, 809.0))
		(GM.f_instance_create(0.0, 0.0, 808.0))
		(GM.f_instance_create(0.0, 0.0, 806.0))
		(GM.f_instance_create(GM.vb(790.0, "x"), GM.vb(790.0, "y"), 791.0))
		GM.vsetb(790.0, "visible", 0.0)
		v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 7.0) < 0.00001)):
		v_wee = (GM.f_instance_create(634.0, 1061.0, 993.0))
		GM.vsetb(v_wee, "image_single", 1.0)
		v_wee = (GM.f_instance_create(2960.0, 638.0, 993.0))
		GM.vsetb(v_wee, "image_single", 2.0)
		v_wee = (GM.f_instance_create(3560.0, 1135.0, 993.0))
		GM.vsetb(v_wee, "image_single", 1.0)
		v_wee = (GM.f_instance_create(200.0, 149.0, 993.0))
		GM.vsetb(v_wee, "image_single", 2.0)
		v_wow = (GM.f_instance_create(x, y, 680.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 8.0) < 0.00001)):
		(GM.f_instance_create(x, y, 995.0))
		GM.vsetb(677.0, "visible", 0.0)
		v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 9.0) < 0.00001)):
		(GM.f_instance_create((x - 140.0), 900.0, 800.0))
		(GM.f_instance_create((x - 140.0), 900.0, 801.0))
		(GM.f_instance_create(x, y, 797.0))
		(GM.f_instance_create((x - 480.0), 1113.0, 796.0))
		(GM.f_instance_create((x - 140.0), 0.0, 794.0))
		v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 10.0) < 0.00001)):
		(GM.f_instance_create((x - 140.0), 700.0, 800.0))
		(GM.f_instance_create((x - 140.0), 700.0, 801.0))
		(GM.f_instance_create(x, y, 799.0))
		(GM.f_instance_create((x - 480.0), 1113.0, 796.0))
		(GM.f_instance_create((x - 140.0), 0.0, 794.0))
		v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 11.0) < 0.00001)):
		(GM.f_instance_create(x, y, 998.0))
		GM.vsetb(997.0, "visible", 0.0)
		v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 12.0) < 0.00001)):
		v_wee = (GM.f_instance_create(x, y, 986.0))
		GM.vset(v_wee, "v_weapon", 12.0)
		(GM.f_instance_create(x, y, 1002.0))
		(GM.f_instance_create(2084.0, 810.0, 1001.0))
		(GM.f_instance_create(2602.0, 354.0, 1001.0))
		(GM.f_instance_create(1912.0, 182.0, 1001.0))
		(GM.f_instance_create(1320.0, 0.0, 794.0))
		v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 13.0) < 0.00001)):
		(GM.f_instance_create(0.0, 0.0, 802.0))
		v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 14.0) < 0.00001)):
		v_wee = (GM.f_instance_create(x, y, 986.0))
		GM.vset(v_wee, "v_weapon", 12.0)
		(GM.f_instance_create(x, y, 1002.0))
		(GM.f_instance_create(3285.0, 869.0, 1001.0))
		(GM.f_instance_create(3220.0, 541.0, 1001.0))
		(GM.f_instance_create(3353.0, 70.0, 1001.0))
		(GM.f_instance_create(1320.0, 0.0, 794.0))
		v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 15.0) < 0.00001)):
		for _r448 in range(int((105.0))):
			(GM.f_instance_create((GM.f_random(GM.room_width)), (15.0 + (GM.f_random((GM.room_height - 300.0)))), 1003.0))
		v_wow = (GM.f_instance_create(x, y, 795.0))
		(GM.f_instance_create(x, y, 1006.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 16.0) < 0.00001)):
		GM.vsetb(7.0, "y", (720.0 - 70.0))
		(GM.f_instance_create(x, y, 1011.0))
		(GM.f_instance_create(x, y, 1009.0))
		(GM.f_instance_create(0.0, 720.0, 784.0))
		v_wee = (GM.f_instance_create(x, y, 986.0))
		GM.vset(v_wee, "v_weapon", 25.0)
		v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 17.0) < 0.00001)):
		GM.vsetb(7.0, "y", (320.0 - 70.0))
		(GM.f_instance_create(x, y, 1011.0))
		(GM.f_instance_create(x, y, 1009.0))
		(GM.f_instance_create(x, y, 1028.0))
		(GM.f_instance_create(0.0, 320.0, 784.0))
		v_wee = (GM.f_instance_create(x, y, 986.0))
		GM.vset(v_wee, "v_weapon", 25.0)
		v_wow = (GM.f_instance_create(x, y, 1043.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 18.0) < 0.00001)):
		(GM.f_instance_create(x, y, 1037.0))
		(GM.f_instance_create(x, y, 1035.0))
		v_wee = (GM.f_instance_create(x, y, 986.0))
		GM.vset(v_wee, "v_weapon", 13.0)
		v_wow = (GM.f_instance_create(x, y, 1038.0))
		GM.vset(v_wow, "v_mission", v_mission)
		GM.vsetb(7.0, "speed", 0.0)
	if ((absf(v_mission - 19.0) < 0.00001)):
		(GM.f_instance_create(x, y, 1037.0))
		(GM.f_instance_create(x, y, 1035.0))
		v_wee = (GM.f_instance_create(x, y, 986.0))
		GM.vset(v_wee, "v_weapon", 13.0)
		v_wow = (GM.f_instance_create(x, y, 1038.0))
		GM.vset(v_wow, "v_mission", v_mission)
		GM.vsetb(7.0, "speed", 0.0)
	if ((absf(v_mission - 20.0) < 0.00001)):
		(GM.f_instance_create((GM.room_width - 100.0), 100.0, 1113.0))
		(GM.f_instance_create(x, y, 1039.0))
		(GM.f_instance_create((x - 100.0), 1113.0, 796.0))
		v_wow = (GM.f_instance_create(x, y, 680.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 21.0) < 0.00001)):
		(GM.f_instance_create(x, y, 1039.0))
		(GM.f_instance_create((x - 100.0), 1113.0, 796.0))
		v_wow = (GM.f_instance_create(x, y, 1038.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 22.0) < 0.00001)):
		v_wee = (GM.f_instance_create(x, y, 986.0))
		GM.vset(v_wee, "v_weapon", 9.0)
		v_wow = (GM.f_instance_create(x, y, 1038.0))
		GM.vset(v_wow, "v_mission", v_mission)
		(GM.f_instance_create(x, y, 1040.0))
		GM.vsetb(7.0, "speed", 0.0)
	if ((absf(v_mission - 23.0) < 0.00001)):
		(GM.f_instance_create((x + 300.0), y, 1041.0))
		v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
		GM.vsetb(7.0, "speed", 0.0)
	if ((absf(v_mission - 24.0) < 0.00001)):
		(GM.f_instance_create(x, y, 1074.0))
	if ((absf(v_mission - 91.0) < 0.00001)):
		v_wee = (GM.f_instance_create(x, y, 986.0))
		GM.vset(v_wee, "v_weapon", 5.0)
		(GM.f_instance_create((x - 140.0), 900.0, 800.0))
		(GM.f_instance_create((x - 140.0), 900.0, 801.0))
		(GM.f_instance_create(x, y, 919.0))
		(GM.f_instance_create((x - 480.0), 1113.0, 796.0))
		(GM.f_instance_create((x - 140.0), 0.0, 794.0))
		v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 92.0) < 0.00001)):
		v_wee = (GM.f_instance_create(x, y, 986.0))
		GM.vset(v_wee, "v_weapon", 5.0)
		(GM.f_instance_create((x - 140.0), 700.0, 800.0))
		(GM.f_instance_create((x - 140.0), 700.0, 801.0))
		(GM.f_instance_create(x, y, 1062.0))
		(GM.f_instance_create((x - 480.0), 1113.0, 796.0))
		(GM.f_instance_create((x - 140.0), 0.0, 794.0))
		v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 93.0) < 0.00001)):
		(GM.f_instance_create(x, y, 1071.0))
		for _w449 in GM.with_list((1067.0), self):
			if _w449._dead:
				continue
			_w449.other = self
			(GM.f_instance_create(_w449.x, _w449.y, 1068.0))
		for _r450 in range(int((60.0))):
			(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 1070.0))
		v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 94.0) < 0.00001)):
		for _r451 in range(int((15.0))):
			(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 1088.0))
		(GM.f_instance_create(x, y, 1072.0))
		for _w452 in GM.with_list((1067.0), self):
			if _w452._dead:
				continue
			_w452.other = self
			(GM.f_instance_create(_w452.x, _w452.y, 1068.0))
		for _r453 in range(int((60.0))):
			(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 1070.0))
		v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 95.0) < 0.00001)):
		GM.vsetb(7.0, "x", x)
		GM.vsetb(7.0, "y", y)
		(GM.f_instance_create(3600.0, 80.0, 1114.0))
		(GM.f_instance_create(40.0, 320.0, 1084.0))
		(GM.f_instance_activate_object(1082.0))
		(GM.f_instance_create(x, y, 1081.0))
		v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 96.0) < 0.00001)):
		GM.vsetb(7.0, "x", x)
		GM.vsetb(7.0, "y", y)
		(GM.f_instance_create(240.0, 240.0, 1085.0))
		(GM.f_instance_activate_object(1083.0))
		(GM.f_instance_create(x, y, 1081.0))
		v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 97.0) < 0.00001)):
		(GM.f_instance_create(x, y, 1107.0))
		GM.vsetb(7.0, "y", 800.0)
		(GM.f_instance_create(x, y, 1087.0))
		v_wow = (GM.f_instance_create(x, y, 1038.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 98.0) < 0.00001)):
		(GM.f_instance_create(x, y, 1107.0))
		GM.vsetb(7.0, "y", 800.0)
		(GM.f_instance_create(x, y, 1087.0))
		v_wow = (GM.f_instance_create(x, y, 680.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 99.0) < 0.00001)):
		GM.vsetb(7.0, "speed", 0.0)
		(GM.f_instance_create(x, y, 1106.0))
		(GM.f_instance_create(1730.0, 760.0, 1105.0))
		for _w454 in GM.with_list((7.0), self):
			if _w454._dead:
				continue
			_w454.other = self
			_w454.x = ((GM.vb(1105.0, "x") + 150.0) - (_w454.sprite_width / 2.0))
			_w454.y = ((GM.vb(1105.0, "y") + 150.0) - (_w454.sprite_height / 2.0))
		v_wow = (GM.f_instance_create(x, y, 786.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 100.0) < 0.00001)):
		GM.vsetb(7.0, "speed", 0.0)
		(GM.f_instance_create(x, y, 1106.0))
		(GM.f_instance_create(1730.0, 760.0, 1105.0))
		for _w455 in GM.with_list((7.0), self):
			if _w455._dead:
				continue
			_w455.other = self
			_w455.x = ((GM.vb(1105.0, "x") + 150.0) - (_w455.sprite_width / 2.0))
			_w455.y = ((GM.vb(1105.0, "y") + 150.0) - (_w455.sprite_height / 2.0))
		v_wow = (GM.f_instance_create(x, y, 1109.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 101.0) < 0.00001)):
		(GM.f_instance_create(x, y, 1112.0))
		for _r456 in range(int((15.0))):
			(GM.f_instance_create(x, y, 1111.0))
		v_wow = (GM.f_instance_create(x, y, 1043.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 102.0) < 0.00001)):
		(GM.f_instance_create(x, y, 1112.0))
		for _r457 in range(int((15.0))):
			(GM.f_instance_create(x, y, 1116.0))
		v_wow = (GM.f_instance_create(x, y, 1043.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 103.0) < 0.00001)):
		(GM.f_instance_create(x, y, 1118.0))
		v_wee = (GM.f_instance_create((GM.vb(7.0, "x") - 10.0), (GM.vb(7.0, "y") - 250.0), 1117.0))
		GM.vsetb(v_wee, "image_single", 0.0)
		v_wee = (GM.f_instance_create((GM.vb(7.0, "x") - 10.0), (GM.vb(7.0, "y") - 250.0), 1117.0))
		GM.vsetb(v_wee, "image_single", 1.0)
		v_wee = (GM.f_instance_create((GM.vb(7.0, "x") - 10.0), (GM.vb(7.0, "y") - 250.0), 1117.0))
		GM.vsetb(v_wee, "image_single", 2.0)
		v_wee = (GM.f_instance_create((GM.vb(7.0, "x") - 10.0), (GM.vb(7.0, "y") - 250.0), 1117.0))
		GM.vsetb(v_wee, "image_single", 3.0)
		v_wee = (GM.f_instance_create((GM.vb(7.0, "x") - 10.0), (GM.vb(7.0, "y") - 250.0), 1117.0))
		GM.vsetb(v_wee, "image_single", 4.0)
		v_wee = (GM.f_instance_create((GM.vb(7.0, "x") - 10.0), (GM.vb(7.0, "y") - 250.0), 1117.0))
		GM.vsetb(v_wee, "image_single", 5.0)
		v_wee = (GM.f_instance_create((GM.vb(7.0, "x") - 10.0), (GM.vb(7.0, "y") - 250.0), 1117.0))
		GM.vsetb(v_wee, "image_single", 6.0)
		v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 104.0) < 0.00001)):
		v_wee = (GM.f_instance_create(x, y, 986.0))
		GM.vset(v_wee, "v_weapon", 11.0)
		(GM.f_instance_create(x, y, 1107.0))
		(GM.f_instance_create(x, y, 1121.0))
		v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 105.0) < 0.00001)):
		v_wee = (GM.f_instance_create(x, y, 986.0))
		GM.vset(v_wee, "v_weapon", 17.0)
		(GM.f_instance_create(x, y, 1107.0))
		(GM.f_instance_create(x, y, 1121.0))
		v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if (((absf(v_mission - 106.0) < 0.00001) or (absf(v_mission - 107.0) < 0.00001))):
		(GM.f_instance_create(x, y, 1122.0))
		v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if (((absf(v_mission - 108.0) < 0.00001) or (absf(v_mission - 109.0) < 0.00001))):
		(GM.f_instance_create(x, y, 1107.0))
		v_wee = (GM.f_instance_create(x, y, 986.0))
		GM.vset(v_wee, "v_weapon", 16.0)
		(GM.f_instance_create(x, y, 1126.0))
		(GM.f_instance_create(2680.0, 0.0, 794.0))
		v_woot = 80.0
		for _r458 in range(int((15.0))):
			(GM.f_instance_create(2900.0, v_woot, 1125.0))
			v_woot = GM.add(v_woot, 70.0)
		v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 110.0) < 0.00001)):
		(GM.f_instance_create(x, y, 1107.0))
		(GM.f_instance_create(2940.0, 900.0, 1127.0))
		v_wow = (GM.f_instance_create(x, y, 1043.0))
		GM.vset(v_wow, "v_mission", v_mission)
	if ((absf(v_mission - 111.0) < 0.00001)):
		v_wee = (GM.f_instance_create(x, y, 986.0))
		GM.vset(v_wee, "v_weapon", 55.0)
		(GM.f_instance_create((x - 480.0), 1113.0, 1132.0))
		(GM.f_instance_create(x, y, 1131.0))
		if ((absf((GM.f_instance_number(1099.0)) - 1.0) < 0.00001)):
			v_wow = (GM.f_instance_create(x, y, 1038.0))
		else:
			v_wow = (GM.f_instance_create(x, y, 795.0))
		GM.vset(v_wow, "v_mission", v_mission)
	(GM.f_sound_play(216.0))
	(GM.f_instance_destroy(self))
	GM.G["j4var11"] = (GM.G["j4var11"] + v_mymoney)
	v_mymoney = 0.0
	(GM.f_sound_stop_all())
	self.ev_user(2.0)
	(GM.f_room_goto(v_Menu))
func ev_keypress_78():
	(GM.f_instance_activate_all())
	(GM.f_instance_deactivate_object(1083.0))
	(GM.f_instance_deactivate_object(1082.0))
	(GM.f_sound_play(216.0))
	(GM.f_instance_destroy(self))
