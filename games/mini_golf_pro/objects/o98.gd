extends "res://games/mini_golf_pro/scripts.gd"
var v_implayer = 0.0
var v_wee = 0.0
func ev_create():
	vspeed = 3.0
	hspeed = 0.0
	depth = 7.1
func ev_draw():
	(GM.f_draw_set_color(41984.0))
	if ((absf(v_implayer - 1.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player1ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	if ((absf(v_implayer - 2.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player2ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	if ((absf(v_implayer - 3.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player3ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	if ((absf(v_implayer - 4.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player4ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	if ((absf(v_implayer - 5.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player5ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	(GM.f_draw_sprite_ext(61.0, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 1.0))
