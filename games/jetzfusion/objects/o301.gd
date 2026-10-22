extends "res://games/jetzfusion/scripts.gd"
var v_bricker = 0.0
var v_wee = 0.0
func ev_create():
	v_wee = 1.0
	v_bricker = 0.0
func ev_alarm_0():
	v_wee = 1.0
func ev_step():
	if (((v_bricker > 4.0))):
		(GM.f_instance_create(0.0, 0.0, 10.0))
		for _w410 in GM.with_list((300.0), self):
			if _w410._dead:
				continue
			_w410.other = self
			(GM.f_instance_destroy(_w410))
		for _w411 in GM.with_list((296.0), self):
			if _w411._dead:
				continue
			_w411.other = self
			(GM.f_instance_create((_w411.x + 0.0), (_w411.y + 0.0), 303.0))
		for _w412 in GM.with_list((296.0), self):
			if _w412._dead:
				continue
			_w412.other = self
			(GM.f_instance_destroy(_w412))
		GM.G["money"] = GM.G["money"] + 100.0
		(GM.f_sound_play(48.0))
		for _w413 in GM.with_list((170.0), self):
			if _w413._dead:
				continue
			_w413.other = self
			(GM.f_instance_destroy(_w413))
		(GM.f_instance_destroy(self))
func ev_key_17():
	if ((GM.eq(v_wee, 1.0))):
		(GM.f_instance_create((GM.vb(7.0, "x") + 17.0), (GM.vb(7.0, "y") + 20.0), 302.0))
		(GM.f_sound_play(19.0))
		alarm[int(0.0)] = 25.0
		v_wee = 0.0
func ev_draw():
	if ((GM.eq(v_wee, 1.0))):
		(GM.f_draw_sprite(280.0, 0.0, (GM.vb(7.0, "x") + 17.0), (GM.vb(7.0, "y") + 20.0)))
	(GM.f_action_draw_font("Dot-Matrix", 22.0, 0.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), 160.0, (("People: " + (GM.f_string(v_bricker))) + "/5")))
