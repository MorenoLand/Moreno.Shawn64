extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_step():
	x = (((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 17.0)
	y = (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 268.0)
	(self.script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_4():
	for _w383 in GM.with_list((1257.0), self):
		if _w383._dead:
			continue
		_w383.other = self
		(GM.f_instance_destroy(_w383))
	for _w384 in GM.with_list((1230.0), self):
		if _w384._dead:
			continue
		_w384.other = self
		(GM.f_instance_destroy(_w384))
	for _w385 in GM.with_list((1231.0), self):
		if _w385._dead:
			continue
		_w385.other = self
		(GM.f_instance_destroy(_w385))
	for _w386 in GM.with_list((1211.0), self):
		if _w386._dead:
			continue
		_w386.other = self
		(GM.f_instance_destroy(_w386))
	for _w387 in GM.with_list((1212.0), self):
		if _w387._dead:
			continue
		_w387.other = self
		(GM.f_instance_destroy(_w387))
	for _w388 in GM.with_list((1213.0), self):
		if _w388._dead:
			continue
		_w388.other = self
		(GM.f_instance_destroy(_w388))
	for _w389 in GM.with_list((1214.0), self):
		if _w389._dead:
			continue
		_w389.other = self
		(GM.f_instance_destroy(_w389))
	for _w390 in GM.with_list((1206.0), self):
		if _w390._dead:
			continue
		_w390.other = self
		(GM.f_instance_destroy(_w390))
	for _w391 in GM.with_list((1203.0), self):
		if _w391._dead:
			continue
		_w391.other = self
		(GM.f_instance_destroy(_w391))
	for _w392 in GM.with_list((1202.0), self):
		if _w392._dead:
			continue
		_w392.other = self
		(GM.f_instance_destroy(_w392))
	for _w393 in GM.with_list((1200.0), self):
		if _w393._dead:
			continue
		_w393.other = self
		(GM.f_instance_destroy(_w393))
	for _w394 in GM.with_list((1199.0), self):
		if _w394._dead:
			continue
		_w394.other = self
		(GM.f_instance_destroy(_w394))
	for _w395 in GM.with_list((1198.0), self):
		if _w395._dead:
			continue
		_w395.other = self
		(GM.f_instance_destroy(_w395))
	for _w396 in GM.with_list((1162.0), self):
		if _w396._dead:
			continue
		_w396.other = self
		(GM.f_instance_destroy(_w396))
	for _w397 in GM.with_list((1181.0), self):
		if _w397._dead:
			continue
		_w397.other = self
		(GM.f_instance_destroy(_w397))
	for _w398 in GM.with_list((1194.0), self):
		if _w398._dead:
			continue
		_w398.other = self
		(GM.f_instance_destroy(_w398))
	for _w399 in GM.with_list((1185.0), self):
		if _w399._dead:
			continue
		_w399.other = self
		(GM.f_instance_destroy(_w399))
	for _w400 in GM.with_list((1184.0), self):
		if _w400._dead:
			continue
		_w400.other = self
		(GM.f_instance_destroy(_w400))
	for _w401 in GM.with_list((1180.0), self):
		if _w401._dead:
			continue
		_w401.other = self
		(GM.f_instance_destroy(_w401))
	for _w402 in GM.with_list((1168.0), self):
		if _w402._dead:
			continue
		_w402.other = self
		(GM.f_instance_destroy(_w402))
	for _w403 in GM.with_list((1163.0), self):
		if _w403._dead:
			continue
		_w403.other = self
		(GM.f_instance_destroy(_w403))
	for _w404 in GM.with_list((1164.0), self):
		if _w404._dead:
			continue
		_w404.other = self
		(GM.f_instance_destroy(_w404))
	for _w405 in GM.with_list((1165.0), self):
		if _w405._dead:
			continue
		_w405.other = self
		(GM.f_instance_destroy(_w405))
	for _w406 in GM.with_list((1166.0), self):
		if _w406._dead:
			continue
		_w406.other = self
		(GM.f_instance_destroy(_w406))
	for _w407 in GM.with_list((1167.0), self):
		if _w407._dead:
			continue
		_w407.other = self
		(GM.f_instance_destroy(_w407))
	for _w408 in GM.with_list((1162.0), self):
		if _w408._dead:
			continue
		_w408.other = self
		(GM.f_instance_destroy(_w408))
	(GM.f_sound_play(309.0))
	for _w409 in GM.with_list((1160.0), self):
		if _w409._dead:
			continue
		_w409.other = self
		(GM.f_instance_destroy(_w409))
	for _w410 in GM.with_list((1161.0), self):
		if _w410._dead:
			continue
		_w410.other = self
		(GM.f_instance_destroy(_w410))
	for _w411 in GM.with_list((1155.0), self):
		if _w411._dead:
			continue
		_w411.other = self
		(GM.f_instance_destroy(_w411))
	for _w412 in GM.with_list((1156.0), self):
		if _w412._dead:
			continue
		_w412.other = self
		(GM.f_instance_destroy(_w412))
	for _w413 in GM.with_list((1157.0), self):
		if _w413._dead:
			continue
		_w413.other = self
		(GM.f_instance_destroy(_w413))
	for _w414 in GM.with_list((1158.0), self):
		if _w414._dead:
			continue
		_w414.other = self
		(GM.f_instance_destroy(_w414))
	for _w415 in GM.with_list((1159.0), self):
		if _w415._dead:
			continue
		_w415.other = self
		(GM.f_instance_destroy(_w415))
	if ((GM.G["sheild"] == "Shield Level 3")):
		if ((absf(GM.G["myweapon"] - 4.0) < 0.00001)):
			if ((GM.G["ftank"] == "Fuel Tank 2")):
				if ((absf(GM.G["shotspeed"] - 1.0) < 0.00001)):
					if ((absf(GM.G["minelaunch"] - 1.0) < 0.00001)):
						if ((absf(GM.G["missilelaunch"] - 1.0) < 0.00001)):
							if ((absf(GM.G["reverse"] - 1.0) < 0.00001)):
								if ((absf(GM.G["topspeed"] - 21.0) < 0.00001)):
									if ((absf(GM.G["goodluck"] - 1.0) < 0.00001)):
										if ((absf(GM.G["accel"] - 0.7) < 0.00001)):
											if ((absf(GM.G["ucolor"] - 1.0) < 0.00001)):
												self.ev_user(0.0)
	for _w416 in GM.with_list((1114.0), self):
		if _w416._dead:
			continue
		_w416.other = self
		(GM.f_instance_change(_w416, 1216.0, 0.0))
func ev_other_10():
	if (((absf((GM.f_instance_number(1230.0)) - 0.0) < 0.00001))):
		if (((absf(GM.G["maphave"] - 0.0) < 0.00001))):
			(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 58.0), 1230.0))
	if (((absf((GM.f_instance_number(1231.0)) - 0.0) < 0.00001))):
		if (((absf(GM.G["orbhave"] - 0.0) < 0.00001))):
			(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 93.0), 1231.0))
