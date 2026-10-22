extends "res://games/mini_golf_pro/scripts.gd"
var v_wee = 0.0
func ev_create():
	(self.script_effectss())
	v_wee = 0.0
func ev_step():
	if ((v_wee <= 0.5)):
		v_wee = GM.add(v_wee, 0.03)
	else:
		v_wee = 0.3
func ev_draw():
	(GM.f_draw_set_blend_mode(1.0))
	(GM.f_draw_sprite_ext(76.0, 0.0, x, y, 1.0, 1.0, 0.0, 32768.0, v_wee))
	(GM.f_draw_set_blend_mode(0.0))
