extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_reverse = 0.0
var v_wow = 0.0
func ev_create():
	v_wow = 5.0
	v_reverse = 0.0
func ev_step():
	direction = (GM.f_point_direction(x, y, (GM.vb(7.0, "x") + 4.0), (GM.vb(7.0, "y") + 4.0)))
	speed = ((GM.f_point_distance(x, y, (GM.vb(7.0, "x") + 4.0), (GM.vb(7.0, "y") + 4.0))) / v_wow)
	if ((absf(v_reverse - 0.0) < 0.00001)):
		v_wow = GM.add(v_wow, 0.5)
		if ((v_wow > 20.0)):
			v_reverse = 1.0
	else:
		if ((absf(v_reverse - 1.0) < 0.00001)):
			v_wow = v_wow - 0.5
			if ((v_wow < 2.0)):
				v_reverse = 0.0
