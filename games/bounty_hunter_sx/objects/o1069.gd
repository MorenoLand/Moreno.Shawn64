extends "res://games/bounty_hunter_sx/objects/o489.gd"
func ev_create():
	(GM.f_motion_add(self, GM.vget(482.0, "v_my_direction"), 20.0))
	v_poo = (direction / 5.0)
	(GM.f_motion_add(self, GM.vb(482.0, "direction"), GM.vb(482.0, "speed")))
	alarm[int(0.0)] = 35.0
func ev_col_1219():
	(GM.f_sound_play(328.0))
	(GM.f_instance_destroy(self))
func ev_col_490():
	for _w443 in GM.with_list((self.other), self):
		if _w443._dead:
			continue
		_w443.other = self
		GM.vset(_w443, "v_mypower", GM.vget(_w443, "v_mypower") + (-2.0))
	(GM.f_instance_destroy(self))
func ev_col_487():
	for _w444 in GM.with_list((self.other), self):
		if _w444._dead:
			continue
		_w444.other = self
		GM.vset(_w444, "v_mypower", GM.vget(_w444, "v_mypower") + (-2.0))
	(GM.f_instance_destroy(self))
func ev_col_486():
	for _w445 in GM.with_list((self.other), self):
		if _w445._dead:
			continue
		_w445.other = self
		GM.vset(_w445, "v_mypower", GM.vget(_w445, "v_mypower") + (-2.0))
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite(1053.0, v_poo, (x + 0.0), (y + 0.0)))
