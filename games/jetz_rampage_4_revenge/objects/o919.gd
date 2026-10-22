extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_targethit = 0.0
func ev_create():
	v_targethit = 0.0
func ev_step():
	if ((v_targethit > 7.0)):
		GM.G["j4var11"] = GM.G["j4var11"] + 100.0
		(GM.f_sound_play(224.0))
		for _w543 in GM.with_list((796.0), self):
			if _w543._dead:
				continue
			_w543.other = self
			(GM.f_instance_destroy(_w543))
		for _w544 in GM.with_list((918.0), self):
			if _w544._dead:
				continue
			_w544.other = self
			(GM.f_instance_create(_w544.x, _w544.y, 1063.0))
			(GM.f_instance_destroy(_w544))
		for _w545 in GM.with_list((680.0), self):
			if _w545._dead:
				continue
			_w545.other = self
			_w545.ev_user(0.0)
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 36.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	GM.font_align = 1.0
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 550.0), (("Target Hit: " + (GM.f_string(v_targethit))) + "/8")))
