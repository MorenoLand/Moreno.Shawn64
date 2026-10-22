extends "res://games/missilewave3d/scripts.gd"
var v_reloads = 0.0
func ev_create():
	v_reloads = 0.0
	(GM.f_sound_play(16.0))
func ev_step():
	x = (GM.mouse_x - 43.0)
	y = (GM.mouse_y - 43.0)
func ev_mouse_4():
	for _r119 in range(int((5.0))):
		(GM.f_instance_create((GM.mouse_x - 25.0), (GM.mouse_y - 25.0), 80.0))
	(GM.f_instance_create((GM.mouse_x - 5.0), (GM.mouse_y - 5.0), 17.0))
	v_reloads = v_reloads + 1.0
	if (((v_reloads > 15.0))):
		(GM.f_sound_play(16.0))
		v_reloads = 0.0
func ev_draw():
	(GM.f_draw_sprite(19.0, (-1.0), (x + 0.0), (y + 0.0)))
