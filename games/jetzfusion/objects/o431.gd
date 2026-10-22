extends "res://games/jetzfusion/objects/o429.gd"
func ev_create():
	v_gays = 50.0
func ev_step():
	if ((((GM.f_instance_number(324.0)) < 3.0))):
		if (((v_gays > 2.0))):
			(GM.f_instance_create((GM.view_xview[0] + (GM.f_random(800.0))), (-60.0), 324.0))
	if (((v_gays < 1.0))):
		(self.script_missionscript3(0.0, 0.0, 0.0, 0.0, 0.0))
		for _w674 in GM.with_list((7.0), self):
			if _w674._dead:
				continue
			_w674.other = self
			(GM.f_instance_create((_w674.x + 0.0), (_w674.y + (-40.0)), 248.0))
		for _w675 in GM.with_list((421.0), self):
			if _w675._dead:
				continue
			_w675.other = self
			(GM.f_instance_destroy(_w675))
		(GM.f_sound_play(48.0))
		GM.G["money"] = GM.G["money"] + 400.0
		for _w676 in GM.with_list((170.0), self):
			if _w676._dead:
				continue
			_w676.other = self
			(GM.f_instance_destroy(_w676))
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Dot-Matrix", 22.0, 0.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), 160.0, ("FAGS: " + (GM.f_string(v_gays)))))
