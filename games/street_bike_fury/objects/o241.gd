extends "res://games/street_bike_fury/scripts.gd"
var v_bounced = 0.0
var v_set = 0.0
func ev_create():
	alarm[int(0.0)] = 160.0
	v_bounced = 0.0
	gravity = 0.4
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	if (((x < GM.vb(0.0, "x")) and (hspeed < (GM.vb(0.0, "hspeed") + 5.0)))):
		hspeed = hspeed + 0.5
	if (((x > GM.vb(0.0, "x")) and (hspeed > (GM.vb(0.0, "hspeed") - 5.0)))):
		hspeed = hspeed - 0.5
	if (((y < GM.vb(0.0, "y")) and (vspeed > (GM.vb(0.0, "vspeed") + 6.0)))):
		vspeed = vspeed - 2.0
	if ((y < GM.view_yview[0])):
		vspeed = vspeed + 2.0
func ev_col_262():
	self.ev_user(0.0)
func ev_col_240():
	self.ev_user(0.0)
func ev_col_77():
	(GM.f_instance_destroy(self))
	(GM.f_sound_play(20.0))
func ev_col_20():
	self.ev_user(0.0)
func ev_col_0():
	if ((absf(GM.vget(self.other, "v_die") - 0.0) < 0.00001)):
		GM.health = GM.health - 5.0
		GM.vset(self.other, "v_damaged", (-1.0))
		GM.vb(self.other, "alarm")[int(10.0)] = 20.0
		self.ev_user(0.0)
func ev_other_10():
	(GM.f_instance_create(x, y, 224.0))
	(GM.f_sound_play(8.0))
	for _r99 in range(int((20.0))):
		v_set = (GM.f_instance_create(((x - 10.0) + (GM.f_random(20.0))), ((y - 10.0) + (GM.f_random(20.0))), 249.0))
		GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + hspeed)
		GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + vspeed)
	(GM.f_instance_destroy(self))
