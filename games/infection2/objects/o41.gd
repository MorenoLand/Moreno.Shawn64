extends "res://games/infection2/scripts.gd"
var v_hit = 0.0
var v_temp = 0.0
var v_what = 0.0
func ev_create():
	v_hit = 1.0
func ev_alarm_0():
	v_hit = 1.0
func ev_step():
	x = (GM.vb(v_what, "x") + (GM.f_lengthdir_x(80.0, (270.0 + GM.vget(v_what, "v_spin")))))
	y = (GM.vb(v_what, "y") + (GM.f_lengthdir_y(80.0, (270.0 + GM.vget(v_what, "v_spin")))))
	image_angle = GM.vget(v_what, "v_spin")
func ev_col_23():
	if ((GM.vb(self.other, "hspeed") > 0.0)):
		GM.vset(v_what, "v_zspeed", GM.vget(v_what, "v_zspeed") + 0.1)
	if ((GM.vb(self.other, "hspeed") < 0.0)):
		GM.vset(v_what, "v_zspeed", GM.vget(v_what, "v_zspeed") - 0.1)
	for _r9 in range(int((5.0))):
		v_temp = (GM.f_instance_create(GM.vb(self.other, "x"), GM.vb(self.other, "y"), 64.0))
		GM.vsetb(v_temp, "direction", ((GM.vb(self.other, "direction") - 10.0) + (GM.f_random(20.0))))
		GM.vsetb(v_temp, "speed", (GM.f_random((GM.vb(self.other, "speed") / 2.0))))
	for _w10 in GM.with_list((self.other), self):
		if _w10._dead:
			continue
		_w10.other = self
		(GM.f_instance_destroy(_w10))
func ev_col_0():
	if ((absf(v_hit - 1.0) < 0.00001)):
		if ((GM.vb(self.other, "hspeed") > 0.0)):
			GM.vset(v_what, "v_zspeed", GM.vget(v_what, "v_zspeed") + 2.0)
		if ((GM.vb(self.other, "hspeed") < 0.0)):
			GM.vset(v_what, "v_zspeed", GM.vget(v_what, "v_zspeed") - 2.0)
		v_hit = 0.0
		alarm[int(0.0)] = 30.0
