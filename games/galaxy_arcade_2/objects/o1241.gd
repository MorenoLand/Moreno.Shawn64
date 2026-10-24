extends "res://games/galaxy_arcade_2/scripts.gd"
var v_snowscore = 0.0
func ev_create():
	v_snowscore = 0.0
	GM.health = 100.0
func ev_step():
	v_snowscore = v_snowscore + 1.0
	if (((GM.health < 1.0))):
		(GM.f_sound_play(126.0))
		if (((v_snowscore > GM.G["snows"]))):
			(GM.f_sound_play(131.0))
			GM.G["snows"] = v_snowscore
		(GM.f_sound_stop(359.0))
		(GM.f_sound_stop(358.0))
		(GM.f_room_goto(1.0))
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 20.0, 1.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text((20.0 + GM.view_xview[int(0.0)]), (20.0 + GM.view_yview[int(0.0)]), "score:"))
	(GM.f_draw_text((20.0 + GM.view_xview[int(0.0)]), (50.0 + GM.view_yview[int(0.0)]), (GM.f_string(v_snowscore))))
	(GM.f_draw_text((20.0 + GM.view_xview[int(0.0)]), (90.0 + GM.view_yview[int(0.0)]), "health:"))
	(GM.f_draw_text((20.0 + GM.view_xview[int(0.0)]), (120.0 + GM.view_yview[int(0.0)]), (GM.f_string(GM.health))))
