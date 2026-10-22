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
	(GM.f_instance_create((x + (-1.5)), (y + (-1.5)), 1071.0))
	for _w446 in GM.with_list((self.other), self):
		if _w446._dead:
			continue
		_w446.other = self
		GM.vset(_w446, "v_mypower", GM.vget(_w446, "v_mypower") + (-3.0))
	(GM.f_instance_destroy(self))
func ev_col_487():
	(GM.f_instance_create((x + (-1.5)), (y + (-1.5)), 1071.0))
	for _w447 in GM.with_list((self.other), self):
		if _w447._dead:
			continue
		_w447.other = self
		GM.vset(_w447, "v_mypower", GM.vget(_w447, "v_mypower") + (-3.0))
	(GM.f_instance_destroy(self))
func ev_col_486():
	(GM.f_instance_create((x + (-1.5)), (y + (-1.5)), 1071.0))
	for _w448 in GM.with_list((self.other), self):
		if _w448._dead:
			continue
		_w448.other = self
		GM.vset(_w448, "v_mypower", GM.vget(_w448, "v_mypower") + (-3.0))
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite(1054.0, v_poo, (x + 0.0), (y + 0.0)))
