extends "res://games/bounty_hunter_sx/scripts.gd"
var v_poo = 0.0
func ev_create():
	if (((absf((GM.f_instance_number(1091.0)) - 1.0) < 0.00001))):
		(GM.f_motion_add(self, GM.vget(1091.0, "v_my_direction"), 20.0))
		(GM.f_motion_add(self, GM.vb(1091.0, "direction"), GM.vb(1091.0, "speed")))
	v_poo = (direction / 5.0)
	alarm[int(0.0)] = 35.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_1219():
	(GM.f_sound_play(328.0))
	(GM.f_instance_destroy(self))
func ev_col_1207():
	(GM.f_sound_play(304.0))
	GM.G["fuel"] = GM.G["fuel"] - 5.0
	GM.health = GM.health + 5.0
	(GM.f_instance_destroy(self))
func ev_col_490():
	(GM.f_instance_create((x + (-1.5)), (y + (-1.5)), 1071.0))
	for _w101 in GM.with_list((self.other), self):
		if _w101._dead:
			continue
		_w101.other = self
		GM.vset(_w101, "v_mypower", GM.vget(_w101, "v_mypower") + (-3.0))
	(GM.f_instance_destroy(self))
func ev_col_487():
	(GM.f_instance_create((x + (-1.5)), (y + (-1.5)), 1071.0))
	for _w102 in GM.with_list((self.other), self):
		if _w102._dead:
			continue
		_w102.other = self
		GM.vset(_w102, "v_mypower", GM.vget(_w102, "v_mypower") + (-3.0))
	(GM.f_instance_destroy(self))
func ev_col_486():
	(GM.f_instance_create((x + (-1.5)), (y + (-1.5)), 1071.0))
	for _w103 in GM.with_list((self.other), self):
		if _w103._dead:
			continue
		_w103.other = self
		GM.vset(_w103, "v_mypower", GM.vget(_w103, "v_mypower") + (-3.0))
	(GM.f_instance_destroy(self))
func ev_col_482():
	if (((absf((GM.f_instance_number(1208.0)) - 0.0) < 0.00001))):
		(GM.f_instance_destroy(self))
	else:
		v_poo = (direction / 5.0)
		(GM.f_sound_play(328.0))
		(GM.f_move_bounce_solid(self, 0.0))
		(GM.f_instance_change(self, 1070.0, 0.0))
func ev_draw():
	(GM.f_draw_sprite(1054.0, v_poo, (x + 0.0), (y + 0.0)))
