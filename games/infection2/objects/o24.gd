extends "res://games/infection2/scripts.gd"
var v_reload = 0.0
var v_up = 0.0
func ev_create():
	if ((absf((GM.f_instance_number(28.0)) - 0.0) < 0.00001)):
		(GM.f_instance_create(x, y, 28.0))
	v_reload = 0.0
	v_up = 1.0
func ev_step():
	if ((absf(v_up - 1.0) < 0.00001)):
		v_reload = v_reload + 8.0
	if ((v_reload > 20.0)):
		v_up = 0.0
	if ((absf(v_up - 0.0) < 0.00001)):
		v_reload = v_reload - 1.0
		if ((v_reload < 1.0)):
			GM.vset(0.0, "v_reload", 0.0)
			(GM.f_instance_destroy(self))
	GM.vset(0.0, "v_reload", v_reload)
