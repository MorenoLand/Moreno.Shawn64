extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_create():
	x = ((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5)
	y = ((GM.view_yview[0] + (768.0 / 2.0)) - 157.0)
	(GM.f_instance_create(0.0, 0.0, 1245.0))
	(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 17.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 58.0), 1141.0))
	(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 17.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 93.0), 1142.0))
	(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 17.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 128.0), 1143.0))
	(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 17.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 163.0), 1144.0))
	(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 17.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 198.0), 1145.0))
	(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 17.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 233.0), 1147.0))
	(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 17.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 268.0), 1215.0))
func ev_draw():
	(GM.f_draw_sprite(1096.0, (-1.0), ((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5), ((GM.view_yview[0] + (768.0 / 2.0)) - 157.0)))
	(GM.f_action_draw_font("Courier", 15.0, 0.0, 0.0))
	(GM.f_draw_set_color(8421504.0))
	GM.font_align = 1.0
	(GM.f_draw_text((GM.view_xview[0] + (1024.0 / 2.0)), (GM.view_yview[0] + 700.0), "PUSH SHIFT TO EXIT"))
	(GM.f_draw_text((GM.view_xview[0] + (1024.0 / 2.0)), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 17.0), ("" + (GM.f_string(GM.G["planetat"])))))
func ev_keypress_16():
	for _w105 in GM.with_list((1257.0), self):
		if _w105._dead:
			continue
		_w105.other = self
		(GM.f_instance_destroy(_w105))
	for _w106 in GM.with_list((1245.0), self):
		if _w106._dead:
			continue
		_w106.other = self
		(GM.f_instance_destroy(_w106))
	for _w107 in GM.with_list((1215.0), self):
		if _w107._dead:
			continue
		_w107.other = self
		(GM.f_instance_destroy(_w107))
	for _w108 in GM.with_list((1230.0), self):
		if _w108._dead:
			continue
		_w108.other = self
		(GM.f_instance_destroy(_w108))
	for _w109 in GM.with_list((1231.0), self):
		if _w109._dead:
			continue
		_w109.other = self
		(GM.f_instance_destroy(_w109))
	for _w110 in GM.with_list((1206.0), self):
		if _w110._dead:
			continue
		_w110.other = self
		(GM.f_instance_destroy(_w110))
	for _w111 in GM.with_list((1211.0), self):
		if _w111._dead:
			continue
		_w111.other = self
		(GM.f_instance_destroy(_w111))
	for _w112 in GM.with_list((1212.0), self):
		if _w112._dead:
			continue
		_w112.other = self
		(GM.f_instance_destroy(_w112))
	for _w113 in GM.with_list((1213.0), self):
		if _w113._dead:
			continue
		_w113.other = self
		(GM.f_instance_destroy(_w113))
	for _w114 in GM.with_list((1214.0), self):
		if _w114._dead:
			continue
		_w114.other = self
		(GM.f_instance_destroy(_w114))
	for _w115 in GM.with_list((1203.0), self):
		if _w115._dead:
			continue
		_w115.other = self
		(GM.f_instance_destroy(_w115))
	for _w116 in GM.with_list((1202.0), self):
		if _w116._dead:
			continue
		_w116.other = self
		(GM.f_instance_destroy(_w116))
	for _w117 in GM.with_list((1200.0), self):
		if _w117._dead:
			continue
		_w117.other = self
		(GM.f_instance_destroy(_w117))
	for _w118 in GM.with_list((1199.0), self):
		if _w118._dead:
			continue
		_w118.other = self
		(GM.f_instance_destroy(_w118))
	for _w119 in GM.with_list((1198.0), self):
		if _w119._dead:
			continue
		_w119.other = self
		(GM.f_instance_destroy(_w119))
	for _w120 in GM.with_list((1162.0), self):
		if _w120._dead:
			continue
		_w120.other = self
		(GM.f_instance_destroy(_w120))
	for _w121 in GM.with_list((1181.0), self):
		if _w121._dead:
			continue
		_w121.other = self
		(GM.f_instance_destroy(_w121))
	for _w122 in GM.with_list((1194.0), self):
		if _w122._dead:
			continue
		_w122.other = self
		(GM.f_instance_destroy(_w122))
	for _w123 in GM.with_list((1185.0), self):
		if _w123._dead:
			continue
		_w123.other = self
		(GM.f_instance_destroy(_w123))
	for _w124 in GM.with_list((1184.0), self):
		if _w124._dead:
			continue
		_w124.other = self
		(GM.f_instance_destroy(_w124))
	for _w125 in GM.with_list((1180.0), self):
		if _w125._dead:
			continue
		_w125.other = self
		(GM.f_instance_destroy(_w125))
	(GM.f_sound_play(307.0))
	for _w126 in GM.with_list((1160.0), self):
		if _w126._dead:
			continue
		_w126.other = self
		(GM.f_instance_destroy(_w126))
	for _w127 in GM.with_list((1168.0), self):
		if _w127._dead:
			continue
		_w127.other = self
		(GM.f_instance_destroy(_w127))
	for _w128 in GM.with_list((1163.0), self):
		if _w128._dead:
			continue
		_w128.other = self
		(GM.f_instance_destroy(_w128))
	for _w129 in GM.with_list((1155.0), self):
		if _w129._dead:
			continue
		_w129.other = self
		(GM.f_instance_destroy(_w129))
	for _w130 in GM.with_list((1156.0), self):
		if _w130._dead:
			continue
		_w130.other = self
		(GM.f_instance_destroy(_w130))
	for _w131 in GM.with_list((1164.0), self):
		if _w131._dead:
			continue
		_w131.other = self
		(GM.f_instance_destroy(_w131))
	for _w132 in GM.with_list((1157.0), self):
		if _w132._dead:
			continue
		_w132.other = self
		(GM.f_instance_destroy(_w132))
	for _w133 in GM.with_list((1165.0), self):
		if _w133._dead:
			continue
		_w133.other = self
		(GM.f_instance_destroy(_w133))
	for _w134 in GM.with_list((1158.0), self):
		if _w134._dead:
			continue
		_w134.other = self
		(GM.f_instance_destroy(_w134))
	for _w135 in GM.with_list((1159.0), self):
		if _w135._dead:
			continue
		_w135.other = self
		(GM.f_instance_destroy(_w135))
	for _w136 in GM.with_list((1166.0), self):
		if _w136._dead:
			continue
		_w136.other = self
		(GM.f_instance_destroy(_w136))
	for _w137 in GM.with_list((1167.0), self):
		if _w137._dead:
			continue
		_w137.other = self
		(GM.f_instance_destroy(_w137))
	for _w138 in GM.with_list((1141.0), self):
		if _w138._dead:
			continue
		_w138.other = self
		(GM.f_instance_destroy(_w138))
	for _w139 in GM.with_list((1142.0), self):
		if _w139._dead:
			continue
		_w139.other = self
		(GM.f_instance_destroy(_w139))
	for _w140 in GM.with_list((1161.0), self):
		if _w140._dead:
			continue
		_w140.other = self
		(GM.f_instance_destroy(_w140))
	for _w141 in GM.with_list((1143.0), self):
		if _w141._dead:
			continue
		_w141.other = self
		(GM.f_instance_destroy(_w141))
	for _w142 in GM.with_list((1144.0), self):
		if _w142._dead:
			continue
		_w142.other = self
		(GM.f_instance_destroy(_w142))
	for _w143 in GM.with_list((1145.0), self):
		if _w143._dead:
			continue
		_w143.other = self
		(GM.f_instance_destroy(_w143))
	for _w144 in GM.with_list((1146.0), self):
		if _w144._dead:
			continue
		_w144.other = self
		(GM.f_instance_destroy(_w144))
	for _w145 in GM.with_list((1147.0), self):
		if _w145._dead:
			continue
		_w145.other = self
		(GM.f_instance_destroy(_w145))
	(GM.f_instance_create(GM.G["ccc"], GM.G["ddd"], 482.0))
	(GM.f_instance_destroy(self))
