extends "res://games/bounty_hunter_sx/scripts.gd"
var v_poo = 0.0
func ev_create():
	if (((absf((GM.f_instance_number(1131.0)) - 1.0) < 0.00001))):
		(GM.f_motion_add(self, GM.vget(1131.0, "v_my_direction"), 20.0))
		(GM.f_motion_add(self, GM.vb(1131.0, "direction"), GM.vb(1131.0, "speed")))
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
	for _w160 in GM.with_list((self.other), self):
		if _w160._dead:
			continue
		_w160.other = self
		GM.vset(_w160, "v_mypower", GM.vget(_w160, "v_mypower") + (-2.0))
	(GM.f_instance_destroy(self))
func ev_col_487():
	for _w161 in GM.with_list((self.other), self):
		if _w161._dead:
			continue
		_w161.other = self
		GM.vset(_w161, "v_mypower", GM.vget(_w161, "v_mypower") + (-2.0))
	(GM.f_instance_destroy(self))
func ev_col_486():
	for _w162 in GM.with_list((self.other), self):
		if _w162._dead:
			continue
		_w162.other = self
		GM.vset(_w162, "v_mypower", GM.vget(_w162, "v_mypower") + (-2.0))
	(GM.f_instance_destroy(self))
func ev_col_482():
	if (((absf((GM.f_instance_number(1208.0)) - 0.0) < 0.00001))):
		(GM.f_instance_destroy(self))
	else:
		v_poo = (direction / 5.0)
		(GM.f_sound_play(328.0))
		(GM.f_move_bounce_solid(self, 0.0))
		(GM.f_instance_change(self, 1076.0, 0.0))
func ev_draw():
	(GM.f_draw_sprite(1068.0, (-1.0), (x + 0.0), (y + 0.0)))
