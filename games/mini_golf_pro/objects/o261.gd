extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	x = ((GM.room_width / 2.0) - (sprite_width / 2.0))
func ev_draw():
	(GM.f_draw_set_font(0.0))
	(GM.f_draw_set_halign(1.0))
	(GM.f_draw_set_color(51712.0))
	(GM.f_draw_sprite(167.0, 0.0, x, y))
	(GM.f_draw_set_halign(0.0))
	(GM.f_draw_text(15.0, 12.0, "Press ESC to return to Menu"))
func ev_keypress_27():
	(GM.f_room_goto(18.0))
