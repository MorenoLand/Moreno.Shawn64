extends "res://games/marblex/scripts.gd"
var v_bdooropen = 0.0
var v_hak = 0.0
var v_open = 0.0
func ev_create():
	v_bdooropen = 0.0
	v_hak = 1.0
	if (((absf((GM.f_instance_number(14.0)) - 1.0) < 0.00001))):
		(GM.f_motion_set(self, GM.vb(9.0, "direction"), GM.vb(9.0, "speed")))
	if (((absf((GM.f_instance_number(49.0)) - 1.0) < 0.00001))):
		(GM.f_motion_set(self, GM.vb(49.0, "direction"), GM.vb(49.0, "speed")))
func ev_step():
	pass
	if (not ((((GM.f_place_meeting(self, (x + 0.0), (y + 0.0), 57.0)))) >= 0.5)):
		GM.view_object[int(0.0)] = 23.0
		friction = 0.05
		(GM.f_sound_stop(18.0))
		(GM.f_instance_change(self, 0.0, 0.0))
func ev_col_69():
	(GM.f_action_move(self, "010000000", 8.0, 0.0))
func ev_col_68():
	(GM.f_action_move(self, "000001000", 8.0, 0.0))
func ev_col_67():
	(GM.f_action_move(self, "000000010", 8.0, 0.0))
func ev_col_66():
	(GM.f_action_move(self, "000100000", 8.0, 0.0))
func ev_col_64():
	(GM.f_action_move(self, "010000000", 8.0, 0.0))
func ev_col_63():
	(GM.f_action_move(self, "000001000", 8.0, 0.0))
func ev_col_62():
	(GM.f_action_move(self, "000000010", 8.0, 0.0))
func ev_col_61():
	(GM.f_action_move(self, "000100000", 8.0, 0.0))
func ev_col_55():
	(GM.f_sound_play(1.0))
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_53():
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + (-1.0)), 53.0))))) >= 0.5:
		vspeed = 4.0
func ev_col_48():
	GM.view_hborder[int(0.0)] = 259.0
	GM.view_vborder[int(0.0)] = 179.0
	GM.view_object[int(0.0)] = 49.0
	for _w49 in GM.with_list((self.other), self):
		if _w49._dead:
			continue
		_w49.other = self
		(GM.f_instance_create((_w49.x + (-40.0)), (_w49.y + (-40.0)), 50.0))
	(GM.f_instance_create((x + (-40.0)), (y + (-40.0)), 49.0))
	for _w50 in GM.with_list((self.other), self):
		if _w50._dead:
			continue
		_w50.other = self
		(GM.f_instance_destroy(_w50))
	(GM.f_instance_destroy(self))
func ev_col_36():
	(GM.f_sound_play(1.0))
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_31():
	if (not ((((GM.f_place_meeting(self, (x + 0.0), (y + 0.0), 29.0)))) >= 0.5)):
		if (not ((((GM.f_place_meeting(self, (x + 0.0), (y + 0.0), 51.0)))) >= 0.5)):
			(GM.f_sound_play(2.0))
			(GM.f_instance_change(self, 6.0, 0.0))
