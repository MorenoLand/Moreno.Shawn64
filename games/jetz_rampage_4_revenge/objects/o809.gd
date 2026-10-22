extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_counting = 0.0
func ev_create():
	v_counting = 0.0
func ev_step():
	if ((v_counting > 4.0)):
		if ((absf((GM.f_instance_number(814.0)) - 1.0) < 0.00001)):
			GM.G["j4var11"] = GM.G["j4var11"] + 200.0
			for _w483 in GM.with_list((790.0), self):
				if _w483._dead:
					continue
				_w483.other = self
				(GM.f_instance_destroy(_w483))
			for _w484 in GM.with_list((814.0), self):
				if _w484._dead:
					continue
				_w484.other = self
				(GM.f_instance_destroy(_w484))
		if ((absf((GM.f_instance_number(675.0)) - 1.0) < 0.00001)):
			GM.G["j4var11"] = GM.G["j4var11"] + 100.0
			for _w485 in GM.with_list((675.0), self):
				if _w485._dead:
					continue
				_w485.other = self
				(GM.f_instance_create(_w485.x, _w485.y, 814.0))
				(GM.f_instance_destroy(_w485))
		(GM.f_sound_play(224.0))
		for _w486 in GM.with_list((680.0), self):
			if _w486._dead:
				continue
			_w486.other = self
			_w486.ev_user(0.0)
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 36.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	GM.font_align = 1.0
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 550.0), (("Deliveries: " + (GM.f_string(v_counting))) + "/5")))
