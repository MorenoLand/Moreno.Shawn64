extends "res://games/marblex/scripts.gd"
var v_bdooropen = 0.0
var v_billy = 0.0
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
	friction = 0.05
	image_speed = speed
	v_billy = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.mouse_x, GM.mouse_y))
	if (not ((((GM.f_distance_to_point(self, GM.mouse_x, GM.mouse_y)) < 5.0)))):
		(GM.f_motion_add(self, v_billy, 0.15))
func ev_col_76():
	(GM.f_sound_play(3.0))
	GM.vsetb(78.0, "x", x)
	GM.vsetb(78.0, "y", y)
	(GM.f_instance_create(1760.0, 400.0, 4.0))
	(GM.f_instance_destroy(self))
func ev_col_57():
	if ((40.0 > 0.0)):
		x = ((GM.f_round((x / 40.0))) * 40.0)
	if ((40.0 > 0.0)):
		y = ((GM.f_round((y / 40.0))) * 40.0)
	GM.view_object[int(0.0)] = 58.0
	friction = 0.0
	(GM.f_sound_loop(18.0))
	(GM.f_instance_change(self, 58.0, 0.0))
func ev_col_55():
	(GM.f_sound_play(1.0))
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_53():
	(GM.f_motion_add(self, 270.0, 0.5))
func ev_col_48():
	GM.view_hborder[int(0.0)] = 259.0
	GM.view_vborder[int(0.0)] = 179.0
	GM.view_object[int(0.0)] = 49.0
	for _w1 in GM.with_list((self.other), self):
		if _w1._dead:
			continue
		_w1.other = self
		(GM.f_instance_create((_w1.x + (-40.0)), (_w1.y + (-40.0)), 50.0))
	(GM.f_instance_create((x + (-40.0)), (y + (-40.0)), 49.0))
	for _w2 in GM.with_list((self.other), self):
		if _w2._dead:
			continue
		_w2.other = self
		(GM.f_instance_destroy(_w2))
	(GM.f_instance_destroy(self))
func ev_col_36():
	(GM.f_sound_play(1.0))
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_31():
	if (not ((((GM.f_place_meeting(self, (x + 0.0), (y + 0.0), 74.0)))) >= 0.5)):
		if (not ((((GM.f_place_meeting(self, (x + 0.0), (y + 0.0), 29.0)))) >= 0.5)):
			if (not ((((GM.f_place_meeting(self, (x + 0.0), (y + 0.0), 51.0)))) >= 0.5)):
				(GM.f_sound_play(2.0))
				(GM.f_instance_change(self, 6.0, 0.0))
func ev_col_21():
	(GM.f_sound_play(1.0))
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_18():
	for _w3 in GM.with_list((77.0), self):
		if _w3._dead:
			continue
		_w3.other = self
		GM.vset(_w3, "v_ham", 3.0)
	for _w4 in GM.with_list((8.0), self):
		if _w4._dead:
			continue
		_w4.other = self
		GM.vset(_w4, "v_ham", 3.0)
	for _w5 in GM.with_list((28.0), self):
		if _w5._dead:
			continue
		_w5.other = self
		GM.vset(_w5, "v_ham", 3.0)
	for _w6 in GM.with_list((37.0), self):
		if _w6._dead:
			continue
		_w6.other = self
		GM.vset(_w6, "v_ham", 3.0)
	for _w7 in GM.with_list((47.0), self):
		if _w7._dead:
			continue
		_w7.other = self
		GM.vset(_w7, "v_ham", 3.0)
	for _w8 in GM.with_list((54.0), self):
		if _w8._dead:
			continue
		_w8.other = self
		GM.vset(_w8, "v_ham", 3.0)
	for _w9 in GM.with_list((56.0), self):
		if _w9._dead:
			continue
		_w9.other = self
		GM.vset(_w9, "v_ham", 3.0)
	for _w10 in GM.with_list((72.0), self):
		if _w10._dead:
			continue
		_w10.other = self
		GM.vset(_w10, "v_ham", 3.0)
	for _w11 in GM.with_list((77.0), self):
		if _w11._dead:
			continue
		_w11.other = self
		alarm[int(0.0)] = 50.0
	for _w12 in GM.with_list((8.0), self):
		if _w12._dead:
			continue
		_w12.other = self
		alarm[int(0.0)] = 50.0
	for _w13 in GM.with_list((28.0), self):
		if _w13._dead:
			continue
		_w13.other = self
		alarm[int(0.0)] = 50.0
	for _w14 in GM.with_list((37.0), self):
		if _w14._dead:
			continue
		_w14.other = self
		alarm[int(0.0)] = 50.0
	for _w15 in GM.with_list((56.0), self):
		if _w15._dead:
			continue
		_w15.other = self
		alarm[int(0.0)] = 50.0
	for _w16 in GM.with_list((72.0), self):
		if _w16._dead:
			continue
		_w16.other = self
		alarm[int(0.0)] = 50.0
	for _w17 in GM.with_list((47.0), self):
		if _w17._dead:
			continue
		_w17.other = self
		alarm[int(0.0)] = 50.0
	for _w18 in GM.with_list((54.0), self):
		if _w18._dead:
			continue
		_w18.other = self
		alarm[int(0.0)] = 50.0
	for _w19 in GM.with_list((3.0), self):
		if _w19._dead:
			continue
		_w19.other = self
		GM.vset(_w19, "v_open", 1.0)
	for _w20 in GM.with_list((self.other), self):
		if _w20._dead:
			continue
		_w20.other = self
		(GM.f_instance_destroy(_w20))
