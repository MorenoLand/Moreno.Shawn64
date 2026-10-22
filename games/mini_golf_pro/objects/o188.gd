extends "res://games/mini_golf_pro/scripts.gd"
var v_wee = 0.0
func ev_create():
	v_wee = 0.0
func ev_step():
	v_wee = GM.add(v_wee, 0.005)
	if ((v_wee > 1.0)):
		self.ev_user(0.0)
func ev_other_10():
	(GM.f_room_goto_next())
func ev_draw():
	(GM.f_draw_set_alpha(v_wee))
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_rectangle(0.0, 0.0, GM.room_width, GM.room_height, 0.0))
	(GM.f_draw_set_alpha(1.0))
