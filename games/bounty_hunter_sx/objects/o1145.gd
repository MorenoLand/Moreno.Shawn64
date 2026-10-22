extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_step():
	x = (((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 17.0)
	y = (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 198.0)
	(self.script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_4():
	for _w304 in GM.with_list((1257.0), self):
		if _w304._dead:
			continue
		_w304.other = self
		(GM.f_instance_destroy(_w304))
	for _w305 in GM.with_list((1230.0), self):
		if _w305._dead:
			continue
		_w305.other = self
		(GM.f_instance_destroy(_w305))
	for _w306 in GM.with_list((1231.0), self):
		if _w306._dead:
			continue
		_w306.other = self
		(GM.f_instance_destroy(_w306))
	for _w307 in GM.with_list((1211.0), self):
		if _w307._dead:
			continue
		_w307.other = self
		(GM.f_instance_destroy(_w307))
	for _w308 in GM.with_list((1212.0), self):
		if _w308._dead:
			continue
		_w308.other = self
		(GM.f_instance_destroy(_w308))
	for _w309 in GM.with_list((1213.0), self):
		if _w309._dead:
			continue
		_w309.other = self
		(GM.f_instance_destroy(_w309))
	for _w310 in GM.with_list((1214.0), self):
		if _w310._dead:
			continue
		_w310.other = self
		(GM.f_instance_destroy(_w310))
	for _w311 in GM.with_list((1206.0), self):
		if _w311._dead:
			continue
		_w311.other = self
		(GM.f_instance_destroy(_w311))
	for _w312 in GM.with_list((1203.0), self):
		if _w312._dead:
			continue
		_w312.other = self
		(GM.f_instance_destroy(_w312))
	for _w313 in GM.with_list((1202.0), self):
		if _w313._dead:
			continue
		_w313.other = self
		(GM.f_instance_destroy(_w313))
	for _w314 in GM.with_list((1200.0), self):
		if _w314._dead:
			continue
		_w314.other = self
		(GM.f_instance_destroy(_w314))
	for _w315 in GM.with_list((1199.0), self):
		if _w315._dead:
			continue
		_w315.other = self
		(GM.f_instance_destroy(_w315))
	for _w316 in GM.with_list((1198.0), self):
		if _w316._dead:
			continue
		_w316.other = self
		(GM.f_instance_destroy(_w316))
	for _w317 in GM.with_list((1162.0), self):
		if _w317._dead:
			continue
		_w317.other = self
		(GM.f_instance_destroy(_w317))
	for _w318 in GM.with_list((1181.0), self):
		if _w318._dead:
			continue
		_w318.other = self
		(GM.f_instance_destroy(_w318))
	for _w319 in GM.with_list((1194.0), self):
		if _w319._dead:
			continue
		_w319.other = self
		(GM.f_instance_destroy(_w319))
	for _w320 in GM.with_list((1185.0), self):
		if _w320._dead:
			continue
		_w320.other = self
		(GM.f_instance_destroy(_w320))
	for _w321 in GM.with_list((1184.0), self):
		if _w321._dead:
			continue
		_w321.other = self
		(GM.f_instance_destroy(_w321))
	for _w322 in GM.with_list((1180.0), self):
		if _w322._dead:
			continue
		_w322.other = self
		(GM.f_instance_destroy(_w322))
	for _w323 in GM.with_list((1168.0), self):
		if _w323._dead:
			continue
		_w323.other = self
		(GM.f_instance_destroy(_w323))
	for _w324 in GM.with_list((1163.0), self):
		if _w324._dead:
			continue
		_w324.other = self
		(GM.f_instance_destroy(_w324))
	for _w325 in GM.with_list((1164.0), self):
		if _w325._dead:
			continue
		_w325.other = self
		(GM.f_instance_destroy(_w325))
	for _w326 in GM.with_list((1165.0), self):
		if _w326._dead:
			continue
		_w326.other = self
		(GM.f_instance_destroy(_w326))
	for _w327 in GM.with_list((1166.0), self):
		if _w327._dead:
			continue
		_w327.other = self
		(GM.f_instance_destroy(_w327))
	for _w328 in GM.with_list((1167.0), self):
		if _w328._dead:
			continue
		_w328.other = self
		(GM.f_instance_destroy(_w328))
	for _w329 in GM.with_list((1162.0), self):
		if _w329._dead:
			continue
		_w329.other = self
		(GM.f_instance_destroy(_w329))
	(GM.f_sound_play(309.0))
	for _w330 in GM.with_list((1160.0), self):
		if _w330._dead:
			continue
		_w330.other = self
		(GM.f_instance_destroy(_w330))
	for _w331 in GM.with_list((1161.0), self):
		if _w331._dead:
			continue
		_w331.other = self
		(GM.f_instance_destroy(_w331))
	for _w332 in GM.with_list((1155.0), self):
		if _w332._dead:
			continue
		_w332.other = self
		(GM.f_instance_destroy(_w332))
	for _w333 in GM.with_list((1156.0), self):
		if _w333._dead:
			continue
		_w333.other = self
		(GM.f_instance_destroy(_w333))
	for _w334 in GM.with_list((1157.0), self):
		if _w334._dead:
			continue
		_w334.other = self
		(GM.f_instance_destroy(_w334))
	for _w335 in GM.with_list((1158.0), self):
		if _w335._dead:
			continue
		_w335.other = self
		(GM.f_instance_destroy(_w335))
	for _w336 in GM.with_list((1159.0), self):
		if _w336._dead:
			continue
		_w336.other = self
		(GM.f_instance_destroy(_w336))
	if (((absf((GM.f_instance_number(1168.0)) - 0.0) < 0.00001))):
		if (not (((GM.G["sheild"] == "Shield Level 3")))):
			(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 58.0), 1168.0))
	if (((absf(GM.G["bossbeat"] - 1.0) < 0.00001))):
		if (((absf((GM.f_instance_number(1211.0)) - 0.0) < 0.00001))):
			if (((absf(GM.G["cloaking"] - 0.0) < 0.00001))):
				(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 93.0), 1211.0))
		if (((absf((GM.f_instance_number(1212.0)) - 0.0) < 0.00001))):
			if (((absf(GM.G["ftp"] - 0.0) < 0.00001))):
				(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 128.0), 1212.0))
		if (((absf((GM.f_instance_number(1213.0)) - 0.0) < 0.00001))):
			if (((absf(GM.G["reflecting"] - 0.0) < 0.00001))):
				(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 163.0), 1213.0))
		if (((absf((GM.f_instance_number(1214.0)) - 0.0) < 0.00001))):
			if (((absf(GM.G["absorbing"] - 0.0) < 0.00001))):
				(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 198.0), 1214.0))
	for _w337 in GM.with_list((1114.0), self):
		if _w337._dead:
			continue
		_w337.other = self
		(GM.f_instance_change(_w337, 1152.0, 0.0))
