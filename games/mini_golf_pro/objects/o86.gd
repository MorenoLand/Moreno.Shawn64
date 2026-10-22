extends "res://games/mini_golf_pro/scripts.gd"
var v_wow = 0.0
func ev_create():
	if ((absf(GM.G["effects"] - 0.0) < 0.00001)):
		(GM.f_instance_destroy(self))
		return
	(GM.f_sound_loop(11.0))
func ev_step():
	v_wow = (GM.f_floor((GM.f_random(20.999))))
	if ((v_wow < 5.0)):
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 107.0))
	if ((absf(v_wow - 6.0) < 0.00001)):
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 106.0))
func ev_draw():
	(GM.f_draw_set_alpha(0.6))
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_rectangle(0.0, 0.0, GM.room_width, GM.room_height, 0.0))
