extends "res://games/street_bike_fury/scripts.gd"
var v_set = 0.0
var v_wow = 0.0
func ev_create():
	alarm[int(0.0)] = 140.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	v_wow = (GM.f_floor((GM.f_random(2.0))))
	if ((absf(v_wow - 0.0) < 0.00001)):
		v_set = (GM.f_instance_create(x, y, 240.0))
		GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + (hspeed / 2.0))
		GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + (vspeed / 2.0))
func ev_col_248():
	self.ev_user(0.0)
func ev_col_209():
	self.ev_user(0.0)
func ev_col_207():
	self.ev_user(0.0)
func ev_col_206():
	self.ev_user(0.0)
func ev_col_197():
	self.ev_user(0.0)
func ev_col_171():
	self.ev_user(0.0)
func ev_col_77():
	self.ev_user(0.0)
func ev_col_29():
	self.ev_user(0.0)
func ev_col_28():
	self.ev_user(0.0)
func ev_col_8():
	self.ev_user(0.0)
func ev_col_7():
	self.ev_user(0.0)
func ev_col_6():
	self.ev_user(0.0)
func ev_col_5():
	self.ev_user(0.0)
func ev_col_4():
	self.ev_user(0.0)
func ev_col_1():
	self.ev_user(0.0)
func ev_other_10():
	(GM.f_instance_create(x, y, 261.0))
	(GM.f_instance_destroy(self))
