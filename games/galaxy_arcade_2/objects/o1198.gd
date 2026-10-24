extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	x = (GM.f_random(5000.0))
	y = (GM.f_random(2400.0))
	if ((((GM.f_random(2.0)) < 1.0))):
		(GM.f_action_move(self, "000100000", 4.0, 0.0))
		sprite_index = 1175.0
		image_speed = 1.0
	else:
		(GM.f_action_move(self, "000001000", 4.0, 0.0))
		sprite_index = 1176.0
		image_speed = 1.0
func ev_col_1174():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 1191.0))
	(GM.f_sound_play(346.0))
	for _w183 in GM.with_list((self.other), self):
		if _w183._dead:
			continue
		_w183.other = self
		(GM.f_instance_destroy(_w183))
	(GM.f_instance_destroy(self))
func ev_col_1170():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 1191.0))
	(GM.f_sound_play(341.0))
	for _w184 in GM.with_list((self.other), self):
		if _w184._dead:
			continue
		_w184.other = self
		(GM.f_instance_destroy(_w184))
	(GM.f_instance_destroy(self))
func ev_col_1138():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 1191.0))
	(GM.f_sound_play(346.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
