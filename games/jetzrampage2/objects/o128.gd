extends "res://games/jetzrampage2/scripts.gd"
var v_pow = 0.0
var v_shotready = 0.0
var v_wow = 0.0
func ev_create():
	v_pow = 0.0
	v_shotready = 1.0
	v_wow = 0.0
func ev_alarm_0():
	v_shotready = 1.0
func ev_step():
	x = (GM.vb(115.0, "x") + 15.0)
	y = (GM.vb(115.0, "y") + 15.0)
	v_wow = (GM.f_point_direction(x, y, GM.vb(0.0, "x"), GM.vb(0.0, "y")))
func ev_draw():
	(GM.f_draw_sprite(126.0, (v_wow / 10.0), (x + 0.0), (y + 0.0)))
