extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_step():
	x = (((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 17.0)
	y = (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 58.0)
	(self.script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_4():
	for _w176 in GM.with_list((1257.0), self):
		if _w176._dead:
			continue
		_w176.other = self
		(GM.f_instance_destroy(_w176))
	for _w177 in GM.with_list((1230.0), self):
		if _w177._dead:
			continue
		_w177.other = self
		(GM.f_instance_destroy(_w177))
	for _w178 in GM.with_list((1231.0), self):
		if _w178._dead:
			continue
		_w178.other = self
		(GM.f_instance_destroy(_w178))
	for _w179 in GM.with_list((1211.0), self):
		if _w179._dead:
			continue
		_w179.other = self
		(GM.f_instance_destroy(_w179))
	for _w180 in GM.with_list((1212.0), self):
		if _w180._dead:
			continue
		_w180.other = self
		(GM.f_instance_destroy(_w180))
	for _w181 in GM.with_list((1213.0), self):
		if _w181._dead:
			continue
		_w181.other = self
		(GM.f_instance_destroy(_w181))
	for _w182 in GM.with_list((1214.0), self):
		if _w182._dead:
			continue
		_w182.other = self
		(GM.f_instance_destroy(_w182))
	for _w183 in GM.with_list((1206.0), self):
		if _w183._dead:
			continue
		_w183.other = self
		(GM.f_instance_destroy(_w183))
	for _w184 in GM.with_list((1203.0), self):
		if _w184._dead:
			continue
		_w184.other = self
		(GM.f_instance_destroy(_w184))
	for _w185 in GM.with_list((1202.0), self):
		if _w185._dead:
			continue
		_w185.other = self
		(GM.f_instance_destroy(_w185))
	for _w186 in GM.with_list((1200.0), self):
		if _w186._dead:
			continue
		_w186.other = self
		(GM.f_instance_destroy(_w186))
	for _w187 in GM.with_list((1199.0), self):
		if _w187._dead:
			continue
		_w187.other = self
		(GM.f_instance_destroy(_w187))
	for _w188 in GM.with_list((1198.0), self):
		if _w188._dead:
			continue
		_w188.other = self
		(GM.f_instance_destroy(_w188))
	for _w189 in GM.with_list((1162.0), self):
		if _w189._dead:
			continue
		_w189.other = self
		(GM.f_instance_destroy(_w189))
	for _w190 in GM.with_list((1181.0), self):
		if _w190._dead:
			continue
		_w190.other = self
		(GM.f_instance_destroy(_w190))
	for _w191 in GM.with_list((1194.0), self):
		if _w191._dead:
			continue
		_w191.other = self
		(GM.f_instance_destroy(_w191))
	for _w192 in GM.with_list((1185.0), self):
		if _w192._dead:
			continue
		_w192.other = self
		(GM.f_instance_destroy(_w192))
	for _w193 in GM.with_list((1184.0), self):
		if _w193._dead:
			continue
		_w193.other = self
		(GM.f_instance_destroy(_w193))
	for _w194 in GM.with_list((1180.0), self):
		if _w194._dead:
			continue
		_w194.other = self
		(GM.f_instance_destroy(_w194))
	for _w195 in GM.with_list((1163.0), self):
		if _w195._dead:
			continue
		_w195.other = self
		(GM.f_instance_destroy(_w195))
	for _w196 in GM.with_list((1164.0), self):
		if _w196._dead:
			continue
		_w196.other = self
		(GM.f_instance_destroy(_w196))
	for _w197 in GM.with_list((1165.0), self):
		if _w197._dead:
			continue
		_w197.other = self
		(GM.f_instance_destroy(_w197))
	for _w198 in GM.with_list((1166.0), self):
		if _w198._dead:
			continue
		_w198.other = self
		(GM.f_instance_destroy(_w198))
	for _w199 in GM.with_list((1167.0), self):
		if _w199._dead:
			continue
		_w199.other = self
		(GM.f_instance_destroy(_w199))
	for _w200 in GM.with_list((1162.0), self):
		if _w200._dead:
			continue
		_w200.other = self
		(GM.f_instance_destroy(_w200))
	(GM.f_sound_play(309.0))
	for _w201 in GM.with_list((1160.0), self):
		if _w201._dead:
			continue
		_w201.other = self
		(GM.f_instance_destroy(_w201))
	for _w202 in GM.with_list((1161.0), self):
		if _w202._dead:
			continue
		_w202.other = self
		(GM.f_instance_destroy(_w202))
	if (((absf((GM.f_instance_number(1155.0)) - 0.0) < 0.00001))):
		if (((GM.G["diamonds"] > 0.0))):
			(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 58.0), 1155.0))
	if (((absf((GM.f_instance_number(1156.0)) - 0.0) < 0.00001))):
		if (((GM.G["golds"] > 0.0))):
			(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 93.0), 1156.0))
	if (((absf((GM.f_instance_number(1157.0)) - 0.0) < 0.00001))):
		if (((GM.G["silvers"] > 0.0))):
			(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 128.0), 1157.0))
	if (((absf((GM.f_instance_number(1158.0)) - 0.0) < 0.00001))):
		if (((GM.G["coppers"] > 0.0))):
			(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 163.0), 1158.0))
	if (((absf((GM.f_instance_number(1159.0)) - 0.0) < 0.00001))):
		if (((GM.G["leads"] > 0.0))):
			(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 198.0), 1159.0))
	for _w203 in GM.with_list((1114.0), self):
		if _w203._dead:
			continue
		_w203.other = self
		(GM.f_instance_change(_w203, 1148.0, 0.0))
	for _w204 in GM.with_list((1168.0), self):
		if _w204._dead:
			continue
		_w204.other = self
		(GM.f_instance_destroy(_w204))
