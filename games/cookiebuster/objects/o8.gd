extends "res://games/cookiebuster/scripts.gd"
var v_pacc = 0.0
var v_start = 0.0
var v_wow = 0.0
func ev_create():
	v_pacc = 0.0
	v_start = 0.0
	v_wow = (GM.f_round((GM.f_random(3.0))))
	if ((absf(v_wow - 0.0) < 0.00001)):
		direction = 45.0
	if ((absf(v_wow - 1.0) < 0.00001)):
		direction = 135.0
	if ((absf(v_wow - 2.0) < 0.00001)):
		direction = 225.0
	if ((absf(v_wow - 3.0) < 0.00001)):
		direction = 315.0
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
	if (((absf(v_start - 1.0) < 0.00001))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 1.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 9.0))
func ev_col_14():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_other_1():
	(self.script_outsidebounce(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	if (((absf(v_pacc - 0.0) < 0.00001))):
		(GM.f_draw_sprite(11.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
	if (((absf(v_pacc - 1.0) < 0.00001))):
		(GM.f_draw_sprite(28.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
	if (((absf(v_pacc - 2.0) < 0.00001))):
		(GM.f_draw_sprite(29.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
