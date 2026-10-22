extends "res://games/mini_golf_pro/scripts.gd"
func ev_other_4():
	if ((absf(GM.room - 38.0) < 0.00001)):
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite(175.0, 0.0, GM.view_xview[0], GM.view_yview[0]))
	(GM.f_draw_sprite(172.0, 0.0, GM.view_xview[0], (GM.view_yview[0] + 12.0)))
	(GM.f_draw_sprite(173.0, 0.0, (GM.view_xview[0] + 12.0), ((GM.view_yview[0] + 768.0) - 12.0)))
	(GM.f_draw_sprite(174.0, 0.0, ((GM.view_xview[0] + 1024.0) - 12.0), (GM.view_yview[0] + 12.0)))
