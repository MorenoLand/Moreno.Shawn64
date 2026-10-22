extends "res://games/jetzfusion/scripts.gd"
var v_gays = 0.0
func ev_create():
	v_gays = 25.0
func ev_step():
	if ((((GM.f_instance_number(323.0)) < 3.0))):
		if (((v_gays > 2.0))):
			(GM.f_instance_create((GM.view_xview[0] + (GM.f_random(800.0))), (-60.0), 323.0))
	if (((v_gays < 1.0))):
		for _w576 in GM.with_list((420.0), self):
			if _w576._dead:
				continue
			_w576.other = self
			(GM.f_instance_create((_w576.x + 0.0), (_w576.y + 0.0), 421.0))
		for _w577 in GM.with_list((420.0), self):
			if _w577._dead:
				continue
			_w577.other = self
			(GM.f_instance_destroy(_w577))
		(GM.f_sound_play(48.0))
		GM.G["money"] = GM.G["money"] + 300.0
		for _w578 in GM.with_list((170.0), self):
			if _w578._dead:
				continue
			_w578.other = self
			(GM.f_instance_destroy(_w578))
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Dot-Matrix", 22.0, 0.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), 160.0, ("FAGS: " + (GM.f_string(v_gays)))))
