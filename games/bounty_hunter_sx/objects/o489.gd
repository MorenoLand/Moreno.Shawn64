extends "res://games/bounty_hunter_sx/scripts.gd"
var v_poo = 0.0
func ev_create():
	(GM.f_motion_add(self, GM.vget(482.0, "v_my_direction"), 20.0))
	v_poo = (direction / 5.0)
	(GM.f_motion_add(self, GM.vb(482.0, "direction"), GM.vb(482.0, "speed")))
	alarm[int(0.0)] = 20.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_1219():
	(GM.f_sound_play(328.0))
	(GM.f_instance_destroy(self))
func ev_col_490():
	for _w42 in GM.with_list((self.other), self):
		if _w42._dead:
			continue
		_w42.other = self
		GM.vset(_w42, "v_mypower", GM.vget(_w42, "v_mypower") + (-1.0))
	(GM.f_instance_destroy(self))
func ev_col_487():
	for _w43 in GM.with_list((self.other), self):
		if _w43._dead:
			continue
		_w43.other = self
		GM.vset(_w43, "v_mypower", GM.vget(_w43, "v_mypower") + (-1.0))
	(GM.f_instance_destroy(self))
func ev_col_486():
	for _w44 in GM.with_list((self.other), self):
		if _w44._dead:
			continue
		_w44.other = self
		GM.vset(_w44, "v_mypower", GM.vget(_w44, "v_mypower") + (-1.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite(487.0, v_poo, (x + 0.0), (y + 0.0)))
