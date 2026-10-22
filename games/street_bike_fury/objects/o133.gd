extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	alarm[int(1.0)] = (40.0 + (GM.f_random(40.0)))
	GM.G["makewaternow"] = 10.0
	GM.G["levelmin"] = 0.0
	GM.G["levelrange"] = 0.0
	(GM.f_sound_global_volume(0.94))
	if not ((((GM.f_registry_exists("omlet_score1")))) >= 0.5):
		(GM.f_registry_write_real("omlet_score1", 999.0))
	GM.G["highscore"] = (GM.f_registry_read_real("omlet_score1"))
	GM.G["music"] = 1.0
	GM.G["newbike"] = 0.0
	if (((GM.f_registry_exists("omlet_newbike")))) >= 0.5:
		GM.G["newbike"] = 1.0
func ev_step():
	(GM.f_instance_create(0.0, 0.0, 213.0))
	x = (GM.view_xview[0] + 200.0)
	y = (GM.view_yview[0] + 200.0)
func ev_draw():
	(GM.f_draw_set_alpha(0.6))
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_rectangle(GM.view_xview[0], GM.view_yview[0], (GM.view_xview[0] + GM.view_wview[0]), (GM.view_yview[0] + GM.view_hview[0]), 0.0))
	(GM.f_draw_set_alpha(1.0))
	(GM.f_draw_sprite(211.0, 0.0, GM.view_xview[0], GM.view_yview[0]))
	(GM.f_draw_sprite(212.0, 0.0, GM.view_xview[0], ((GM.view_yview[0] + GM.view_hview[0]) - 32.0)))
func ev_keypress_77():
	(GM.f_sound_play(16.0))
	if ((absf(GM.G["music"] - 1.0) < 0.00001)):
		GM.G["music"] = 0.0
		(GM.f_sound_stop(33.0))
	else:
		if ((absf(GM.G["music"] - 0.0) < 0.00001)):
			GM.G["music"] = 1.0
			(GM.f_sound_loop(33.0))
func ev_keypress_27():
	if (((absf((GM.f_instance_number(301.0)) - 0.0) < 0.00001))):
		if ((((await GM.f_show_question("Are you sure you want to Quit?"))))) >= 0.5:
			if ((absf((GM.f_instance_number(301.0)) - 0.0) < 0.00001)):
				if ((absf(GM.room - 38.0) < 0.00001)):
					(GM.f_game_end())
				else:
					(GM.f_room_goto(38.0))
