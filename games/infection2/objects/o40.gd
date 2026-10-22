extends "res://games/infection2/scripts.gd"
var v_spin = 0.0
var v_wee = 0.0
var v_zspeed = 0.0
func ev_create():
	v_spin = 4.0
	v_zspeed = 0.0
	v_wee = (GM.f_instance_create(x, y, 41.0))
	GM.vset(v_wee, "v_what", id)
func ev_step():
	v_spin = v_spin + v_zspeed
	if ((v_spin > 0.0)):
		v_zspeed = v_zspeed - 0.2
	if ((v_spin < 0.0)):
		v_zspeed = v_zspeed + 0.2
	if (((v_spin > 4.0) or (v_spin < (-4.0)))):
		v_zspeed = (v_zspeed / 1.01)
	if (((v_spin > 40.0) or (v_spin < (-40.0)))):
		v_zspeed = (v_zspeed / 3.0)
func ev_draw():
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_line(x, y, (x + (GM.f_lengthdir_x(80.0, (270.0 + v_spin)))), (y + (GM.f_lengthdir_y(80.0, (270.0 + v_spin))))))
	(GM.f_draw_sprite_ext(40.0, 0.0, ((x - 10.0) + (GM.f_lengthdir_x(155.0, (270.0 + v_spin)))), (y + (GM.f_lengthdir_y(155.0, (270.0 + v_spin)))), 1.0, 1.0, v_spin, 16777215.0, 1.0))
	(GM.f_draw_sprite_ext(40.0, 0.0, ((x + 10.0) + (GM.f_lengthdir_x(155.0, (270.0 + v_spin)))), (y + (GM.f_lengthdir_y(155.0, (270.0 + v_spin)))), 1.0, 1.0, v_spin, 16777215.0, 1.0))
