extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wee = 0.0
var v_weez = 0.0
func ev_create():
	alarm[int(1.0)] = 1.0
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 545.0))
	(GM.f_sound_play(117.0))
	for _r74 in range(int((24.0))):
		(GM.f_instance_create((x - 2.5), ((y - 4.0) + (GM.f_random(3.0))), 504.0))
	hspeed = hspeed + GM.vb(7.0, "hspeed")
	vspeed = vspeed + GM.vb(7.0, "vspeed")
	alarm[int(0.0)] = 20.0
func ev_alarm_1():
	if ((absf(GM.vget(7.0, "v_guyright") - 1.0) < 0.00001)):
		(GM.f_motion_add(self, 0.0, 20.0))
	else:
		(GM.f_motion_add(self, 180.0, 20.0))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_1111():
	if (not (((absf(sprite_index - 452.0) < 0.00001)))):
		for _r75 in range(int((30.0))):
			v_wee = (GM.f_instance_create(((x + 2.0) + (GM.f_random(1.0))), ((y + 2.0) + (GM.f_random(1.0))), 653.0))
			GM.vsetb(v_wee, "direction", ((direction - 5.0) + (GM.f_random(10.0))))
			GM.vsetb(v_wee, "depth", GM.vb(self.other, "depth"))
			GM.vset(v_wee, "v_yyy", GM.room_height)
			(GM.f_instance_destroy(self))
func ev_col_1049():
	if (not (((absf(sprite_index - 452.0) < 0.00001)))):
		for _r76 in range(int((10.0))):
			v_wee = (GM.f_instance_create(((x + 2.0) + (GM.f_random(1.0))), ((y + 2.0) + (GM.f_random(1.0))), 653.0))
			GM.vsetb(v_wee, "direction", ((direction - 5.0) + (GM.f_random(10.0))))
			GM.vsetb(v_wee, "depth", GM.vb(self.other, "depth"))
			GM.vset(v_wee, "v_yyy", GM.room_height)
func ev_col_998():
	if (not (((absf(sprite_index - 452.0) < 0.00001)))):
		for _r77 in range(int((10.0))):
			v_wee = (GM.f_instance_create(((x + 2.0) + (GM.f_random(1.0))), ((y + 2.0) + (GM.f_random(1.0))), 653.0))
			GM.vsetb(v_wee, "direction", ((direction - 5.0) + (GM.f_random(10.0))))
			GM.vsetb(v_wee, "depth", GM.vb(self.other, "depth"))
			GM.vset(v_wee, "v_yyy", GM.room_height)
func ev_col_995():
	if (not (((absf(sprite_index - 452.0) < 0.00001)))):
		for _r78 in range(int((10.0))):
			v_wee = (GM.f_instance_create(((x + 2.0) + (GM.f_random(1.0))), ((y + 2.0) + (GM.f_random(1.0))), 653.0))
			GM.vsetb(v_wee, "direction", ((direction - 5.0) + (GM.f_random(10.0))))
			GM.vsetb(v_wee, "depth", GM.vb(self.other, "depth"))
			GM.vset(v_wee, "v_yyy", GM.room_height)
func ev_col_953():
	self.ev_user(0.0)
func ev_col_951():
	self.ev_user(0.0)
func ev_col_950():
	self.ev_user(0.0)
func ev_col_949():
	self.ev_user(0.0)
func ev_col_948():
	self.ev_user(0.0)
func ev_col_946():
	self.ev_user(0.0)
func ev_col_929():
	self.ev_user(0.0)
func ev_col_925():
	self.ev_user(0.0)
func ev_col_907():
	self.ev_user(0.0)
func ev_col_838():
	self.ev_user(0.0)
func ev_col_780():
	self.ev_user(0.0)
func ev_col_770():
	if (((absf(GM.vb(self.other, "gravity") - 0.0) < 0.00001))):
		self.ev_user(0.0)
func ev_col_758():
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
func ev_col_709():
	self.ev_user(0.0)
func ev_col_700():
	self.ev_user(0.0)
func ev_col_684():
	self.ev_user(0.0)
func ev_col_683():
	self.ev_user(0.0)
func ev_col_646():
	if (not (((absf(GM.vb(self.other, "hspeed") - 0.0) < 0.00001)))):
		for _r79 in range(int((30.0))):
			v_wee = (GM.f_instance_create(((x + 2.0) + (GM.f_random(1.0))), ((y + 2.0) + (GM.f_random(1.0))), 653.0))
			GM.vsetb(v_wee, "direction", ((direction - 5.0) + (GM.f_random(10.0))))
			GM.vsetb(v_wee, "depth", GM.vb(self.other, "depth"))
			GM.vb(v_wee, "alarm")[int(0.0)] = (GM.f_random(5.0))
			GM.vset(v_wee, "v_yyy", GM.room_height)
		(GM.f_sound_play(151.0))
		(GM.f_instance_destroy(self))
