extends "res://games/jetzfusion/scripts.gd"
var v_bricker = 0.0
func ev_create():
	v_bricker = 0.0
func ev_step():
	if (((v_bricker > 4.0))):
		for _w467 in GM.with_list((326.0), self):
			if _w467._dead:
				continue
			_w467.other = self
			(GM.f_instance_create((_w467.x + 0.0), (_w467.y + 0.0), 327.0))
		for _w468 in GM.with_list((326.0), self):
			if _w468._dead:
				continue
			_w468.other = self
			(GM.f_instance_destroy(_w468))
		GM.G["money"] = GM.G["money"] + 300.0
		(GM.f_sound_play(48.0))
		for _w469 in GM.with_list((170.0), self):
			if _w469._dead:
				continue
			_w469.other = self
			(GM.f_instance_destroy(_w469))
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Dot-Matrix", 22.0, 0.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), 160.0, (("Skulls: " + (GM.f_string(v_bricker))) + "/5")))
