extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	(self.script_effectss())
	alarm[int(0.0)] = 2.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_set_alpha(0.3))
	(GM.f_draw_set_color(65535.0))
	(GM.f_draw_rectangle(0.0, 0.0, GM.room_width, GM.room_height, 0.0))
