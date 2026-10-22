extends "res://games/jetzfusion/objects/o425.gd"
func ev_create():
	v_grinded = 0.0
func ev_step():
	if (((v_grinded > 3.0))):
		for _w671 in GM.with_list((419.0), self):
			if _w671._dead:
				continue
			_w671.other = self
			(GM.f_instance_create(800.0, 91.0, 420.0))
		for _w672 in GM.with_list((419.0), self):
			if _w672._dead:
				continue
			_w672.other = self
			(GM.f_instance_destroy(_w672))
		(GM.f_sound_play(48.0))
		v_money = v_money + 100.0
		for _w673 in GM.with_list((170.0), self):
			if _w673._dead:
				continue
			_w673.other = self
			(GM.f_instance_destroy(_w673))
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Dot-Matrix", 22.0, 0.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), 160.0, (("People: " + (GM.f_string(v_grinded))) + "/4")))