func ev_col_17():
	GM.score = GM.score + 1.0
	if (((absf(GM.room - GM.room_last()) >= 0.00001))):
		(GM.f_room_goto_next())
	else:
		GM.score = GM.score + GM.lives
		await GM.f_show_message("You beat the game!")
		await GM.f_show_message("Hold C and push 1-9 on the menu.")
		(GM.f_room_goto(4.0))
func ev_col_12():
	(GM.f_sound_play(1.0))
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_5():
	(GM.f_sound_play(2.0))
	GM.lives = GM.lives + (-1.0)
	(GM.f_instance_change(self, 6.0, 0.0))
func ev_col_3():
	if (((absf(v_open - 0.0) < 0.00001))):
		(GM.f_move_bounce_solid(self, 0.0))
		for _w21 in GM.with_list((77.0), self):
			if _w21._dead:
				continue
			_w21.other = self
			GM.vset(_w21, "v_ham", 2.0)
		for _w22 in GM.with_list((72.0), self):
			if _w22._dead:
				continue
			_w22.other = self
			GM.vset(_w22, "v_ham", 2.0)
		for _w23 in GM.with_list((28.0), self):
			if _w23._dead:
				continue
			_w23.other = self
			GM.vset(_w23, "v_ham", 2.0)
		for _w24 in GM.with_list((8.0), self):
			if _w24._dead:
				continue
			_w24.other = self
			GM.vset(_w24, "v_ham", 2.0)
		for _w25 in GM.with_list((37.0), self):
			if _w25._dead:
				continue
			_w25.other = self
			GM.vset(_w25, "v_ham", 2.0)
		for _w26 in GM.with_list((47.0), self):
			if _w26._dead:
				continue
			_w26.other = self
			GM.vset(_w26, "v_ham", 2.0)
		for _w27 in GM.with_list((54.0), self):
			if _w27._dead:
				continue
			_w27.other = self
			GM.vset(_w27, "v_ham", 2.0)
		for _w28 in GM.with_list((56.0), self):
			if _w28._dead:
				continue
			_w28.other = self
			GM.vset(_w28, "v_ham", 2.0)
		for _w29 in GM.with_list((8.0), self):
			if _w29._dead:
				continue
			_w29.other = self
			alarm[int(0.0)] = 50.0
		for _w30 in GM.with_list((28.0), self):
			if _w30._dead:
				continue
			_w30.other = self
			alarm[int(0.0)] = 50.0
		for _w31 in GM.with_list((37.0), self):
			if _w31._dead:
				continue
			_w31.other = self
			alarm[int(0.0)] = 50.0
		for _w32 in GM.with_list((47.0), self):
			if _w32._dead:
				continue
			_w32.other = self
			alarm[int(0.0)] = 50.0
		for _w33 in GM.with_list((56.0), self):
			if _w33._dead:
				continue
			_w33.other = self
			alarm[int(0.0)] = 50.0
		for _w34 in GM.with_list((72.0), self):
			if _w34._dead:
				continue
			_w34.other = self
			alarm[int(0.0)] = 50.0
		for _w35 in GM.with_list((54.0), self):
			if _w35._dead:
				continue
			_w35.other = self
			alarm[int(0.0)] = 50.0
		for _w36 in GM.with_list((77.0), self):
			if _w36._dead:
				continue
			_w36.other = self
			alarm[int(0.0)] = 50.0
	else:
		(GM.f_sound_play(3.0))
		for _w37 in GM.with_list((self.other), self):
			if _w37._dead:
				continue
			_w37.other = self
			(GM.f_instance_destroy(_w37))
func ev_col_1():
	(GM.f_sound_play(1.0))
	(GM.f_move_bounce_solid(self, 0.0))
