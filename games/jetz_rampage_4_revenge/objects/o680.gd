extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_mission = 0.0
func ev_create():
	GM.vsetb(742.0, "visible", 0.0)
	GM.vsetb(881.0, "visible", 0.0)
	(GM.f_sound_play(219.0))
	alarm[int(0.0)] = (30.0 * 30.0)
func ev_destroy():
	(GM.f_instance_create(0.0, 0.0, 1047.0))
	GM.vsetb(742.0, "visible", 1.0)
	GM.vsetb(881.0, "visible", 1.0)
func ev_alarm_0():
	if ((absf(v_mission - 111.0) < 0.00001)):
		if ((absf((GM.f_instance_number(1100.0)) - 1.0) < 0.00001)):
			(GM.f_sound_play(224.0))
			for _w284 in GM.with_list((1100.0), self):
				if _w284._dead:
					continue
				_w284.other = self
				(GM.f_instance_destroy(_w284))
			GM.G["j4var11"] = GM.G["j4var11"] + 400.0
		if ((absf((GM.f_instance_number(1099.0)) - 1.0) < 0.00001)):
			(GM.f_sound_play(224.0))
			for _w285 in GM.with_list((1099.0), self):
				if _w285._dead:
					continue
				_w285.other = self
				(GM.f_instance_create(_w285.x, _w285.y, 1100.0))
				(GM.f_instance_destroy(_w285))
			GM.G["j4var11"] = GM.G["j4var11"] + 300.0
	if ((absf(v_mission - 2.0) < 0.00001)):
		(GM.f_sound_play(224.0))
		for _w286 in GM.with_list((787.0), self):
			if _w286._dead:
				continue
			_w286.other = self
			(GM.f_instance_destroy(_w286))
		GM.G["j4var11"] = GM.G["j4var11"] + 200.0
	if ((absf(v_mission - 99.0) < 0.00001)):
		(GM.f_sound_play(224.0))
		for _w287 in GM.with_list((1091.0), self):
			if _w287._dead:
				continue
			_w287.other = self
			(GM.f_instance_create(_w287.x, _w287.y, 1092.0))
			(GM.f_instance_destroy(_w287))
		GM.G["j4var11"] = GM.G["j4var11"] + 100.0
	if ((absf(v_mission - 100.0) < 0.00001)):
		(GM.f_sound_play(224.0))
		for _w288 in GM.with_list((1092.0), self):
			if _w288._dead:
				continue
			_w288.other = self
			(GM.f_instance_destroy(_w288))
		GM.G["j4var11"] = GM.G["j4var11"] + 200.0
	if ((absf(v_mission - 1.0) < 0.00001)):
		(GM.f_sound_play(224.0))
		(GM.f_instance_create(GM.vb(674.0, "x"), GM.vb(674.0, "y"), 787.0))
		for _w289 in GM.with_list((674.0), self):
			if _w289._dead:
				continue
			_w289.other = self
			(GM.f_instance_destroy(_w289))
		GM.G["j4var11"] = GM.G["j4var11"] + 100.0
	if ((absf(v_mission - 2.0) < 0.00001)):
		(GM.f_sound_play(224.0))
		for _w290 in GM.with_list((787.0), self):
			if _w290._dead:
				continue
			_w290.other = self
			(GM.f_instance_destroy(_w290))
		GM.G["j4var11"] = GM.G["j4var11"] + 200.0
	if ((absf(v_mission - 18.0) < 0.00001)):
		(GM.f_sound_play(224.0))
		for _w291 in GM.with_list((1030.0), self):
			if _w291._dead:
				continue
			_w291.other = self
			(GM.f_instance_create(_w291.x, _w291.y, 1031.0))
			(GM.f_instance_destroy(_w291))
		GM.G["j4var11"] = GM.G["j4var11"] + 300.0
	if ((absf(v_mission - 19.0) < 0.00001)):
		(GM.f_sound_play(224.0))
		for _w292 in GM.with_list((1031.0), self):
			if _w292._dead:
				continue
			_w292.other = self
			(GM.f_instance_destroy(_w292))
		GM.G["j4var11"] = GM.G["j4var11"] + 400.0
	if ((absf(v_mission - 97.0) < 0.00001)):
		(GM.f_sound_play(224.0))
		for _w293 in GM.with_list((1077.0), self):
			if _w293._dead:
				continue
			_w293.other = self
			(GM.f_instance_create(_w293.x, _w293.y, 1078.0))
			(GM.f_instance_destroy(_w293))
		GM.G["j4var11"] = GM.G["j4var11"] + 100.0
	if ((absf(v_mission - 98.0) < 0.00001)):
		(GM.f_sound_play(224.0))
		for _w294 in GM.with_list((1078.0), self):
			if _w294._dead:
				continue
			_w294.other = self
			(GM.f_instance_destroy(_w294))
		GM.G["j4var11"] = GM.G["j4var11"] + 200.0
	self.ev_user(0.0)
