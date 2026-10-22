extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	alarm[int(0.0)] = (60.0 * 30.0)
func ev_alarm_0():
	(GM.f_sound_play(87.0))
	for _w113 in GM.with_list((0.0), self):
		if _w113._dead:
			continue
		_w113.other = self
		GM.vset(_w113, "v_elect", 0.0)
		GM.vset(_w113, "v_flames", 0.0)
		GM.vset(_w113, "v_weaponselect", 1.0)
	for _w114 in GM.with_list((526.0), self):
		if _w114._dead:
			continue
		_w114.other = self
		(GM.f_instance_destroy(_w114))
	for _w115 in GM.with_list((525.0), self):
		if _w115._dead:
			continue
		_w115.other = self
		(GM.f_instance_destroy(_w115))
	for _w116 in GM.with_list((1883.0), self):
		if _w116._dead:
			continue
		_w116.other = self
		(GM.f_instance_destroy(_w116))
	for _w117 in GM.with_list((1898.0), self):
		if _w117._dead:
			continue
		_w117.other = self
		(GM.f_instance_destroy(_w117))
	for _w118 in GM.with_list((1893.0), self):
		if _w118._dead:
			continue
		_w118.other = self
		(GM.f_instance_destroy(_w118))
	for _w119 in GM.with_list((1897.0), self):
		if _w119._dead:
			continue
		_w119.other = self
		(GM.f_instance_destroy(_w119))
	for _w120 in GM.with_list((587.0), self):
		if _w120._dead:
			continue
		_w120.other = self
		(GM.f_instance_destroy(_w120))
	for _w121 in GM.with_list((1865.0), self):
		if _w121._dead:
			continue
		_w121.other = self
		(GM.f_instance_destroy(_w121))
	for _w122 in GM.with_list((586.0), self):
		if _w122._dead:
			continue
		_w122.other = self
		(GM.f_instance_destroy(_w122))
	for _w123 in GM.with_list((1887.0), self):
		if _w123._dead:
			continue
		_w123.other = self
		(GM.f_instance_destroy(_w123))
	for _w124 in GM.with_list((1880.0), self):
		if _w124._dead:
			continue
		_w124.other = self
		(GM.f_instance_destroy(_w124))
	for _w125 in GM.with_list((1882.0), self):
		if _w125._dead:
			continue
		_w125.other = self
		(GM.f_instance_destroy(_w125))
	for _w126 in GM.with_list((1881.0), self):
		if _w126._dead:
			continue
		_w126.other = self
		(GM.f_instance_destroy(_w126))
	for _w127 in GM.with_list((1879.0), self):
		if _w127._dead:
			continue
		_w127.other = self
		(GM.f_instance_destroy(_w127))
	for _w128 in GM.with_list((178.0), self):
		if _w128._dead:
			continue
		_w128.other = self
		(GM.f_instance_destroy(_w128))
	for _w129 in GM.with_list((1886.0), self):
		if _w129._dead:
			continue
		_w129.other = self
		(GM.f_instance_destroy(_w129))
	for _w130 in GM.with_list((71.0), self):
		if _w130._dead:
			continue
		_w130.other = self
		(GM.f_instance_destroy(_w130))
	for _w131 in GM.with_list((142.0), self):
		if _w131._dead:
			continue
		_w131.other = self
		(GM.f_instance_destroy(_w131))
	for _w132 in GM.with_list((554.0), self):
		if _w132._dead:
			continue
		_w132.other = self
		(GM.f_instance_destroy(_w132))
	for _w133 in GM.with_list((579.0), self):
		if _w133._dead:
			continue
		_w133.other = self
		(GM.f_instance_destroy(_w133))
	for _w134 in GM.with_list((571.0), self):
		if _w134._dead:
			continue
		_w134.other = self
		(GM.f_instance_destroy(_w134))
	for _w135 in GM.with_list((570.0), self):
		if _w135._dead:
			continue
		_w135.other = self
		(GM.f_instance_destroy(_w135))
	for _w136 in GM.with_list((578.0), self):
		if _w136._dead:
			continue
		_w136.other = self
		(GM.f_instance_destroy(_w136))
	for _w137 in GM.with_list((575.0), self):
		if _w137._dead:
			continue
		_w137.other = self
		(GM.f_instance_destroy(_w137))
	for _w138 in GM.with_list((569.0), self):
		if _w138._dead:
			continue
		_w138.other = self
		(GM.f_instance_destroy(_w138))
	for _w139 in GM.with_list((476.0), self):
		if _w139._dead:
			continue
		_w139.other = self
		(GM.f_instance_destroy(_w139))
	for _w140 in GM.with_list((94.0), self):
		if _w140._dead:
			continue
		_w140.other = self
		(GM.f_instance_destroy(_w140))
	for _w141 in GM.with_list((477.0), self):
		if _w141._dead:
			continue
		_w141.other = self
		(GM.f_instance_destroy(_w141))
	for _w142 in GM.with_list((546.0), self):
		if _w142._dead:
			continue
		_w142.other = self
		(GM.f_instance_destroy(_w142))
	for _w143 in GM.with_list((553.0), self):
		if _w143._dead:
			continue
		_w143.other = self
		(GM.f_instance_destroy(_w143))
	for _w144 in GM.with_list((487.0), self):
		if _w144._dead:
			continue
		_w144.other = self
		(GM.f_instance_destroy(_w144))
	for _w145 in GM.with_list((517.0), self):
		if _w145._dead:
			continue
		_w145.other = self
		(GM.f_instance_destroy(_w145))
	for _w146 in GM.with_list((483.0), self):
		if _w146._dead:
			continue
		_w146.other = self
		(GM.f_instance_destroy(_w146))
	for _w147 in GM.with_list((482.0), self):
		if _w147._dead:
			continue
		_w147.other = self
		(GM.f_instance_destroy(_w147))
	for _w148 in GM.with_list((486.0), self):
		if _w148._dead:
			continue
		_w148.other = self
		(GM.f_instance_destroy(_w148))
	for _w149 in GM.with_list((524.0), self):
		if _w149._dead:
			continue
		_w149.other = self
		(GM.f_instance_destroy(_w149))
	for _w150 in GM.with_list((432.0), self):
		if _w150._dead:
			continue
		_w150.other = self
		(GM.f_instance_destroy(_w150))
	for _w151 in GM.with_list((433.0), self):
		if _w151._dead:
			continue
		_w151.other = self
		(GM.f_instance_destroy(_w151))
	for _w152 in GM.with_list((253.0), self):
		if _w152._dead:
			continue
		_w152.other = self
		(GM.f_instance_destroy(_w152))
	for _w153 in GM.with_list((249.0), self):
		if _w153._dead:
			continue
		_w153.other = self
		(GM.f_instance_destroy(_w153))
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Courier", 15.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 560.0), ("Time " + (GM.f_string((GM.f_round((alarm[int(0.0)] / 30.0))))))))
