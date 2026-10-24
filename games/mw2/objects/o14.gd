extends "res://games/mw2/scripts.gd"
var v_back1 = 0.0
var v_back2 = 0.0
var v_hat = 0.0
func ev_create():
	v_hat = 0.0
func ev_step():
	if ((((GM.f_instance_number(82.0)) < 1.0))):
		if ((((GM.f_instance_number(117.0)) < 1.0))):
			if ((((GM.f_instance_number(30.0)) < 1.0))):
				if ((((GM.f_instance_number(129.0)) < 1.0))):
					if (((absf((GM.f_instance_number(40.0)) - 0.0) < 0.00001))):
						(GM.f_instance_create(200.0, 160.0, 40.0))
func ev_key_120():
	v_hat = 1.0
func ev_key_13():
	if (((GM.keyboard_string == "s64iron"))):
		for _w2 in GM.with_list((117.0), self):
			if _w2._dead:
				continue
			_w2.other = self
			_w2.sprite_index = 159.0
			_w2.image_speed = 1.0
		for _w3 in GM.with_list((30.0), self):
			if _w3._dead:
				continue
			_w3.other = self
			(GM.f_instance_change(_w3, 129.0, 0.0))
		for _w4 in GM.with_list((82.0), self):
			if _w4._dead:
				continue
			_w4.other = self
			(GM.f_instance_change(_w4, 129.0, 0.0))
	if (((GM.keyboard_string == "s64powerup"))):
		for _w5 in GM.with_list((30.0), self):
			if _w5._dead:
				continue
			_w5.other = self
			(GM.f_instance_change(_w5, 117.0, 0.0))
		for _w6 in GM.with_list((82.0), self):
			if _w6._dead:
				continue
			_w6.other = self
			(GM.f_instance_change(_w6, 117.0, 0.0))
		for _w7 in GM.with_list((129.0), self):
			if _w7._dead:
				continue
			_w7.other = self
			(GM.f_instance_change(_w7, 117.0, 0.0))
		for _w8 in GM.with_list((117.0), self):
			if _w8._dead:
				continue
			_w8.other = self
			_w8.sprite_index = 159.0
			_w8.image_speed = 1.0
	if (((GM.keyboard_string == "s64popper"))):
		(GM.f_instance_create(0.0, 0.0, 169.0))
		(GM.f_instance_create(0.0, 0.0, 169.0))
		(GM.f_instance_create(0.0, 0.0, 169.0))
		(GM.f_instance_create(0.0, 0.0, 169.0))
	if (((GM.keyboard_string == "s64cannon"))):
		(GM.f_instance_create(520.0, 520.0, 136.0))
		(GM.f_instance_create(480.0, 520.0, 136.0))
		(GM.f_instance_create(440.0, 520.0, 136.0))
		(GM.f_instance_create(400.0, 520.0, 136.0))
		(GM.f_instance_create(360.0, 520.0, 136.0))
		(GM.f_instance_create(320.0, 520.0, 136.0))
		(GM.f_instance_create(280.0, 520.0, 136.0))
		(GM.f_instance_create(240.0, 520.0, 136.0))
		(GM.f_instance_create(200.0, 520.0, 136.0))
		(GM.f_instance_create(160.0, 520.0, 136.0))
		(GM.f_instance_create(120.0, 520.0, 136.0))
		(GM.f_instance_create(80.0, 520.0, 136.0))
		(GM.f_instance_create(40.0, 520.0, 136.0))
	if (((GM.keyboard_string == "s64god"))):
		for _r9 in range(int((50.0))):
			(GM.f_instance_create(0.0, 0.0, 132.0))
	GM.keyboard_string = ""
func ev_other_4():
	if (((GM.G["missils"] < 251.0))):
		GM.background_index[int(0.0)] = v_back2
	else:
		GM.background_index[int(0.0)] = v_back1
func ev_draw():
	(GM.f_action_draw_font("System", 10.0, 1.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	if (((absf(v_hat - 1.0) < 0.00001))):
		(GM.f_draw_text(40.0, 540.0, GM.add(GM.keyboard_string, "|")))
	(GM.f_action_draw_font("System", 10.0, 1.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text(40.0, 20.0, ("high score: " + (GM.f_string((GM.f_highscore_value(1.0)))))))
	(GM.f_draw_text(40.0, 40.0, ("" + (GM.f_string((GM.f_highscore_name(1.0)))))))
	(GM.f_draw_text(40.0, 60.0, ("score: " + (GM.f_string(GM.score)))))
	(GM.f_draw_text(40.0, 80.0, ("dice sides: " + (GM.f_string(GM.G["missils"])))))
	(GM.f_draw_text(40.0, 100.0, ("bonus: " + (GM.f_string(GM.G["cool"])))))
	(GM.f_draw_text(40.0, 120.0, ("free blocks: " + (GM.f_string(GM.G["cool2"])))))
	(GM.f_draw_text(40.0, 140.0, ("(1) bombs: " + (GM.f_string(GM.G["boom"])))))
	(GM.f_draw_text(40.0, 160.0, ("(2) zappers: " + (GM.f_string(GM.G["mega"])))))
	(GM.f_draw_text(40.0, 180.0, ("(3) mines: " + (GM.f_string(GM.G["brines"])))))
	if (((absf((GM.f_instance_number(3.0)) - 1.0) < 0.00001))):
		(GM.f_draw_set_color(16711680.0))
		(GM.f_draw_line((GM.vb(3.0, "x") + 32.0), (GM.vb(3.0, "y") + 32.0), GM.mouse_x, GM.mouse_y))
