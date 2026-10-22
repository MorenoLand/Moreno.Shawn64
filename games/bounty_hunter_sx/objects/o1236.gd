extends "res://games/bounty_hunter_sx/objects/o1133.gd"
func ev_create():
	(GM.f_motion_add(self, GM.vget(1232.0, "v_wee"), 20.0))
	(GM.f_motion_add(self, GM.vb(1232.0, "direction"), GM.vb(1232.0, "speed")))
	(GM.f_move_outside_all(self, GM.vget(1232.0, "v_wee"), 50.0))
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
	for _w452 in GM.with_list((self.other), self):
		if _w452._dead:
			continue
		_w452.other = self
		GM.vset(_w452, "v_mypower", GM.vget(_w452, "v_mypower") + (-2.0))
	(GM.f_instance_destroy(self))
func ev_col_487():
	for _w453 in GM.with_list((self.other), self):
		if _w453._dead:
			continue
		_w453.other = self
		GM.vset(_w453, "v_mypower", GM.vget(_w453, "v_mypower") + (-2.0))
	(GM.f_instance_destroy(self))
func ev_col_486():
	for _w454 in GM.with_list((self.other), self):
		if _w454._dead:
			continue
		_w454.other = self
		GM.vset(_w454, "v_mypower", GM.vget(_w454, "v_mypower") + (-2.0))
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
