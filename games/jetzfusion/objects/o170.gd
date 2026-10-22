extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 900.0
func ev_alarm_0():
	for _w165 in GM.with_list((392.0), self):
		if _w165._dead:
			continue
		_w165.other = self
		(GM.f_instance_destroy(_w165))
	if (((absf((GM.f_instance_number(438.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(435.0)) - 0.0) < 0.00001))):
			if (((absf((GM.f_instance_number(423.0)) - 0.0) < 0.00001))):
				if (((absf((GM.f_instance_number(434.0)) - 0.0) < 0.00001))):
					(GM.f_sound_play(44.0))
	for _w166 in GM.with_list((436.0), self):
		if _w166._dead:
			continue
		_w166.other = self
		(GM.f_instance_destroy(_w166))
	for _w167 in GM.with_list((457.0), self):
		if _w167._dead:
			continue
		_w167.other = self
		(GM.f_instance_destroy(_w167))
	if (((absf((GM.f_instance_number(423.0)) - 1.0) < 0.00001))):
		for _w168 in GM.with_list((383.0), self):
			if _w168._dead:
				continue
			_w168.other = self
			(GM.f_instance_create((_w168.x + 0.0), (_w168.y + 0.0), 422.0))
		for _w169 in GM.with_list((383.0), self):
			if _w169._dead:
				continue
			_w169.other = self
			(GM.f_instance_destroy(_w169))
		for _w170 in GM.with_list((300.0), self):
			if _w170._dead:
				continue
			_w170.other = self
			(GM.f_instance_destroy(_w170))
		(GM.f_instance_create(0.0, 0.0, 10.0))
		for _w171 in GM.with_list((423.0), self):
			if _w171._dead:
				continue
			_w171.other = self
			(GM.f_instance_destroy(_w171))
		(GM.f_sound_play(48.0))
		GM.G["money"] = GM.G["money"] + 100.0
	if (((absf((GM.f_instance_number(434.0)) - 1.0) < 0.00001))):
		for _w172 in GM.with_list((422.0), self):
			if _w172._dead:
				continue
			_w172.other = self
			(GM.f_instance_create(2760.0, 140.0, 433.0))
		for _w173 in GM.with_list((422.0), self):
			if _w173._dead:
				continue
			_w173.other = self
			(GM.f_instance_destroy(_w173))
		for _w174 in GM.with_list((300.0), self):
			if _w174._dead:
				continue
			_w174.other = self
			(GM.f_instance_destroy(_w174))
		(GM.f_instance_create(0.0, 0.0, 10.0))
		for _w175 in GM.with_list((423.0), self):
			if _w175._dead:
				continue
			_w175.other = self
			(GM.f_instance_destroy(_w175))
		(GM.f_sound_play(48.0))
		GM.G["money"] = GM.G["money"] + 200.0
	if (((absf((GM.f_instance_number(435.0)) - 1.0) < 0.00001))):
		(GM.f_sound_stop(38.0))
		for _w176 in GM.with_list((433.0), self):
			if _w176._dead:
				continue
			_w176.other = self
			(GM.f_instance_create((_w176.x + 0.0), (_w176.y + 0.0), 437.0))
		for _w177 in GM.with_list((433.0), self):
			if _w177._dead:
				continue
			_w177.other = self
			(GM.f_instance_destroy(_w177))
		(GM.f_sound_play(48.0))
		GM.G["money"] = GM.G["money"] + 300.0
		for _w178 in GM.with_list((435.0), self):
			if _w178._dead:
				continue
			_w178.other = self
			(GM.f_instance_destroy(_w178))
	if (((absf((GM.f_instance_number(438.0)) - 1.0) < 0.00001))):
		(self.script_missionscript3(0.0, 0.0, 0.0, 0.0, 0.0))
		for _w179 in GM.with_list((7.0), self):
			if _w179._dead:
				continue
			_w179.other = self
			(GM.f_instance_create((_w179.x + 0.0), (_w179.y + (-40.0)), 248.0))
		(GM.f_sound_stop(38.0))
		for _w180 in GM.with_list((437.0), self):
			if _w180._dead:
				continue
			_w180.other = self
			(GM.f_instance_destroy(_w180))
		(GM.f_sound_play(48.0))
		GM.G["money"] = GM.G["money"] + 400.0
		for _w181 in GM.with_list((438.0), self):
			if _w181._dead:
				continue
			_w181.other = self
			(GM.f_instance_destroy(_w181))
	for _w182 in GM.with_list((394.0), self):
		if _w182._dead:
			continue
		_w182.other = self
		(GM.f_instance_destroy(_w182))
	for _w183 in GM.with_list((425.0), self):
		if _w183._dead:
			continue
		_w183.other = self
		(GM.f_instance_destroy(_w183))
	for _w184 in GM.with_list((393.0), self):
		if _w184._dead:
			continue
		_w184.other = self
		(GM.f_instance_destroy(_w184))
	for _w185 in GM.with_list((426.0), self):
		if _w185._dead:
			continue
		_w185.other = self
		(GM.f_instance_destroy(_w185))
	for _w186 in GM.with_list((429.0), self):
		if _w186._dead:
			continue
		_w186.other = self
		(GM.f_instance_destroy(_w186))
	for _w187 in GM.with_list((434.0), self):
		if _w187._dead:
			continue
		_w187.other = self
		(GM.f_instance_destroy(_w187))
	for _w188 in GM.with_list((328.0), self):
		if _w188._dead:
			continue
		_w188.other = self
		(GM.f_instance_destroy(_w188))
	for _w189 in GM.with_list((329.0), self):
		if _w189._dead:
			continue
		_w189.other = self
		(GM.f_instance_destroy(_w189))
	for _w190 in GM.with_list((325.0), self):
		if _w190._dead:
			continue
		_w190.other = self
		(GM.f_instance_destroy(_w190))
	for _w191 in GM.with_list((323.0), self):
		if _w191._dead:
			continue
		_w191.other = self
		(GM.f_instance_destroy(_w191))
	for _w192 in GM.with_list((324.0), self):
		if _w192._dead:
			continue
		_w192.other = self
		(GM.f_instance_destroy(_w192))
	for _w193 in GM.with_list((312.0), self):
		if _w193._dead:
			continue
		_w193.other = self
		(GM.f_instance_destroy(_w193))
	for _w194 in GM.with_list((315.0), self):
		if _w194._dead:
			continue
		_w194.other = self
		(GM.f_instance_destroy(_w194))
	for _w195 in GM.with_list((309.0), self):
		if _w195._dead:
			continue
		_w195.other = self
		(GM.f_instance_destroy(_w195))
	for _w196 in GM.with_list((304.0), self):
		if _w196._dead:
			continue
		_w196.other = self
		(GM.f_instance_destroy(_w196))
	for _w197 in GM.with_list((301.0), self):
		if _w197._dead:
			continue
		_w197.other = self
		(GM.f_instance_destroy(_w197))
	for _w198 in GM.with_list((300.0), self):
		if _w198._dead:
			continue
		_w198.other = self
		(GM.f_instance_destroy(_w198))
	for _w199 in GM.with_list((288.0), self):
		if _w199._dead:
			continue
		_w199.other = self
		(GM.f_instance_destroy(_w199))
	for _w200 in GM.with_list((295.0), self):
		if _w200._dead:
			continue
		_w200.other = self
		(GM.f_instance_destroy(_w200))
	for _w201 in GM.with_list((285.0), self):
		if _w201._dead:
			continue
		_w201.other = self
		(GM.f_instance_destroy(_w201))
	for _w202 in GM.with_list((276.0), self):
		if _w202._dead:
			continue
		_w202.other = self
		(GM.f_instance_destroy(_w202))
	for _w203 in GM.with_list((274.0), self):
		if _w203._dead:
			continue
		_w203.other = self
		(GM.f_instance_destroy(_w203))
	for _w204 in GM.with_list((284.0), self):
		if _w204._dead:
			continue
		_w204.other = self
		(GM.f_instance_destroy(_w204))
	for _w205 in GM.with_list((270.0), self):
		if _w205._dead:
			continue
		_w205.other = self
		(GM.f_instance_destroy(_w205))
	for _w206 in GM.with_list((265.0), self):
		if _w206._dead:
			continue
		_w206.other = self
		(GM.f_instance_destroy(_w206))
	if (((absf((GM.f_instance_number(10.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(0.0, 0.0, 10.0))
	for _w207 in GM.with_list((242.0), self):
		if _w207._dead:
			continue
		_w207.other = self
		(GM.f_instance_destroy(_w207))
	for _w208 in GM.with_list((7.0), self):
		if _w208._dead:
			continue
		_w208.other = self
		_w208.friction = 0.1
	for _w209 in GM.with_list((245.0), self):
		if _w209._dead:
			continue
		_w209.other = self
		(GM.f_instance_destroy(_w209))
	for _w210 in GM.with_list((239.0), self):
		if _w210._dead:
			continue
		_w210.other = self
		(GM.f_instance_destroy(_w210))
	for _w211 in GM.with_list((219.0), self):
		if _w211._dead:
			continue
		_w211.other = self
		(GM.f_instance_destroy(_w211))
	for _w212 in GM.with_list((205.0), self):
		if _w212._dead:
			continue
		_w212.other = self
		(GM.f_instance_destroy(_w212))
	for _w213 in GM.with_list((203.0), self):
		if _w213._dead:
			continue
		_w213.other = self
		(GM.f_instance_destroy(_w213))
	for _w214 in GM.with_list((202.0), self):
		if _w214._dead:
			continue
		_w214.other = self
		(GM.f_instance_destroy(_w214))
	for _w215 in GM.with_list((196.0), self):
		if _w215._dead:
			continue
		_w215.other = self
		(GM.f_instance_destroy(_w215))
	for _w216 in GM.with_list((182.0), self):
		if _w216._dead:
			continue
		_w216.other = self
		(GM.f_instance_destroy(_w216))
	GM.view_object[0] = 7.0
	GM.view_hborder[0] = (400.0 - (GM.vb(7.0, "sprite_width") / 2.0))
	GM.view_vborder[0] = (300.0 - (GM.vb(7.0, "sprite_height") / 2.0))
	GM.vsetb(160.0, "visible", 1.0)
	GM.vsetb(159.0, "visible", 1.0)
	GM.vsetb(194.0, "visible", 1.0)
	GM.vsetb(271.0, "visible", 1.0)
	GM.vsetb(7.0, "visible", 1.0)
	GM.vset(7.0, "v_malfo", 0.0)
	GM.vset(7.0, "v_start", 1.0)
	GM.vsetb(382.0, "visible", 1.0)
	GM.vsetb(397.0, "visible", 1.0)
	(GM.f_sound_stop(52.0))
	for _w217 in GM.with_list((188.0), self):
		if _w217._dead:
			continue
		_w217.other = self
		(GM.f_instance_destroy(_w217))
	for _w218 in GM.with_list((189.0), self):
		if _w218._dead:
			continue
		_w218.other = self
		(GM.f_instance_destroy(_w218))
	for _w219 in GM.with_list((164.0), self):
		if _w219._dead:
			continue
		_w219.other = self
		(GM.f_instance_destroy(_w219))
	for _w220 in GM.with_list((186.0), self):
		if _w220._dead:
			continue
		_w220.other = self
		(GM.f_instance_destroy(_w220))
	for _w221 in GM.with_list((177.0), self):
		if _w221._dead:
			continue
		_w221.other = self
		(GM.f_instance_destroy(_w221))
	for _w222 in GM.with_list((178.0), self):
		if _w222._dead:
			continue
		_w222.other = self
		(GM.f_instance_destroy(_w222))
	for _w223 in GM.with_list((181.0), self):
		if _w223._dead:
			continue
		_w223.other = self
		(GM.f_instance_destroy(_w223))
	for _w224 in GM.with_list((179.0), self):
		if _w224._dead:
			continue
		_w224.other = self
		(GM.f_instance_destroy(_w224))
	if (not ((((GM.f_sound_isplaying(25.0)))) >= 0.5)):
		(GM.f_sound_loop(25.0))
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Dot-Matrix", 22.0, 0.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), 200.0, ("TIME: " + (GM.f_string((GM.f_round((alarm[int(0.0)] / 30.0))))))))
