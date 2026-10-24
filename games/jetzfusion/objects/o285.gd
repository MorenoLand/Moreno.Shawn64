extends "res://games/jetzfusion/scripts.gd"
var v_noobstokill = 0.0
var v_xxx = 0.0
func ev_create():
	v_noobstokill = 0.0
func ev_step():
	if ((((GM.f_instance_number(284.0)) < 30.0))):
		while true:
			v_xxx = (GM.f_random(GM.room_width))
			if (((v_xxx < (GM.view_xview[int(0.0)] - 40.0)) or (v_xxx > (GM.view_xview[int(0.0)] + GM.view_wview[int(0.0)])))):
				break
		(GM.f_instance_create(v_xxx, 480.0, 284.0))
	if (not ((((GM.f_sound_isplaying(60.0)))) >= 0.5)):
		if ((((GM.f_random(15.0)) < 1.0))):
			(GM.f_sound_play(60.0))
	if (((v_noobstokill > 39.0))):
		for _w387 in GM.with_list((282.0), self):
			if _w387._dead:
				continue
			_w387.other = self
			(GM.f_instance_create((_w387.x + 0.0), (_w387.y + 0.0), 286.0))
		for _w388 in GM.with_list((282.0), self):
			if _w388._dead:
				continue
			_w388.other = self
			(GM.f_instance_destroy(_w388))
		GM.G["money"] = GM.G["money"] + 300.0
		for _w389 in GM.with_list((284.0), self):
			if _w389._dead:
				continue
			_w389.other = self
			(GM.f_instance_destroy(_w389))
		(GM.f_sound_play(48.0))
		for _w390 in GM.with_list((170.0), self):
			if _w390._dead:
				continue
			_w390.other = self
			(GM.f_instance_destroy(_w390))
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Dot-Matrix", 22.0, 0.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), 160.0, (("NOOBS: " + (GM.f_string(v_noobstokill))) + "/40")))
