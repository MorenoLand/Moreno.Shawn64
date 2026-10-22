extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	(GM.f_sound_stop(10.0))
	(GM.f_sound_stop(192.0))
	(GM.f_sound_stop(189.0))
	(GM.f_sound_stop(190.0))
	(GM.f_sound_stop(182.0))
	(GM.f_sound_loop(85.0))
func ev_step():
	if (not ((((GM.f_sound_isplaying(85.0)))) >= 0.5)):
		(GM.f_room_goto(31.0))
func ev_other_4():
	(GM.f_game_save("jrs.sav"))
func ev_draw():
	(GM.f_draw_set_color(65535.0))
	(GM.f_draw_rectangle(0.0, 580.0, 800.0, 600.0, (1.0 if not (((0.0)) >= 0.5) else 0.0)))
	(GM.f_action_draw_font("Courier", 12.0, 0.0, 0.0))
	(GM.f_draw_set_color(32896.0))
	GM.font_align = 1.0
	(GM.f_draw_text(400.0, 580.0, "Shawn64's Creations 2003"))
