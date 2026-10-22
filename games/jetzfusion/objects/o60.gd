extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 61.0))
	(GM.f_sound_play(30.0))
	direction = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0))))
	speed = 30.0
	alarm[int(0.0)] = 25.0
func ev_alarm_0():
	for _w53 in GM.with_list((62.0), self):
		if _w53._dead:
			continue
		_w53.other = self
		(GM.f_instance_destroy(_w53))
	for _w54 in GM.with_list((61.0), self):
		if _w54._dead:
			continue
		_w54.other = self
		(GM.f_instance_destroy(_w54))
	(GM.f_instance_destroy(self))
func ev_step():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 62.0))
func ev_draw():
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_line(x, y, GM.vb(61.0, "x"), GM.vb(61.0, "y")))
