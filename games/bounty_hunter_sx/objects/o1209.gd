extends "res://games/bounty_hunter_sx/scripts.gd"
var v_wee = 0.0
func ev_create():
	v_wee = 0.0
	(GM.f_sound_loop(327.0))
	alarm[int(0.0)] = 1.0
func ev_destroy():
	(GM.f_sound_stop(327.0))
func ev_alarm_0():
	v_wee = 1.0
func ev_step():
	if (not (((GM.G["fuel"] > 0.0)))):
		(GM.f_instance_destroy(self))
	if (((GM.G["ftank"] == "Fuel Tank 1"))):
		GM.G["fuel"] = GM.G["fuel"] + (-0.1)
	else:
		GM.G["fuel"] = GM.G["fuel"] + (-0.05)
func ev_draw():
	if (((absf((GM.f_instance_number(482.0)) - 1.0) < 0.00001))):
		(GM.f_draw_sprite(1144.0, (-1.0), GM.vb(482.0, "x"), GM.vb(482.0, "y")))
func ev_keypress_67():
	if (((absf(v_wee - 1.0) < 0.00001))):
		(GM.f_instance_destroy(self))
