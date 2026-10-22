extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_step():
	x = (((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 17.0)
	y = (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 128.0)
	(self.script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_4():
	for _w237 in GM.with_list((1257.0), self):
		if _w237._dead:
			continue
		_w237.other = self
		(GM.f_instance_destroy(_w237))
	for _w238 in GM.with_list((1230.0), self):
		if _w238._dead:
			continue
		_w238.other = self
		(GM.f_instance_destroy(_w238))
	for _w239 in GM.with_list((1231.0), self):
		if _w239._dead:
			continue
		_w239.other = self
		(GM.f_instance_destroy(_w239))
	for _w240 in GM.with_list((1211.0), self):
		if _w240._dead:
			continue
		_w240.other = self
		(GM.f_instance_destroy(_w240))
	for _w241 in GM.with_list((1212.0), self):
		if _w241._dead:
			continue
		_w241.other = self
		(GM.f_instance_destroy(_w241))
	for _w242 in GM.with_list((1213.0), self):
		if _w242._dead:
			continue
		_w242.other = self
		(GM.f_instance_destroy(_w242))
	for _w243 in GM.with_list((1214.0), self):
		if _w243._dead:
			continue
		_w243.other = self
		(GM.f_instance_destroy(_w243))
	for _w244 in GM.with_list((1206.0), self):
		if _w244._dead:
			continue
		_w244.other = self
		(GM.f_instance_destroy(_w244))
	for _w245 in GM.with_list((1203.0), self):
		if _w245._dead:
			continue
		_w245.other = self
		(GM.f_instance_destroy(_w245))
	for _w246 in GM.with_list((1202.0), self):
		if _w246._dead:
			continue
		_w246.other = self
		(GM.f_instance_destroy(_w246))
	for _w247 in GM.with_list((1200.0), self):
		if _w247._dead:
			continue
		_w247.other = self
		(GM.f_instance_destroy(_w247))
	for _w248 in GM.with_list((1199.0), self):
		if _w248._dead:
			continue
		_w248.other = self
		(GM.f_instance_destroy(_w248))
	for _w249 in GM.with_list((1198.0), self):
		if _w249._dead:
			continue
		_w249.other = self
		(GM.f_instance_destroy(_w249))
	for _w250 in GM.with_list((1162.0), self):
		if _w250._dead:
			continue
		_w250.other = self
		(GM.f_instance_destroy(_w250))
	for _w251 in GM.with_list((1181.0), self):
		if _w251._dead:
			continue
		_w251.other = self
		(GM.f_instance_destroy(_w251))
	for _w252 in GM.with_list((1194.0), self):
		if _w252._dead:
			continue
		_w252.other = self
		(GM.f_instance_destroy(_w252))
	for _w253 in GM.with_list((1185.0), self):
		if _w253._dead:
			continue
		_w253.other = self
		(GM.f_instance_destroy(_w253))
	for _w254 in GM.with_list((1184.0), self):
		if _w254._dead:
			continue
		_w254.other = self
		(GM.f_instance_destroy(_w254))
	for _w255 in GM.with_list((1180.0), self):
		if _w255._dead:
			continue
		_w255.other = self
		(GM.f_instance_destroy(_w255))
	for _w256 in GM.with_list((1168.0), self):
		if _w256._dead:
			continue
		_w256.other = self
		(GM.f_instance_destroy(_w256))
	for _w257 in GM.with_list((1155.0), self):
		if _w257._dead:
			continue
		_w257.other = self
		(GM.f_instance_destroy(_w257))
	for _w258 in GM.with_list((1156.0), self):
		if _w258._dead:
			continue
		_w258.other = self
		(GM.f_instance_destroy(_w258))
	for _w259 in GM.with_list((1157.0), self):
		if _w259._dead:
			continue
		_w259.other = self
		(GM.f_instance_destroy(_w259))
	for _w260 in GM.with_list((1158.0), self):
		if _w260._dead:
			continue
		_w260.other = self
		(GM.f_instance_destroy(_w260))
	for _w261 in GM.with_list((1159.0), self):
		if _w261._dead:
			continue
		_w261.other = self
		(GM.f_instance_destroy(_w261))
	for _w262 in GM.with_list((1163.0), self):
		if _w262._dead:
			continue
		_w262.other = self
		(GM.f_instance_destroy(_w262))
	for _w263 in GM.with_list((1164.0), self):
		if _w263._dead:
			continue
		_w263.other = self
		(GM.f_instance_destroy(_w263))
	for _w264 in GM.with_list((1165.0), self):
		if _w264._dead:
			continue
		_w264.other = self
		(GM.f_instance_destroy(_w264))
	for _w265 in GM.with_list((1166.0), self):
		if _w265._dead:
			continue
		_w265.other = self
		(GM.f_instance_destroy(_w265))
	for _w266 in GM.with_list((1167.0), self):
		if _w266._dead:
			continue
		_w266.other = self
		(GM.f_instance_destroy(_w266))
	for _w267 in GM.with_list((1162.0), self):
		if _w267._dead:
			continue
		_w267.other = self
		(GM.f_instance_destroy(_w267))
	(GM.f_sound_play(309.0))
	for _w268 in GM.with_list((1160.0), self):
		if _w268._dead:
			continue
		_w268.other = self
		(GM.f_instance_destroy(_w268))
	for _w269 in GM.with_list((1161.0), self):
		if _w269._dead:
			continue
		_w269.other = self
		(GM.f_instance_destroy(_w269))
	(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 58.0), 1166.0))
	(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 93.0), 1164.0))
	(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 128.0), 1165.0))
	(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 163.0), 1163.0))
	(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 198.0), 1167.0))
	(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 233.0), 1206.0))
	for _w270 in GM.with_list((1114.0), self):
		if _w270._dead:
			continue
		_w270.other = self
		(GM.f_instance_change(_w270, 1150.0, 0.0))
