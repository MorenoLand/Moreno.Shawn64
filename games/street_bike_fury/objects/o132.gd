extends "res://games/street_bike_fury/objects/o127.gd"
func ev_stepend():
	x = ((GM.view_xview[0] + (GM.view_wview[0] / 2.0)) - (sprite_width / 2.0))
	y = (GM.view_yview[0] + 400.0)
func ev_step():
	if (((((GM.mouse_x > (GM.view_xview[0] + 275.0)) and (GM.mouse_x < (GM.view_xview[0] + 525.0))) and (GM.mouse_y > (GM.view_yview[0] + 400.0))) and (GM.mouse_y < (GM.view_yview[0] + 446.0)))):
		if ((absf(v_psound - 1.0) < 0.00001)):
			(GM.f_sound_play(35.0))
			v_psound = 0.0
		v_set = 0.3
		v_mouseonme = 1.0
	else:
		v_set = 1.0
		v_psound = 1.0
		v_mouseonme = 0.0
func ev_mouse_53():
	if ((GM.eq(v_set, 0.3))):
		(GM.f_game_end())
func ev_draw():
	(GM.f_draw_sprite_ext(113.0, 0.0, ((GM.view_xview[0] + (GM.view_wview[0] / 2.0)) - (sprite_width / 2.0)), (GM.view_yview[0] + 400.0), 1.0, 1.0, 0.0, 16777215.0, v_set))
	(GM.f_draw_sprite(31.0, 0.0, GM.mouse_x, GM.mouse_y))