func ev_col_21():
	(GM.f_sound_play(1.0))
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_18():
	for _w51 in GM.with_list((8.0), self):
		if _w51._dead:
			continue
		_w51.other = self
		GM.vset(_w51, "v_ham", 3.0)
	for _w52 in GM.with_list((28.0), self):
		if _w52._dead:
			continue
		_w52.other = self
		GM.vset(_w52, "v_ham", 3.0)
	for _w53 in GM.with_list((37.0), self):
		if _w53._dead:
			continue
		_w53.other = self
		GM.vset(_w53, "v_ham", 3.0)
	for _w54 in GM.with_list((47.0), self):
		if _w54._dead:
			continue
		_w54.other = self
		GM.vset(_w54, "v_ham", 3.0)
	for _w55 in GM.with_list((54.0), self):
		if _w55._dead:
			continue
		_w55.other = self
		GM.vset(_w55, "v_ham", 3.0)
	for _w56 in GM.with_list((56.0), self):
		if _w56._dead:
			continue
		_w56.other = self
		GM.vset(_w56, "v_ham", 3.0)
	for _w57 in GM.with_list((8.0), self):
		if _w57._dead:
			continue
		_w57.other = self
		_w57.alarm[int(0.0)] = 50.0
	for _w58 in GM.with_list((28.0), self):
		if _w58._dead:
			continue
		_w58.other = self
		_w58.alarm[int(0.0)] = 50.0
	for _w59 in GM.with_list((37.0), self):
		if _w59._dead:
			continue
		_w59.other = self
		_w59.alarm[int(0.0)] = 50.0
	for _w60 in GM.with_list((56.0), self):
		if _w60._dead:
			continue
		_w60.other = self
		_w60.alarm[int(0.0)] = 50.0
	for _w61 in GM.with_list((47.0), self):
		if _w61._dead:
			continue
		_w61.other = self
		_w61.alarm[int(0.0)] = 50.0
	for _w62 in GM.with_list((54.0), self):
		if _w62._dead:
			continue
		_w62.other = self
		_w62.alarm[int(0.0)] = 50.0
	for _w63 in GM.with_list((3.0), self):
		if _w63._dead:
			continue
		_w63.other = self
		GM.vset(_w63, "v_open", 1.0)
	for _w64 in GM.with_list((self.other), self):
		if _w64._dead:
			continue
		_w64.other = self
		(GM.f_instance_destroy(_w64))
func ev_col_17():
	(GM.f_room_goto_next())
func ev_col_12():
	(GM.f_sound_play(1.0))
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_3():
	if (((absf(v_open - 0.0) < 0.00001))):
		(GM.f_move_bounce_solid(self, 0.0))
		for _w65 in GM.with_list((28.0), self):
			if _w65._dead:
				continue
			_w65.other = self
			GM.vset(_w65, "v_ham", 2.0)
		for _w66 in GM.with_list((8.0), self):
			if _w66._dead:
				continue
			_w66.other = self
			GM.vset(_w66, "v_ham", 2.0)
		for _w67 in GM.with_list((37.0), self):
			if _w67._dead:
				continue
			_w67.other = self
			GM.vset(_w67, "v_ham", 2.0)
		for _w68 in GM.with_list((47.0), self):
			if _w68._dead:
				continue
			_w68.other = self
			GM.vset(_w68, "v_ham", 2.0)
		for _w69 in GM.with_list((54.0), self):
			if _w69._dead:
				continue
			_w69.other = self
			GM.vset(_w69, "v_ham", 2.0)
		for _w70 in GM.with_list((56.0), self):
			if _w70._dead:
				continue
			_w70.other = self
			GM.vset(_w70, "v_ham", 2.0)
		for _w71 in GM.with_list((8.0), self):
			if _w71._dead:
				continue
			_w71.other = self
			_w71.alarm[int(0.0)] = 50.0
		for _w72 in GM.with_list((28.0), self):
			if _w72._dead:
				continue
			_w72.other = self
			_w72.alarm[int(0.0)] = 50.0
		for _w73 in GM.with_list((37.0), self):
			if _w73._dead:
				continue
			_w73.other = self
			_w73.alarm[int(0.0)] = 50.0
		for _w74 in GM.with_list((47.0), self):
			if _w74._dead:
				continue
			_w74.other = self
			_w74.alarm[int(0.0)] = 50.0
		for _w75 in GM.with_list((56.0), self):
			if _w75._dead:
				continue
			_w75.other = self
			_w75.alarm[int(0.0)] = 50.0
		for _w76 in GM.with_list((54.0), self):
			if _w76._dead:
				continue
			_w76.other = self
			_w76.alarm[int(0.0)] = 50.0
	else:
		(GM.f_sound_play(3.0))
		for _w77 in GM.with_list((self.other), self):
			if _w77._dead:
				continue
			_w77.other = self
			(GM.f_instance_destroy(_w77))
func ev_col_1():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
