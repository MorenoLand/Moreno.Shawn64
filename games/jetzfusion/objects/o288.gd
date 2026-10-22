extends "res://games/jetzfusion/scripts.gd"
var v_noobstokill = 0.0
var v_view_left = 0.0
var v_view_width = 0.0
var v_xxx = 0.0
func ev_create():
	v_noobstokill = 0.0
func ev_step():
	if ((((GM.f_instance_number(295.0)) < 30.0))):
		while true:
			v_xxx = (GM.f_random(GM.room_width))
			if (((v_xxx < (GM.aget(v_view_left, 0.0) - 40.0)) or (v_xxx > GM.add(GM.aget(v_view_left, 0.0), GM.aget(v_view_width, 0.0))))):
				break
		(GM.f_instance_create(v_xxx, 480.0, 295.0))
	if (not ((((GM.f_sound_isplaying(60.0)))) >= 0.5)):
		if ((((GM.f_random(15.0)) < 1.0))):
			(GM.f_sound_play(60.0))
	if (((v_noobstokill > 59.0))):
		(self.script_missionscript2(0.0, 0.0, 0.0, 0.0, 0.0))
		for _w393 in GM.with_list((7.0), self):
			if _w393._dead:
				continue
			_w393.other = self
			(GM.f_instance_create((_w393.x + 0.0), (_w393.y + (-40.0)), 248.0))
		for _w394 in GM.with_list((286.0), self):
			if _w394._dead:
				continue
			_w394.other = self
			(GM.f_instance_destroy(_w394))
		GM.G["money"] = GM.G["money"] + 400.0
		for _w395 in GM.with_list((295.0), self):
			if _w395._dead:
				continue
			_w395.other = self
			(GM.f_instance_destroy(_w395))
		(GM.f_sound_play(48.0))
		for _w396 in GM.with_list((170.0), self):
			if _w396._dead:
				continue
			_w396.other = self
			(GM.f_instance_destroy(_w396))
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Dot-Matrix", 22.0, 0.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), 160.0, (("NOOBS: " + (GM.f_string(v_noobstokill))) + "/60")))