func ev_other_10():
	GM.vsetb(7.0, "visible", 1.0)
	GM.vset(7.0, "v_movenow", 1.0)
	GM.view_object[int(0.0)] = 7.0
	GM.view_hborder[0] = (400.0 - 33.0)
	GM.view_vborder[0] = (300.0 - 33.0)
	GM.vsetb(742.0, "visible", 1.0)
	GM.vsetb(881.0, "visible", 1.0)
	(GM.f_instance_activate_object(489.0))
	if (((GM.f_instance_number(551.0)) < 2.0)):
		(GM.f_instance_create(0.0, 0.0, 551.0))
		(GM.f_instance_create((GM.room_width - 20.0), 0.0, 551.0))
	for _w295 in GM.with_list((963.0), self):
		if _w295._dead:
			continue
		_w295.other = self
		(GM.f_instance_destroy(_w295))
	for _w296 in GM.with_list((1130.0), self):
		if _w296._dead:
			continue
		_w296.other = self
		(GM.f_instance_destroy(_w296))
	for _w297 in GM.with_list((1131.0), self):
		if _w297._dead:
			continue
		_w297.other = self
		(GM.f_instance_destroy(_w297))
	for _w298 in GM.with_list((1132.0), self):
		if _w298._dead:
			continue
		_w298.other = self
		(GM.f_instance_destroy(_w298))
	for _w299 in GM.with_list((1069.0), self):
		if _w299._dead:
			continue
		_w299.other = self
		_w299.speed = 25.0
	for _w300 in GM.with_list((1127.0), self):
		if _w300._dead:
			continue
		_w300.other = self
		(GM.f_instance_destroy(_w300))
	for _w301 in GM.with_list((1125.0), self):
		if _w301._dead:
			continue
		_w301.other = self
		(GM.f_instance_destroy(_w301))
	for _w302 in GM.with_list((1126.0), self):
		if _w302._dead:
			continue
		_w302.other = self
		(GM.f_instance_destroy(_w302))
	for _w303 in GM.with_list((1122.0), self):
		if _w303._dead:
			continue
		_w303.other = self
		(GM.f_instance_destroy(_w303))
	for _w304 in GM.with_list((966.0), self):
		if _w304._dead:
			continue
		_w304.other = self
		(GM.f_instance_destroy(_w304))
	for _w305 in GM.with_list((1121.0), self):
		if _w305._dead:
			continue
		_w305.other = self
		(GM.f_instance_destroy(_w305))
	for _w306 in GM.with_list((1118.0), self):
		if _w306._dead:
			continue
		_w306.other = self
		(GM.f_instance_destroy(_w306))
	for _w307 in GM.with_list((1117.0), self):
		if _w307._dead:
			continue
		_w307.other = self
		(GM.f_instance_destroy(_w307))
	for _w308 in GM.with_list((1119.0), self):
		if _w308._dead:
			continue
		_w308.other = self
		(GM.f_instance_destroy(_w308))
	for _w309 in GM.with_list((1113.0), self):
		if _w309._dead:
			continue
		_w309.other = self
		(GM.f_instance_destroy(_w309))
	for _w310 in GM.with_list((1114.0), self):
		if _w310._dead:
			continue
		_w310.other = self
		(GM.f_instance_destroy(_w310))
	for _w311 in GM.with_list((1112.0), self):
		if _w311._dead:
			continue
		_w311.other = self
		(GM.f_instance_destroy(_w311))
	for _w312 in GM.with_list((1111.0), self):
		if _w312._dead:
			continue
		_w312.other = self
		(GM.f_instance_destroy(_w312))
	for _w313 in GM.with_list((1088.0), self):
		if _w313._dead:
			continue
		_w313.other = self
		(GM.f_instance_destroy(_w313))
	for _w314 in GM.with_list((1105.0), self):
		if _w314._dead:
			continue
		_w314.other = self
		(GM.f_instance_destroy(_w314))
	for _w315 in GM.with_list((1106.0), self):
		if _w315._dead:
			continue
		_w315.other = self
		(GM.f_instance_destroy(_w315))
	for _w316 in GM.with_list((1107.0), self):
		if _w316._dead:
			continue
		_w316.other = self
		(GM.f_instance_destroy(_w316))
	for _w317 in GM.with_list((1088.0), self):
		if _w317._dead:
			continue
		_w317.other = self
		(GM.f_instance_destroy(_w317))
	for _w318 in GM.with_list((1084.0), self):
		if _w318._dead:
			continue
		_w318.other = self
		(GM.f_instance_destroy(_w318))
	for _w319 in GM.with_list((1085.0), self):
		if _w319._dead:
			continue
		_w319.other = self
		(GM.f_instance_destroy(_w319))
	for _w320 in GM.with_list((1086.0), self):
		if _w320._dead:
			continue
		_w320.other = self
		(GM.f_instance_destroy(_w320))
	for _w321 in GM.with_list((1087.0), self):
		if _w321._dead:
			continue
		_w321.other = self
		(GM.f_instance_destroy(_w321))
	for _w322 in GM.with_list((1081.0), self):
		if _w322._dead:
			continue
		_w322.other = self
		(GM.f_instance_destroy(_w322))
	for _w323 in GM.with_list((1071.0), self):
		if _w323._dead:
			continue
		_w323.other = self
		(GM.f_instance_destroy(_w323))
	for _w324 in GM.with_list((1072.0), self):
		if _w324._dead:
			continue
		_w324.other = self
		(GM.f_instance_destroy(_w324))
	for _w325 in GM.with_list((1070.0), self):
		if _w325._dead:
			continue
		_w325.other = self
		(GM.f_instance_destroy(_w325))
	for _w326 in GM.with_list((1068.0), self):
		if _w326._dead:
			continue
		_w326.other = self
		(GM.f_instance_destroy(_w326))
	for _w327 in GM.with_list((1041.0), self):
		if _w327._dead:
			continue
		_w327.other = self
		(GM.f_instance_destroy(_w327))
	for _w328 in GM.with_list((1040.0), self):
		if _w328._dead:
			continue
		_w328.other = self
		(GM.f_instance_destroy(_w328))
	for _w329 in GM.with_list((1039.0), self):
		if _w329._dead:
			continue
		_w329.other = self
		(GM.f_instance_destroy(_w329))
	for _w330 in GM.with_list((1037.0), self):
		if _w330._dead:
			continue
		_w330.other = self
		(GM.f_instance_destroy(_w330))
	for _w331 in GM.with_list((1036.0), self):
		if _w331._dead:
			continue
		_w331.other = self
		(GM.f_instance_destroy(_w331))
	for _w332 in GM.with_list((1035.0), self):
		if _w332._dead:
			continue
		_w332.other = self
		(GM.f_instance_destroy(_w332))
	for _w333 in GM.with_list((1028.0), self):
		if _w333._dead:
			continue
		_w333.other = self
		(GM.f_instance_destroy(_w333))
	for _w334 in GM.with_list((1011.0), self):
		if _w334._dead:
			continue
		_w334.other = self
		(GM.f_instance_destroy(_w334))
	for _w335 in GM.with_list((1009.0), self):
		if _w335._dead:
			continue
		_w335.other = self
		(GM.f_instance_destroy(_w335))
	for _w336 in GM.with_list((1010.0), self):
		if _w336._dead:
			continue
		_w336.other = self
		(GM.f_instance_destroy(_w336))
	for _w337 in GM.with_list((1006.0), self):
		if _w337._dead:
			continue
		_w337.other = self
		(GM.f_instance_destroy(_w337))
	for _w338 in GM.with_list((1003.0), self):
		if _w338._dead:
			continue
		_w338.other = self
		(GM.f_instance_destroy(_w338))
	for _w339 in GM.with_list((1002.0), self):
		if _w339._dead:
			continue
		_w339.other = self
		(GM.f_instance_destroy(_w339))
	for _w340 in GM.with_list((1001.0), self):
		if _w340._dead:
			continue
		_w340.other = self
		(GM.f_instance_destroy(_w340))
	for _w341 in GM.with_list((995.0), self):
		if _w341._dead:
			continue
		_w341.other = self
		(GM.f_instance_destroy(_w341))
	for _w342 in GM.with_list((998.0), self):
		if _w342._dead:
			continue
		_w342.other = self
		(GM.f_instance_destroy(_w342))
	for _w343 in GM.with_list((677.0), self):
		if _w343._dead:
			continue
		_w343.other = self
		_w343.visible = 1.0
	for _w344 in GM.with_list((997.0), self):
		if _w344._dead:
			continue
		_w344.other = self
		_w344.visible = 1.0
	for _w345 in GM.with_list((986.0), self):
		if _w345._dead:
			continue
		_w345.other = self
		(GM.f_instance_destroy(_w345))
	for _w346 in GM.with_list((791.0), self):
		if _w346._dead:
			continue
		_w346.other = self
		(GM.f_instance_destroy(_w346))
	for _w347 in GM.with_list((784.0), self):
		if _w347._dead:
			continue
		_w347.other = self
		(GM.f_instance_destroy(_w347))
	for _w348 in GM.with_list((785.0), self):
		if _w348._dead:
			continue
		_w348.other = self
		(GM.f_instance_destroy(_w348))
	for _w349 in GM.with_list((790.0), self):
		if _w349._dead:
			continue
		_w349.other = self
		_w349.visible = 1.0
	for _w350 in GM.with_list((987.0), self):
		if _w350._dead:
			continue
		_w350.other = self
		(GM.f_instance_destroy(_w350))
	for _w351 in GM.with_list((793.0), self):
		if _w351._dead:
			continue
		_w351.other = self
		(GM.f_instance_destroy(_w351))
	for _w352 in GM.with_list((794.0), self):
		if _w352._dead:
			continue
		_w352.other = self
		(GM.f_instance_destroy(_w352))
	for _w353 in GM.with_list((796.0), self):
		if _w353._dead:
			continue
		_w353.other = self
		(GM.f_instance_destroy(_w353))
	for _w354 in GM.with_list((797.0), self):
		if _w354._dead:
			continue
		_w354.other = self
		(GM.f_instance_destroy(_w354))
	for _w355 in GM.with_list((799.0), self):
		if _w355._dead:
			continue
		_w355.other = self
		(GM.f_instance_destroy(_w355))
	for _w356 in GM.with_list((919.0), self):
		if _w356._dead:
			continue
		_w356.other = self
		(GM.f_instance_destroy(_w356))
	for _w357 in GM.with_list((1062.0), self):
		if _w357._dead:
			continue
		_w357.other = self
		(GM.f_instance_destroy(_w357))
	for _w358 in GM.with_list((800.0), self):
		if _w358._dead:
			continue
		_w358.other = self
		(GM.f_instance_destroy(_w358))
	for _w359 in GM.with_list((801.0), self):
		if _w359._dead:
			continue
		_w359.other = self
		(GM.f_instance_destroy(_w359))
	for _w360 in GM.with_list((802.0), self):
		if _w360._dead:
			continue
		_w360.other = self
		(GM.f_instance_destroy(_w360))
	for _w361 in GM.with_list((803.0), self):
		if _w361._dead:
			continue
		_w361.other = self
		(GM.f_instance_destroy(_w361))
	for _w362 in GM.with_list((993.0), self):
		if _w362._dead:
			continue
		_w362.other = self
		(GM.f_instance_destroy(_w362))
	for _w363 in GM.with_list((806.0), self):
		if _w363._dead:
			continue
		_w363.other = self
		(GM.f_instance_destroy(_w363))
	for _w364 in GM.with_list((807.0), self):
		if _w364._dead:
			continue
		_w364.other = self
		(GM.f_instance_destroy(_w364))
	for _w365 in GM.with_list((808.0), self):
		if _w365._dead:
			continue
		_w365.other = self
		(GM.f_instance_destroy(_w365))
	for _w366 in GM.with_list((809.0), self):
		if _w366._dead:
			continue
		_w366.other = self
		(GM.f_instance_destroy(_w366))
	for _w367 in GM.with_list((810.0), self):
		if _w367._dead:
			continue
		_w367.other = self
		(GM.f_instance_destroy(_w367))
	(GM.f_instance_deactivate_object(1082.0))
	(GM.f_instance_deactivate_object(1083.0))
	(GM.f_sound_play(219.0))
	GM.vsetb(7.0, "gravity", 0.0)
	GM.vsetb(7.0, "friction", 0.1)
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 36.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	GM.font_align = 1.0
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 50.0), ("Time: " + (GM.f_string((GM.f_round((alarm[int(0.0)] / 30.0))))))))
