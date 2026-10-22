extends "res://games/jetz_rampage_4_revenge/objects/o491.gd"
func ev_create():
	if ((absf(GM.vget(979.0, "v_guyright") - 1.0) < 0.00001)):
		direction = ((-5.0) + (GM.f_random(10.0)))
	else:
		direction = (175.0 + (GM.f_random(10.0)))
	speed = (9.0 + (GM.f_random(1.0)))
func ev_col_1143():
	self.ev_user(0.0)
