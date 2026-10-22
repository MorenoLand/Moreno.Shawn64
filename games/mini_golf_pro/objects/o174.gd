extends "res://games/mini_golf_pro/objects/o170.gd"
func ev_mouse_4():
	(GM.f_sound_stop(21.0))
	(GM.f_window_set_fullscreen(0.0))
	(GM.f_display_reset())
	(self.script_console_dll_refresh())
	(GM.f_room_goto(38.0))
func ev_draw():
	if ((absf(v_mouseonme - 0.0) < 0.00001)):
		(GM.f_draw_sprite(126.0, 0.0, x, y))
	else:
		(GM.f_draw_sprite_ext(126.0, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 0.5))
