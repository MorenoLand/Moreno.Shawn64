extends "res://games/net_racer/scripts.gd"
var v_layone = 0.0
var v_steps = 0.0
func ev_create():
	if (((absf(GM.G["master"] - 0.0) < 0.00001))):
		(GM.f_instance_destroy(self))
	if (((absf(GM.G["master"] - 1.0) < 0.00001))):
		alarm[int(0.0)] = 2.0
		v_steps = 312.0
		v_layone = 0.0
		alarm[int(1.0)] = 3.0
func ev_alarm_1():
	v_layone = 1.0
func ev_alarm_0():
	if (((v_steps > 0.0))):
		x = x + 0.0
		y = y + (-32.0)
		if (((absf(v_layone - 1.0) < 0.00001))):
			if ((((GM.f_random(2.0)) < 1.0))):
				(GM.f_instance_create((x + 0.0), (y + 0.0), 53.0))
				(GM.f_instance_create((x + GM.G["shoosh"]), (y + 0.0), 53.0))
				(GM.f_mplay_message_send(0.0, 66.0, x))
				(GM.f_mplay_message_send(0.0, 67.0, y))
				(GM.f_mplay_message_send(0.0, 68.0, 0.0))
				v_layone = 0.0
				alarm[int(1.0)] = 3.0
		v_steps = v_steps - 1.0
		alarm[int(0.0)] = 2.0
