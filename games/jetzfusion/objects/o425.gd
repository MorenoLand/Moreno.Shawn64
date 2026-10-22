extends "res://games/jetzfusion/scripts.gd"
var v_grinded = 0.0
var v_money = 0.0
func ev_create():
	v_grinded = 0.0
func ev_step():
	if (((v_grinded > 2.0))):
		for _w569 in GM.with_list((381.0), self):
			if _w569._dead:
				continue
			_w569.other = self
			(GM.f_instance_create((_w569.x + 0.0), (_w569.y + 0.0), 419.0))
		for _w570 in GM.with_list((381.0), self):
			if _w570._dead:
				continue
			_w570.other = self
			(GM.f_instance_destroy(_w570))
		(GM.f_sound_play(48.0))
		v_money = v_money + 100.0
		for _w571 in GM.with_list((170.0), self):
			if _w571._dead:
				continue
			_w571.other = self
			(GM.f_instance_destroy(_w571))
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Dot-Matrix", 22.0, 0.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), 160.0, (("People: " + (GM.f_string(v_grinded))) + "/3")))
