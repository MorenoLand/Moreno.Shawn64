extends "res://games/street_bike_fury/scripts.gd"
var v_wee = 0.0
func ev_create():
	alarm[int(0.0)] = 90.0
	(GM.f_sound_play(17.0))
	(GM.f_instance_create(x, y, 251.0))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_273():
	pass
func ev_col_246():
	for _r40 in range(int((5.0))):
		(GM.f_instance_create(x, y, 93.0))
	(GM.f_sound_play(6.0))
	(GM.f_instance_destroy(self))
func ev_col_209():
	for _r41 in range(int((5.0))):
		(GM.f_instance_create(x, y, 93.0))
	(GM.f_sound_play(6.0))
	(GM.f_instance_destroy(self))
func ev_col_207():
	for _r42 in range(int((5.0))):
		(GM.f_instance_create(x, y, 93.0))
	(GM.f_sound_play(6.0))
	(GM.f_instance_destroy(self))
func ev_col_206():
	for _w43 in GM.with_list((self.other), self):
		if _w43._dead:
			continue
		_w43.other = self
		(GM.f_instance_destroy(_w43))
	(GM.f_sound_play(41.0))
	(GM.f_instance_destroy(self))
func ev_col_197():
	if ((absf(GM.vget(self.other, "v_die") - 0.0) < 0.00001)):
		for _r44 in range(int((5.0))):
			(GM.f_instance_create(x, y, 93.0))
		(GM.f_sound_play(6.0))
		(GM.f_instance_destroy(self))
func ev_col_171():
	(GM.f_sound_play(41.0))
	(GM.f_instance_destroy(self))
func ev_col_76():
	if ((absf(depth - 5.0) >= 0.00001)):
		speed = (speed / 2.0)
		(GM.f_sound_play(20.0))
		for _r45 in range(int((10.0))):
			v_wee = (GM.f_instance_create(((x - 40.0) + (GM.f_random(80.0))), ((y + 20.0) + (GM.f_random(10.0))), 81.0))
			GM.vsetb(v_wee, "direction", (80.0 + (GM.f_random(40.0))))
			GM.vsetb(v_wee, "speed", (1.0 + (GM.f_random(7.0))))
			GM.vsetb(v_wee, "gravity", 0.4)
		depth = 5.0
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
	if ((absf(GM.vb(0.0, "depth") - (-18.0)) < 0.00001)):
		(GM.f_instance_create(x, y, 139.0))
	(GM.f_sound_play(41.0))
	(GM.f_instance_destroy(self))
