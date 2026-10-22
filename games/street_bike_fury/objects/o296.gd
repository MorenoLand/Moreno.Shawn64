extends "res://games/street_bike_fury/objects/o127.gd"
func ev_stepend():
	x = ((GM.view_xview[0] + GM.view_wview[0]) - 105.0)
	y = ((GM.view_yview[0] + GM.view_hview[0]) - 100.0)
func ev_step():
	if (((GM.mouse_x > ((GM.view_xview[0] + GM.view_wview[0]) - 105.0)) and (GM.mouse_y > ((GM.view_yview[0] + GM.view_hview[0]) - 100.0)))):
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
		(GM.f_sound_play(16.0))
		if ((((await GM.f_show_question("Would you like to show your support by donating to S64 Games?"))))) >= 0.5:
			(GM.f_execute_shell("http://s64games.com/donate.php", ""))
func ev_draw():
	(GM.f_draw_sprite_ext(132.0, 0.0, ((GM.view_xview[0] + GM.view_wview[0]) - 105.0), ((GM.view_yview[0] + GM.view_hview[0]) - 100.0), 1.0, 1.0, 0.0, 16777215.0, v_set))
