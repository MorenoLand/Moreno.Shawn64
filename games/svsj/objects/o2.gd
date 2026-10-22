extends "res://games/svsj/scripts.gd"
var v_drawwinner = 0.0
var v_p1win = 0.0
var v_p2win = 0.0
var v_tie = 0.0
var v_time = 0.0
func ev_create():
	(GM.f_sound_loop(15.0))
	GM.G["p1score"] = 0.0
	GM.G["p2score"] = 0.0
	v_time = ((60.0 * 3.0) * 30.0)
	v_drawwinner = 0.0
	v_p1win = 0.0
	v_p2win = 0.0
	v_tie = 0.0
func ev_step():
	if ((((GM.f_random(50.0)) < 1.0))):
		(GM.f_sound_play(9.0))
		(GM.f_instance_create((GM.f_random((GM.room_width - 60.0))), (-60.0), 3.0))
	if (((absf((GM.f_instance_number(3.0)) - 0.0) < 0.00001))):
		(GM.f_sound_play(9.0))
		(GM.f_instance_create((GM.f_random((GM.room_width - 60.0))), (-60.0), 3.0))
	if ((absf(v_drawwinner - 0.0) < 0.00001)):
		v_time = v_time - 1.0
	else:
		v_time = 0.0
	if ((v_time < 0.0)):
		v_drawwinner = 1.0
		if ((GM.G["p1score"] > GM.G["p2score"])):
			self.ev_user(0.0)
			v_p1win = 1.0
		if ((GM.G["p2score"] > GM.G["p1score"])):
			self.ev_user(1.0)
			v_p2win = 1.0
		if ((absf(GM.G["p2score"] - GM.G["p1score"]) < 0.00001)):
			self.ev_user(2.0)
			v_tie = 1.0
func ev_other_12():
	(GM.f_instance_create((-1000.0), 352.0, 13.0))
	(GM.f_instance_create(272.0, (-1000.0), 14.0))
	for _w1 in GM.with_list((1.0), self):
		if _w1._dead:
			continue
		_w1.other = self
		(GM.f_instance_destroy(_w1))
	for _w2 in GM.with_list((15.0), self):
		if _w2._dead:
			continue
		_w2.other = self
		(GM.f_instance_destroy(_w2))
	for _w3 in GM.with_list((0.0), self):
		if _w3._dead:
			continue
		_w3.other = self
		(GM.f_instance_destroy(_w3))
func ev_other_11():
	(GM.f_instance_create(272.0, 352.0, 14.0))
	for _w4 in GM.with_list((1.0), self):
		if _w4._dead:
			continue
		_w4.other = self
		(GM.f_instance_destroy(_w4))
	for _w5 in GM.with_list((15.0), self):
		if _w5._dead:
			continue
		_w5.other = self
		(GM.f_instance_destroy(_w5))
	for _w6 in GM.with_list((0.0), self):
		if _w6._dead:
			continue
		_w6.other = self
		(GM.f_instance_destroy(_w6))
func ev_other_10():
	(GM.f_instance_create(272.0, 352.0, 13.0))
	for _w7 in GM.with_list((0.0), self):
		if _w7._dead:
			continue
		_w7.other = self
		(GM.f_instance_destroy(_w7))
	for _w8 in GM.with_list((15.0), self):
		if _w8._dead:
			continue
		_w8.other = self
		(GM.f_instance_destroy(_w8))
	for _w9 in GM.with_list((1.0), self):
		if _w9._dead:
			continue
		_w9.other = self
		(GM.f_instance_destroy(_w9))
func ev_draw():
	GM.font_align = 1.0
	(GM.f_action_draw_font("Arial", 20.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text(100.0, 22.0, ("" + (GM.f_string(GM.G["p1score"])))))
	(GM.f_draw_text(540.0, 22.0, ("" + (GM.f_string(GM.G["p2score"])))))
	GM.font_align = 0.0
	(GM.f_draw_text(280.0, 22.0, ("" + (GM.f_string((v_time / 30.0))))))
	(GM.f_action_draw_font("Arial", 28.0, 0.0, 0.0))
	(GM.f_draw_set_color(65535.0))
	if (((absf(v_drawwinner - 1.0) < 0.00001))):
		GM.font_align = 1.0
		if ((absf(v_p1win - 1.0) < 0.00001)):
			(GM.f_draw_text((GM.room_width / 2.0), (GM.room_height / 2.0), "Shawn Wins!!!"))
		if ((absf(v_p2win - 1.0) < 0.00001)):
			(GM.f_draw_text((GM.room_width / 2.0), (GM.room_height / 2.0), "Jerred Wins!!!"))
		if ((absf(v_tie - 1.0) < 0.00001)):
			(GM.f_draw_text((GM.room_width / 2.0), (GM.room_height / 2.0), "Its a tie..."))
