extends "res://games/mini_golf_pro/scripts.gd"
var v_fanstand = 0.0
func ev_draw():
	(GM.f_draw_sprite_ext(v_fanstand, 1.0, x, ((y + sprite_height) - 40.0), 1.0, 1.0, 0.0, 16777215.0, 0.1))
	(GM.f_draw_sprite_ext(v_fanstand, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 1.0))
