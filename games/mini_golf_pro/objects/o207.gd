extends "res://games/mini_golf_pro/scripts.gd"
var v_wee = 0.0
func ev_create():
	(self.script_effectss())
	v_wee = 1.0
func ev_step():
	v_wee = v_wee - 0.05
	if ((v_wee < 0.0)):
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_set_blend_mode(1.0))
	(GM.f_draw_sprite_ext(55.0, 0.0, x, y, 1.0, 1.0, 0.0, 255.0, v_wee))
	(GM.f_draw_set_blend_mode(0.0))
