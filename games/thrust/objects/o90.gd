extends "res://games/thrust/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 50.0
	(GM.f_sound_play(4.0))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	for _w26 in GM.with_list((89.0), self):
		if _w26._dead:
			continue
		_w26.other = self
		(GM.f_instance_create((_w26.x + 0.0), (_w26.y + 0.0), 88.0))
	for _w27 in GM.with_list((89.0), self):
		if _w27._dead:
			continue
		_w27.other = self
		(GM.f_instance_destroy(_w27))
	GM.font_align = 1.0
	(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 200.0), "Portal Is Open!"))
