extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_targethit = 0.0
func ev_create():
	v_targethit = 0.0
func ev_step():
	if (((GM.f_instance_number(1032.0)) > 0.0)):
		if ((v_targethit > 2.0)):
			GM.G["j4var11"] = GM.G["j4var11"] + 400.0
			(GM.f_sound_play(224.0))
			for _w700 in GM.with_list((796.0), self):
				if _w700._dead:
					continue
				_w700.other = self
				(GM.f_instance_destroy(_w700))
			for _w701 in GM.with_list((1032.0), self):
				if _w701._dead:
					continue
				_w701.other = self
				(GM.f_instance_destroy(_w701))
			for _w702 in GM.with_list((680.0), self):
				if _w702._dead:
					continue
				_w702.other = self
				_w702.ev_user(0.0)
			(GM.f_instance_destroy(self))
	if (((GM.f_instance_number(1029.0)) > 0.0)):
		if ((v_targethit > 0.0)):
			GM.G["j4var11"] = GM.G["j4var11"] + 300.0
			(GM.f_sound_play(224.0))
			for _w703 in GM.with_list((796.0), self):
				if _w703._dead:
					continue
				_w703.other = self
				(GM.f_instance_destroy(_w703))
			for _w704 in GM.with_list((1029.0), self):
				if _w704._dead:
					continue
				_w704.other = self
				(GM.f_instance_create(_w704.x, _w704.y, 1032.0))
				(GM.f_instance_destroy(_w704))
			for _w705 in GM.with_list((680.0), self):
				if _w705._dead:
					continue
				_w705.other = self
				_w705.ev_user(0.0)
			(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 36.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	GM.font_align = 1.0
	if ((((GM.f_instance_number(1029.0)) > 0.0))):
		(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 550.0), (("Target Hit: " + (GM.f_string(v_targethit))) + "/1")))
	if ((((GM.f_instance_number(1032.0)) > 0.0))):
		(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 550.0), (("Target Hit: " + (GM.f_string(v_targethit))) + "/3")))
