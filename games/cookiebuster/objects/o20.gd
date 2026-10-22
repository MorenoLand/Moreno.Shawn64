extends "res://games/cookiebuster/scripts.gd"
var v_pacc = 0.0
func ev_create():
	v_pacc = 0.0
	direction = 0.0
	alarm[int(0.0)] = 2.0
func ev_alarm_3():
	v_pacc = 0.0
	alarm[int(0.0)] = 2.0
func ev_alarm_2():
	v_pacc = 1.0
	alarm[int(3.0)] = 2.0
func ev_alarm_1():
	v_pacc = 2.0
	alarm[int(2.0)] = 2.0
func ev_alarm_0():
	v_pacc = 1.0
	alarm[int(1.0)] = 2.0
func ev_step():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 1.0))
	if (((absf((GM.f_instance_number(0.0)) - 1.0) < 0.00001))):
		direction = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)), (GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0))))
func ev_other_1():
	(self.script_outsidebounce(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	if (((absf(v_pacc - 0.0) < 0.00001))):
		(GM.f_draw_sprite(25.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
	if (((absf(v_pacc - 1.0) < 0.00001))):
		(GM.f_draw_sprite(26.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
	if (((absf(v_pacc - 2.0) < 0.00001))):
		(GM.f_draw_sprite(27.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
