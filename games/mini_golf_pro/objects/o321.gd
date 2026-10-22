extends "res://games/mini_golf_pro/objects/o170.gd"
func ev_mouse_4():
	(GM.f_sound_play(16.0))
	(self.script_map_designer())
func ev_draw():
	if ((absf(v_mouseonme - 0.0) < 0.00001)):
		(GM.f_draw_sprite(212.0, 0.0, x, y))
	else:
		(GM.f_draw_sprite_ext(212.0, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 0.5))
