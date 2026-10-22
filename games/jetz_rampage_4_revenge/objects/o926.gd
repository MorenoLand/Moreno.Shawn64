extends "res://games/jetz_rampage_4_revenge/objects/o491.gd"
var v_wow = 0.0
func ev_create():
	if (((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
		direction = ((-5.0) + (GM.f_random(10.0)))
	else:
		direction = (175.0 + (GM.f_random(10.0)))
	speed = (12.0 + (GM.f_random(5.0)))
func ev_step():
	if ((((GM.f_random(8.0)) < 1.0))):
		v_weet = (GM.f_instance_create(x, y, 490.0))
		GM.vsetb(v_weet, "hspeed", GM.vb(v_weet, "hspeed") + hspeed)
		GM.vsetb(v_weet, "vspeed", GM.vb(v_weet, "vspeed") + vspeed)
func ev_col_902():
	self.ev_user(0.0)
func ev_col_898():
	self.ev_user(0.0)
func ev_col_876():
	self.ev_user(0.0)
func ev_col_866():
	self.ev_user(0.0)
func ev_col_838():
	self.ev_user(0.0)
func ev_col_770():
	self.ev_user(0.0)
func ev_col_757():
	self.ev_user(0.0)
func ev_col_741():
	self.ev_user(0.0)
func ev_col_732():
	self.ev_user(0.0)
func ev_col_731():
	self.ev_user(0.0)
func ev_col_730():
	self.ev_user(0.0)
func ev_col_725():
	self.ev_user(0.0)
func ev_col_713():
	self.ev_user(0.0)
func ev_col_712():
	self.ev_user(0.0)
func ev_col_705():
	self.ev_user(0.0)
func ev_col_700():
	self.ev_user(0.0)
func ev_col_684():
	self.ev_user(0.0)
func ev_col_640():
	self.ev_user(0.0)
func ev_col_621():
	self.ev_user(0.0)
func ev_col_598():
	self.ev_user(0.0)
func ev_col_592():
	self.ev_user(0.0)
func ev_col_591():
	self.ev_user(0.0)
func ev_col_590():
	self.ev_user(0.0)
func ev_col_583():
	self.ev_user(0.0)
func ev_col_564():
	self.ev_user(0.0)
func ev_col_563():
	self.ev_user(0.0)
func ev_col_557():
	self.ev_user(0.0)
func ev_col_556():
	self.ev_user(0.0)
func ev_col_554():
	self.ev_user(0.0)
func ev_col_553():
	self.ev_user(0.0)
func ev_col_544():
	self.ev_user(0.0)
func ev_col_531():
	(GM.f_instance_create(x, y, 545.0))
	self.ev_user(0.0)
func ev_col_524():
	self.ev_user(0.0)
func ev_col_7():
	(GM.f_instance_create(x, y, 545.0))
	self.ev_user(0.0)
func ev_other_10():
	v_wow = (GM.f_round((GM.f_random(2.0))))
	if (GM.eq(v_wow, 0.0)):
		(GM.f_instance_destroy(self))
func ev_other_7():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