func ev_col_645():
	if (not (((absf(GM.vb(self.other, "hspeed") - 0.0) < 0.00001)))):
		for _r80 in range(int((30.0))):
			v_wee = (GM.f_instance_create(((x + 2.0) + (GM.f_random(1.0))), ((y + 2.0) + (GM.f_random(1.0))), 653.0))
			GM.vsetb(v_wee, "direction", ((direction - 5.0) + (GM.f_random(10.0))))
			GM.vsetb(v_wee, "depth", GM.vb(self.other, "depth"))
			GM.vb(v_wee, "alarm")[int(0.0)] = (GM.f_random(5.0))
			GM.vset(v_wee, "v_yyy", GM.room_height)
		(GM.f_sound_play(151.0))
		(GM.f_instance_destroy(self))
func ev_col_644():
	if (not (((absf(GM.vb(self.other, "hspeed") - 0.0) < 0.00001)))):
		for _r81 in range(int((30.0))):
			v_wee = (GM.f_instance_create(((x + 2.0) + (GM.f_random(1.0))), ((y + 2.0) + (GM.f_random(1.0))), 653.0))
			GM.vsetb(v_wee, "direction", ((direction - 5.0) + (GM.f_random(10.0))))
			GM.vsetb(v_wee, "depth", GM.vb(self.other, "depth"))
			GM.vb(v_wee, "alarm")[int(0.0)] = (GM.f_random(5.0))
			GM.vset(v_wee, "v_yyy", GM.room_height)
		(GM.f_sound_play(151.0))
		(GM.f_instance_destroy(self))
func ev_col_643():
	if (not (((absf(GM.vb(self.other, "hspeed") - 0.0) < 0.00001)))):
		for _r82 in range(int((30.0))):
			v_wee = (GM.f_instance_create(((x + 2.0) + (GM.f_random(1.0))), ((y + 2.0) + (GM.f_random(1.0))), 653.0))
			GM.vsetb(v_wee, "direction", ((direction - 5.0) + (GM.f_random(10.0))))
			GM.vsetb(v_wee, "depth", GM.vb(self.other, "depth"))
			GM.vb(v_wee, "alarm")[int(0.0)] = (GM.f_random(5.0))
			GM.vset(v_wee, "v_yyy", GM.room_height)
		(GM.f_sound_play(151.0))
		(GM.f_instance_destroy(self))
func ev_col_640():
	if (not (((absf(sprite_index - 452.0) < 0.00001)))):
		(GM.f_sound_play(151.0))
		for _r83 in range(int((20.0))):
			v_weez = (GM.f_instance_create((x + (GM.f_random((sprite_width - 3.0)))), (y + (GM.f_random((sprite_height - 3.0)))), 593.0))
			GM.vsetb(v_weez, "direction", (GM.f_random(360.0)))
			GM.vsetb(v_weez, "speed", (1.0 + (GM.f_random(4.0))))
			GM.vb(v_weez, "alarm")[int(0.0)] = (1.0 + (GM.f_random(5.0)))
		for _r84 in range(int((30.0))):
			v_wee = (GM.f_instance_create(((x + 2.0) + (GM.f_random(1.0))), ((y + 2.0) + (GM.f_random(1.0))), 653.0))
			GM.vsetb(v_wee, "direction", ((direction - 5.0) + (GM.f_random(10.0))))
			GM.vsetb(v_wee, "depth", GM.vb(self.other, "depth"))
			GM.vset(v_wee, "v_yyy", GM.vb(603.0, "y"))
			GM.vb(v_wee, "alarm")[int(0.0)] = (10.0 + (GM.f_random(30.0)))
		(GM.f_instance_destroy(self))
func ev_col_621():
	self.ev_user(0.0)
func ev_col_592():
	if (((absf(gravity - 0.0) < 0.00001))):
		self.ev_user(0.0)
func ev_col_591():
	self.ev_user(0.0)
func ev_col_590():
	self.ev_user(0.0)
func ev_col_584():
	self.ev_user(0.0)
func ev_col_583():
	self.ev_user(0.0)
func ev_col_578():
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
	if (not (((absf(sprite_index - 452.0) < 0.00001)))):
		for _r85 in range(int((30.0))):
			v_wee = (GM.f_instance_create(((x + 2.0) + (GM.f_random(1.0))), ((y + 2.0) + (GM.f_random(1.0))), 653.0))
			GM.vsetb(v_wee, "direction", ((direction - 5.0) + (GM.f_random(10.0))))
			GM.vsetb(v_wee, "depth", GM.vb(self.other, "depth"))
			GM.vset(v_wee, "v_yyy", ((GM.vb(self.other, "y") + GM.vb(self.other, "sprite_height")) - 6.0))
func ev_col_524():
	self.ev_user(0.0)
func ev_other_10():
	for _r86 in range(int((20.0))):
		v_weez = (GM.f_instance_create((x + (GM.f_random((sprite_width - 3.0)))), (y + (GM.f_random((sprite_height - 3.0)))), 593.0))
		GM.vsetb(v_weez, "direction", (GM.f_random(360.0)))
		GM.vsetb(v_weez, "speed", (1.0 + (GM.f_random(4.0))))
		GM.vb(v_weez, "alarm")[int(0.0)] = (1.0 + (GM.f_random(5.0)))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
