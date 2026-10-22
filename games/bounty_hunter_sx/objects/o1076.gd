extends "res://games/bounty_hunter_sx/objects/o489.gd"
func ev_create():
	(GM.f_motion_add(self, GM.vget(482.0, "v_my_direction"), 20.0))
	(GM.f_motion_add(self, GM.vb(482.0, "direction"), GM.vb(482.0, "speed")))
	alarm[int(0.0)] = 35.0
func ev_col_1219():
	(GM.f_sound_play(328.0))
	(GM.f_instance_destroy(self))
func ev_col_490():
	for _w449 in GM.with_list((self.other), self):
		if _w449._dead:
			continue
		_w449.other = self
		GM.vset(_w449, "v_mypower", GM.vget(_w449, "v_mypower") + (-2.0))
	(GM.f_instance_destroy(self))
func ev_col_487():
	for _w450 in GM.with_list((self.other), self):
		if _w450._dead:
			continue
		_w450.other = self
		GM.vset(_w450, "v_mypower", GM.vget(_w450, "v_mypower") + (-2.0))
	(GM.f_instance_destroy(self))
func ev_col_486():
	for _w451 in GM.with_list((self.other), self):
		if _w451._dead:
			continue
		_w451.other = self
		GM.vset(_w451, "v_mypower", GM.vget(_w451, "v_mypower") + (-2.0))
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite(1068.0, (-1.0), (x + 0.0), (y + 0.0)))
