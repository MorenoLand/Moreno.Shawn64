extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_step():
	x = (((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 17.0)
	y = (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 163.0)
	(self.script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_4():
	for _w271 in GM.with_list((1257.0), self):
		if _w271._dead:
			continue
		_w271.other = self
		(GM.f_instance_destroy(_w271))
	for _w272 in GM.with_list((1230.0), self):
		if _w272._dead:
			continue
		_w272.other = self
		(GM.f_instance_destroy(_w272))
	for _w273 in GM.with_list((1231.0), self):
		if _w273._dead:
			continue
		_w273.other = self
		(GM.f_instance_destroy(_w273))
	for _w274 in GM.with_list((1211.0), self):
		if _w274._dead:
			continue
		_w274.other = self
		(GM.f_instance_destroy(_w274))
	for _w275 in GM.with_list((1212.0), self):
		if _w275._dead:
			continue
		_w275.other = self
		(GM.f_instance_destroy(_w275))
	for _w276 in GM.with_list((1213.0), self):
		if _w276._dead:
			continue
		_w276.other = self
		(GM.f_instance_destroy(_w276))
	for _w277 in GM.with_list((1214.0), self):
		if _w277._dead:
			continue
		_w277.other = self
		(GM.f_instance_destroy(_w277))
	for _w278 in GM.with_list((1206.0), self):
		if _w278._dead:
			continue
		_w278.other = self
		(GM.f_instance_destroy(_w278))
	for _w279 in GM.with_list((1203.0), self):
		if _w279._dead:
			continue
		_w279.other = self
		(GM.f_instance_destroy(_w279))
	for _w280 in GM.with_list((1202.0), self):
		if _w280._dead:
			continue
		_w280.other = self
		(GM.f_instance_destroy(_w280))
	for _w281 in GM.with_list((1199.0), self):
		if _w281._dead:
			continue
		_w281.other = self
		(GM.f_instance_destroy(_w281))
	for _w282 in GM.with_list((1198.0), self):
		if _w282._dead:
			continue
		_w282.other = self
		(GM.f_instance_destroy(_w282))
	for _w283 in GM.with_list((1162.0), self):
		if _w283._dead:
			continue
		_w283.other = self
		(GM.f_instance_destroy(_w283))
	for _w284 in GM.with_list((1181.0), self):
		if _w284._dead:
			continue
		_w284.other = self
		(GM.f_instance_destroy(_w284))
	for _w285 in GM.with_list((1194.0), self):
		if _w285._dead:
			continue
		_w285.other = self
		(GM.f_instance_destroy(_w285))
	for _w286 in GM.with_list((1185.0), self):
		if _w286._dead:
			continue
		_w286.other = self
		(GM.f_instance_destroy(_w286))
	for _w287 in GM.with_list((1184.0), self):
		if _w287._dead:
			continue
		_w287.other = self
		(GM.f_instance_destroy(_w287))
	for _w288 in GM.with_list((1180.0), self):
		if _w288._dead:
			continue
		_w288.other = self
		(GM.f_instance_destroy(_w288))
	for _w289 in GM.with_list((1168.0), self):
		if _w289._dead:
			continue
		_w289.other = self
		(GM.f_instance_destroy(_w289))
	for _w290 in GM.with_list((1164.0), self):
		if _w290._dead:
			continue
		_w290.other = self
		(GM.f_instance_destroy(_w290))
	for _w291 in GM.with_list((1165.0), self):
		if _w291._dead:
			continue
		_w291.other = self
		(GM.f_instance_destroy(_w291))
	for _w292 in GM.with_list((1166.0), self):
		if _w292._dead:
			continue
		_w292.other = self
		(GM.f_instance_destroy(_w292))
	for _w293 in GM.with_list((1167.0), self):
		if _w293._dead:
			continue
		_w293.other = self
		(GM.f_instance_destroy(_w293))
	(GM.f_sound_play(309.0))
	for _w294 in GM.with_list((1160.0), self):
		if _w294._dead:
			continue
		_w294.other = self
		(GM.f_instance_destroy(_w294))
	for _w295 in GM.with_list((1161.0), self):
		if _w295._dead:
			continue
		_w295.other = self
		(GM.f_instance_destroy(_w295))
	for _w296 in GM.with_list((1155.0), self):
		if _w296._dead:
			continue
		_w296.other = self
		(GM.f_instance_destroy(_w296))
	for _w297 in GM.with_list((1156.0), self):
		if _w297._dead:
			continue
		_w297.other = self
		(GM.f_instance_destroy(_w297))
	for _w298 in GM.with_list((1157.0), self):
		if _w298._dead:
			continue
		_w298.other = self
		(GM.f_instance_destroy(_w298))
	for _w299 in GM.with_list((1158.0), self):
		if _w299._dead:
			continue
		_w299.other = self
		(GM.f_instance_destroy(_w299))
	for _w300 in GM.with_list((1159.0), self):
		if _w300._dead:
			continue
		_w300.other = self
		(GM.f_instance_destroy(_w300))
	if (((absf((GM.f_instance_number(1203.0)) - 0.0) < 0.00001))):
		if (((absf(GM.G["shotspeed"] - 0.0) < 0.00001))):
			(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 93.0), 1203.0))
	if (((absf((GM.f_instance_number(1162.0)) - 0.0) < 0.00001))):
		if (not (((absf(GM.G["myweapon"] - 4.0) < 0.00001)))):
			if (not (((absf(GM.G["myweapon"] - 5.0) < 0.00001)))):
				(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 58.0), 1162.0))
	if (((absf((GM.f_instance_number(1180.0)) - 0.0) < 0.00001))):
		if (((absf(GM.G["missilelaunch"] - 0.0) < 0.00001))):
			(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 128.0), 1180.0))
	if (((absf((GM.f_instance_number(1181.0)) - 0.0) < 0.00001))):
		if (((absf(GM.G["missilelaunch"] - 1.0) < 0.00001))):
			if (((GM.G["zz"] > 99.0))):
				if (not (((absf(GM.G["missiles"] - 10.0) < 0.00001)))):
					(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 163.0), 1181.0))
	if (((absf((GM.f_instance_number(1194.0)) - 0.0) < 0.00001))):
		if (((absf(GM.G["minelaunch"] - 0.0) < 0.00001))):
			(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 198.0), 1194.0))
	if (((absf((GM.f_instance_number(1202.0)) - 0.0) < 0.00001))):
		if (((absf(GM.G["minelaunch"] - 1.0) < 0.00001))):
			if (((GM.G["zz"] > 99.0))):
				if (not (((absf(GM.G["mines"] - 10.0) < 0.00001)))):
					(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 233.0), 1202.0))
	if (((absf((GM.f_instance_number(1257.0)) - 0.0) < 0.00001))):
		if (((absf(GM.G["bossbeat"] - 1.0) < 0.00001))):
			if (not (((absf(GM.G["myweapon"] - 5.0) < 0.00001)))):
				(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 268.0), 1257.0))
	for _w301 in GM.with_list((1114.0), self):
		if _w301._dead:
			continue
		_w301.other = self
		(GM.f_instance_change(_w301, 1151.0, 0.0))
	for _w302 in GM.with_list((1163.0), self):
		if _w302._dead:
			continue
		_w302.other = self
		(GM.f_instance_destroy(_w302))
	for _w303 in GM.with_list((1200.0), self):
		if _w303._dead:
			continue
		_w303.other = self
		(GM.f_instance_destroy(_w303))
