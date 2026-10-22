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
	if ((((GM.f_random(2.0)) < 1.0))):
		direction = direction + 5.0
	else:
		direction = direction - 5.0
func ev_other_1():
	(self.script_outsidebounce(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	if (((absf(v_pacc - 0.0) < 0.00001))):
		(GM.f_draw_sprite(22.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
	if (((absf(v_pacc - 1.0) < 0.00001))):
		(GM.f_draw_sprite(23.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
	if (((absf(v_pacc - 2.0) < 0.00001))):
		(GM.f_draw_sprite(24.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
