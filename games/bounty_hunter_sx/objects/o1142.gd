extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_step():
	x = (((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 17.0)
	y = (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 93.0)
	(self.script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_4():
	for _w205 in GM.with_list((1257.0), self):
		if _w205._dead:
			continue
		_w205.other = self
		(GM.f_instance_destroy(_w205))
	for _w206 in GM.with_list((1230.0), self):
		if _w206._dead:
			continue
		_w206.other = self
		(GM.f_instance_destroy(_w206))
	for _w207 in GM.with_list((1231.0), self):
		if _w207._dead:
			continue
		_w207.other = self
		(GM.f_instance_destroy(_w207))
	for _w208 in GM.with_list((1211.0), self):
		if _w208._dead:
			continue
		_w208.other = self
		(GM.f_instance_destroy(_w208))
	for _w209 in GM.with_list((1212.0), self):
		if _w209._dead:
			continue
		_w209.other = self
		(GM.f_instance_destroy(_w209))
	for _w210 in GM.with_list((1213.0), self):
		if _w210._dead:
			continue
		_w210.other = self
		(GM.f_instance_destroy(_w210))
	for _w211 in GM.with_list((1214.0), self):
		if _w211._dead:
			continue
		_w211.other = self
		(GM.f_instance_destroy(_w211))
	for _w212 in GM.with_list((1206.0), self):
		if _w212._dead:
			continue
		_w212.other = self
		(GM.f_instance_destroy(_w212))
	for _w213 in GM.with_list((1203.0), self):
		if _w213._dead:
			continue
		_w213.other = self
		(GM.f_instance_destroy(_w213))
	for _w214 in GM.with_list((1202.0), self):
		if _w214._dead:
			continue
		_w214.other = self
		(GM.f_instance_destroy(_w214))
	for _w215 in GM.with_list((1200.0), self):
		if _w215._dead:
			continue
		_w215.other = self
		(GM.f_instance_destroy(_w215))
	for _w216 in GM.with_list((1199.0), self):
		if _w216._dead:
			continue
		_w216.other = self
		(GM.f_instance_destroy(_w216))
	for _w217 in GM.with_list((1198.0), self):
		if _w217._dead:
			continue
		_w217.other = self
		(GM.f_instance_destroy(_w217))
	for _w218 in GM.with_list((1162.0), self):
		if _w218._dead:
			continue
		_w218.other = self
		(GM.f_instance_destroy(_w218))
	for _w219 in GM.with_list((1181.0), self):
		if _w219._dead:
			continue
		_w219.other = self
		(GM.f_instance_destroy(_w219))
	for _w220 in GM.with_list((1194.0), self):
		if _w220._dead:
			continue
		_w220.other = self
		(GM.f_instance_destroy(_w220))
	for _w221 in GM.with_list((1185.0), self):
		if _w221._dead:
			continue
		_w221.other = self
		(GM.f_instance_destroy(_w221))
	for _w222 in GM.with_list((1184.0), self):
		if _w222._dead:
			continue
		_w222.other = self
		(GM.f_instance_destroy(_w222))
	for _w223 in GM.with_list((1180.0), self):
		if _w223._dead:
			continue
		_w223.other = self
		(GM.f_instance_destroy(_w223))
	for _w224 in GM.with_list((1168.0), self):
		if _w224._dead:
			continue
		_w224.other = self
		(GM.f_instance_destroy(_w224))
	for _w225 in GM.with_list((1163.0), self):
		if _w225._dead:
			continue
		_w225.other = self
		(GM.f_instance_destroy(_w225))
	for _w226 in GM.with_list((1164.0), self):
		if _w226._dead:
			continue
		_w226.other = self
		(GM.f_instance_destroy(_w226))
	for _w227 in GM.with_list((1165.0), self):
		if _w227._dead:
			continue
		_w227.other = self
		(GM.f_instance_destroy(_w227))
	for _w228 in GM.with_list((1166.0), self):
		if _w228._dead:
			continue
		_w228.other = self
		(GM.f_instance_destroy(_w228))
	for _w229 in GM.with_list((1167.0), self):
		if _w229._dead:
			continue
		_w229.other = self
		(GM.f_instance_destroy(_w229))
	for _w230 in GM.with_list((1162.0), self):
		if _w230._dead:
			continue
		_w230.other = self
		(GM.f_instance_destroy(_w230))
	(GM.f_sound_play(309.0))
	for _w231 in GM.with_list((1155.0), self):
		if _w231._dead:
			continue
		_w231.other = self
		(GM.f_instance_destroy(_w231))
	for _w232 in GM.with_list((1156.0), self):
		if _w232._dead:
			continue
		_w232.other = self
		(GM.f_instance_destroy(_w232))
	for _w233 in GM.with_list((1157.0), self):
		if _w233._dead:
			continue
		_w233.other = self
		(GM.f_instance_destroy(_w233))
	for _w234 in GM.with_list((1158.0), self):
		if _w234._dead:
			continue
		_w234.other = self
		(GM.f_instance_destroy(_w234))
	for _w235 in GM.with_list((1159.0), self):
		if _w235._dead:
			continue
		_w235.other = self
		(GM.f_instance_destroy(_w235))
	if (((absf((GM.f_instance_number(1160.0)) - 0.0) < 0.00001))):
		if (((GM.G["fuel"] < 100.0))):
			if (((GM.G["zz"] > 0.0))):
				(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 58.0), 1160.0))
	if (((absf((GM.f_instance_number(1161.0)) - 0.0) < 0.00001))):
		if (((GM.health < 100.0))):
			if (((GM.G["zz"] > 0.0))):
				(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 93.0), 1161.0))
	for _w236 in GM.with_list((1114.0), self):
		if _w236._dead:
			continue
		_w236.other = self
		(GM.f_instance_change(_w236, 1149.0, 0.0))
