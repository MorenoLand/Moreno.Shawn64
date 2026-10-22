extends "res://games/jetzfusion/scripts.gd"
var v_bricker = 0.0
var v_wee = 0.0
func ev_create():
	v_wee = 1.0
	v_bricker = 0.0
func ev_alarm_0():
	v_wee = 1.0
func ev_step():
	if (((v_bricker > 7.0))):
		for _w420 in GM.with_list((303.0), self):
			if _w420._dead:
				continue
			_w420.other = self
			(GM.f_instance_create((_w420.x + 0.0), (_w420.y + 0.0), 326.0))
		(GM.f_instance_create(0.0, 0.0, 10.0))
		for _w421 in GM.with_list((300.0), self):
			if _w421._dead:
				continue
			_w421.other = self
			(GM.f_instance_destroy(_w421))
		for _w422 in GM.with_list((303.0), self):
			if _w422._dead:
				continue
			_w422.other = self
			(GM.f_instance_destroy(_w422))
		GM.G["money"] = GM.G["money"] + 200.0
		(GM.f_sound_play(48.0))
		for _w423 in GM.with_list((170.0), self):
			if _w423._dead:
				continue
			_w423.other = self
			(GM.f_instance_destroy(_w423))
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
	(GM.f_draw_text((GM.view_xview[0] + 400.0), 160.0, (("People: " + (GM.f_string(v_bricker))) + "/8")))
