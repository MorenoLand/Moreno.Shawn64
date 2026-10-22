extends "res://games/bubblegum/scripts.gd"
var v_drop = 0.0
func ev_create():
	v_drop = 1.0
	(GM.f_action_move(self, "000001000", 4.0, 0.0))
func ev_alarm_0():
	v_drop = 1.0
func ev_step():
	if (((absf(v_drop - 1.0) < 0.00001))):
		if (((absf((GM.f_instance_number(24.0)) - 1.0) < 0.00001))):
			if (((GM.vb(24.0, "x") > (x - 16.0)))):
				if (((GM.vb(24.0, "x") < (x + 16.0)))):
					(GM.f_instance_create((x + 0.0), (y + 0.0), 74.0))
					v_drop = 0.0
					alarm[int(0.0)] = 20.0
				else:
					if (((absf((GM.f_instance_number(0.0)) - 1.0) < 0.00001))):
						if (((GM.vb(0.0, "x") > (x - 16.0)))):
							if (((GM.vb(0.0, "x") < (x + 16.0)))):
								(GM.f_instance_create((x + 0.0), (y + 0.0), 74.0))
								v_drop = 0.0
								alarm[int(0.0)] = 20.0
func ev_col_9():
	hspeed = (-hspeed)
