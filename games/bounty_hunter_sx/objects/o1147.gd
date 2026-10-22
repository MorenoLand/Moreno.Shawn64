extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_step():
	x = (((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 17.0)
	y = (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 233.0)
	(self.script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_4():
	for _w338 in GM.with_list((1257.0), self):
		if _w338._dead:
			continue
		_w338.other = self
		(GM.f_instance_destroy(_w338))
	for _w339 in GM.with_list((1230.0), self):
		if _w339._dead:
			continue
		_w339.other = self
		(GM.f_instance_destroy(_w339))
	for _w340 in GM.with_list((1231.0), self):
		if _w340._dead:
			continue
		_w340.other = self
		(GM.f_instance_destroy(_w340))
	for _w341 in GM.with_list((1211.0), self):
		if _w341._dead:
			continue
		_w341.other = self
		(GM.f_instance_destroy(_w341))
	for _w342 in GM.with_list((1212.0), self):
		if _w342._dead:
			continue
		_w342.other = self
		(GM.f_instance_destroy(_w342))
	for _w343 in GM.with_list((1213.0), self):
		if _w343._dead:
			continue
		_w343.other = self
		(GM.f_instance_destroy(_w343))
	for _w344 in GM.with_list((1214.0), self):
		if _w344._dead:
			continue
		_w344.other = self
		(GM.f_instance_destroy(_w344))
	for _w345 in GM.with_list((1206.0), self):
		if _w345._dead:
			continue
		_w345.other = self
		(GM.f_instance_destroy(_w345))
	for _w346 in GM.with_list((1203.0), self):
		if _w346._dead:
			continue
		_w346.other = self
		(GM.f_instance_destroy(_w346))
	for _w347 in GM.with_list((1202.0), self):
		if _w347._dead:
			continue
		_w347.other = self
		(GM.f_instance_destroy(_w347))
	for _w348 in GM.with_list((1200.0), self):
		if _w348._dead:
			continue
		_w348.other = self
		(GM.f_instance_destroy(_w348))
	for _w349 in GM.with_list((1199.0), self):
		if _w349._dead:
			continue
		_w349.other = self
		(GM.f_instance_destroy(_w349))
	for _w350 in GM.with_list((1198.0), self):
		if _w350._dead:
			continue
		_w350.other = self
		(GM.f_instance_destroy(_w350))
	for _w351 in GM.with_list((1162.0), self):
		if _w351._dead:
			continue
		_w351.other = self
		(GM.f_instance_destroy(_w351))
	for _w352 in GM.with_list((1181.0), self):
		if _w352._dead:
			continue
		_w352.other = self
		(GM.f_instance_destroy(_w352))
	for _w353 in GM.with_list((1194.0), self):
		if _w353._dead:
			continue
		_w353.other = self
		(GM.f_instance_destroy(_w353))
	for _w354 in GM.with_list((1185.0), self):
		if _w354._dead:
			continue
		_w354.other = self
		(GM.f_instance_destroy(_w354))
	for _w355 in GM.with_list((1184.0), self):
		if _w355._dead:
			continue
		_w355.other = self
		(GM.f_instance_destroy(_w355))
	for _w356 in GM.with_list((1180.0), self):
		if _w356._dead:
			continue
		_w356.other = self
		(GM.f_instance_destroy(_w356))
	for _w357 in GM.with_list((1168.0), self):
		if _w357._dead:
			continue
		_w357.other = self
		(GM.f_instance_destroy(_w357))
	for _w358 in GM.with_list((1163.0), self):
		if _w358._dead:
			continue
		_w358.other = self
		(GM.f_instance_destroy(_w358))
	for _w359 in GM.with_list((1164.0), self):
		if _w359._dead:
			continue
		_w359.other = self
		(GM.f_instance_destroy(_w359))
	for _w360 in GM.with_list((1165.0), self):
		if _w360._dead:
			continue
		_w360.other = self
		(GM.f_instance_destroy(_w360))
	for _w361 in GM.with_list((1166.0), self):
		if _w361._dead:
			continue
		_w361.other = self
		(GM.f_instance_destroy(_w361))
	for _w362 in GM.with_list((1167.0), self):
		if _w362._dead:
			continue
		_w362.other = self
		(GM.f_instance_destroy(_w362))
	for _w363 in GM.with_list((1162.0), self):
		if _w363._dead:
			continue
		_w363.other = self
		(GM.f_instance_destroy(_w363))
	(GM.f_sound_play(309.0))
	for _w364 in GM.with_list((1160.0), self):
		if _w364._dead:
			continue
		_w364.other = self
		(GM.f_instance_destroy(_w364))
	for _w365 in GM.with_list((1161.0), self):
		if _w365._dead:
			continue
		_w365.other = self
		(GM.f_instance_destroy(_w365))
	for _w366 in GM.with_list((1155.0), self):
		if _w366._dead:
			continue
		_w366.other = self
		(GM.f_instance_destroy(_w366))
	for _w367 in GM.with_list((1156.0), self):
		if _w367._dead:
			continue
		_w367.other = self
		(GM.f_instance_destroy(_w367))
	for _w368 in GM.with_list((1157.0), self):
		if _w368._dead:
			continue
		_w368.other = self
		(GM.f_instance_destroy(_w368))
	for _w369 in GM.with_list((1158.0), self):
		if _w369._dead:
			continue
		_w369.other = self
		(GM.f_instance_destroy(_w369))
	for _w370 in GM.with_list((1159.0), self):
		if _w370._dead:
			continue
		_w370.other = self
		(GM.f_instance_destroy(_w370))
	if (((absf(GM.G["reverse"] - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(1184.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 58.0), 1184.0))
	if (((GM.G["ftank"] == "Fuel Tank 1"))):
		if (((absf((GM.f_instance_number(1185.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 163.0), 1185.0))
	if (((absf(GM.G["goodluck"] - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(1198.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 128.0), 1198.0))
	if (((absf(GM.G["topspeed"] - 15.0) < 0.00001))):
		if (((absf((GM.f_instance_number(1199.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 93.0), 1199.0))
	if (((absf(GM.G["accel"] - 0.5) < 0.00001))):
		if (((absf((GM.f_instance_number(1200.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 198.0), 1200.0))
	for _w371 in GM.with_list((1114.0), self):
		if _w371._dead:
			continue
		_w371.other = self
		(GM.f_instance_change(_w371, 1154.0, 0.0))
