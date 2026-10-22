extends "res://games/missilewave3d/scripts.gd"
var v_reloads = 0.0
var v_shootnow = 0.0
func ev_create():
	v_shootnow = 1.0
	v_reloads = 0.0
	(GM.f_sound_play(16.0))
	alarm[int(1.0)] = 250.0
func ev_alarm_1():
	(GM.f_instance_destroy(self))
func ev_alarm_0():
	v_shootnow = 1.0
func ev_step():
	x = (GM.mouse_x - 43.0)
	y = (GM.mouse_y - 43.0)
func ev_mouse_0():
	if (((absf(v_shootnow - 1.0) < 0.00001))):
		for _r120 in range(int((5.0))):
			(GM.f_instance_create((GM.mouse_x - 25.0), (GM.mouse_y - 25.0), 80.0))
		(GM.f_instance_create((GM.mouse_x - 5.0), (GM.mouse_y - 5.0), 17.0))
		v_reloads = v_reloads + 1.0
		if (((v_reloads > 15.0))):
			(GM.f_sound_play(16.0))
			v_reloads = 0.0
		alarm[int(0.0)] = 3.0
		v_shootnow = 0.0
func ev_draw():
	(GM.f_draw_sprite(54.0, (-1.0), (x + 0.0), (y + 0.0)))
