extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_targethit = 0.0
func ev_create():
	v_targethit = 0.0
func ev_step():
	if ((v_targethit > 5.0)):
		GM.G["j4var11"] = GM.G["j4var11"] + 100.0
		(GM.f_sound_play(224.0))
		for _w462 in GM.with_list((796.0), self):
			if _w462._dead:
				continue
			_w462.other = self
			(GM.f_instance_destroy(_w462))
		for _w463 in GM.with_list((680.0), self):
			if _w463._dead:
				continue
			_w463.other = self
			(GM.f_instance_destroy(_w463))
		for _w464 in GM.with_list((669.0), self):
			if _w464._dead:
				continue
			_w464.other = self
			(GM.f_instance_create(_w464.x, _w464.y, 798.0))
		for _w465 in GM.with_list((669.0), self):
			if _w465._dead:
				continue
			_w465.other = self
			(GM.f_instance_destroy(_w465))
		for _w466 in GM.with_list((800.0), self):
			if _w466._dead:
				continue
			_w466.other = self
			(GM.f_instance_destroy(_w466))
		for _w467 in GM.with_list((801.0), self):
			if _w467._dead:
				continue
			_w467.other = self
			(GM.f_instance_destroy(_w467))
		for _w468 in GM.with_list((794.0), self):
			if _w468._dead:
				continue
			_w468.other = self
			(GM.f_instance_destroy(_w468))
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 36.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	GM.font_align = 1.0
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 550.0), (("Target Hit: " + (GM.f_string(v_targethit))) + "/6")))
