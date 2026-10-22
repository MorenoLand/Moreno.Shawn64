extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_have1 = 0.0
var v_have2 = 0.0
var v_have3 = 0.0
var v_have4 = 0.0
var v_have5 = 0.0
var v_have6 = 0.0
var v_have7 = 0.0
func ev_create():
	v_have1 = 0.0
	v_have2 = 0.0
	v_have3 = 0.0
	v_have4 = 0.0
	v_have5 = 0.0
	v_have6 = 0.0
	v_have7 = 0.0
func ev_step():
	if ((((((((absf(v_have1 - 1.0) < 0.00001) and (absf(v_have2 - 1.0) < 0.00001)) and (absf(v_have3 - 1.0) < 0.00001)) and (absf(v_have4 - 1.0) < 0.00001)) and (absf(v_have5 - 1.0) < 0.00001)) and (absf(v_have6 - 1.0) < 0.00001)) and (absf(v_have7 - 1.0) < 0.00001))):
		if ((absf((GM.f_instance_number(1096.0)) - 1.0) < 0.00001)):
			GM.G["j4var11"] = GM.G["j4var11"] + 400.0
			(GM.f_sound_play(224.0))
			for _w763 in GM.with_list((1096.0), self):
				if _w763._dead:
					continue
				_w763.other = self
				(GM.f_instance_destroy(_w763))
			for _w764 in GM.with_list((680.0), self):
				if _w764._dead:
					continue
				_w764.other = self
				_w764.ev_user(0.0)
			(GM.f_instance_destroy(self))
		if ((absf((GM.f_instance_number(1095.0)) - 1.0) < 0.00001)):
			GM.G["j4var11"] = GM.G["j4var11"] + 300.0
			(GM.f_sound_play(224.0))
			for _w765 in GM.with_list((1095.0), self):
				if _w765._dead:
					continue
				_w765.other = self
				(GM.f_instance_create(_w765.x, _w765.y, 1096.0))
				(GM.f_instance_destroy(_w765))
			for _w766 in GM.with_list((680.0), self):
				if _w766._dead:
					continue
				_w766.other = self
				_w766.ev_user(0.0)
			(GM.f_instance_destroy(self))
func ev_draw():
	if ((absf(v_have1 - 1.0) < 0.00001)):
		(GM.f_draw_sprite(1029.0, 0.0, (GM.view_xview[0] + 190.0), (GM.view_yview[0] + 510.0)))
	if ((absf(v_have2 - 1.0) < 0.00001)):
		(GM.f_draw_sprite(1029.0, 1.0, (GM.view_xview[0] + 250.0), (GM.view_yview[0] + 510.0)))
	if ((absf(v_have3 - 1.0) < 0.00001)):
		(GM.f_draw_sprite(1029.0, 2.0, (GM.view_xview[0] + 310.0), (GM.view_yview[0] + 510.0)))
	if ((absf(v_have4 - 1.0) < 0.00001)):
		(GM.f_draw_sprite(1029.0, 3.0, (GM.view_xview[0] + 370.0), (GM.view_yview[0] + 510.0)))
	if ((absf(v_have5 - 1.0) < 0.00001)):
		(GM.f_draw_sprite(1029.0, 4.0, (GM.view_xview[0] + 430.0), (GM.view_yview[0] + 510.0)))
	if ((absf(v_have6 - 1.0) < 0.00001)):
		(GM.f_draw_sprite(1029.0, 5.0, (GM.view_xview[0] + 490.0), (GM.view_yview[0] + 510.0)))
	if ((absf(v_have7 - 1.0) < 0.00001)):
		(GM.f_draw_sprite(1029.0, 6.0, (GM.view_xview[0] + 550.0), (GM.view_yview[0] + 510.0)))
