extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_create():
	(GM.f_sound_play(325.0))
	alarm[int(0.0)] = 500.0
func ev_alarm_0():
	self.ev_user(0.0)
func ev_col_1139():
	self.ev_user(0.0)
func ev_col_1131():
	self.ev_user(0.0)
func ev_col_1091():
	self.ev_user(0.0)
func ev_col_1085():
	self.ev_user(0.0)
func ev_col_1080():
	self.ev_user(0.0)
func ev_col_490():
	for _w379 in GM.with_list((self.other), self):
		if _w379._dead:
			continue
		_w379.other = self
		GM.vset(_w379, "v_mypower", GM.vget(_w379, "v_mypower") + (-10.0))
	self.ev_user(0.0)
func ev_col_487():
	for _w380 in GM.with_list((self.other), self):
		if _w380._dead:
			continue
		_w380.other = self
		GM.vset(_w380, "v_mypower", GM.vget(_w380, "v_mypower") + (-10.0))
	self.ev_user(0.0)
func ev_col_486():
	for _w381 in GM.with_list((self.other), self):
		if _w381._dead:
			continue
		_w381.other = self
		GM.vset(_w381, "v_mypower", GM.vget(_w381, "v_mypower") + (-10.0))
	self.ev_user(0.0)
func ev_other_10():
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 26.0), ((y + (sprite_height / 2.0)) - 26.0), 1169.0))
	for _r382 in range(int((300.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 1173.0))
	(GM.f_sound_play(293.0))
	(GM.f_instance_destroy(self))
func ev_other_7():
	(GM.f_sound_play(326.0))
