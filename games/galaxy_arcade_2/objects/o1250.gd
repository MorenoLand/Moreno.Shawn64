extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_col_503():
	(GM.f_sound_play(3.0))
	for _w204 in GM.with_list((503.0), self):
		if _w204._dead:
			continue
		_w204.other = self
		(GM.f_instance_change(_w204, 508.0, 0.0))
	for _w205 in GM.with_list((507.0), self):
		if _w205._dead:
			continue
		_w205.other = self
		(GM.f_instance_change(_w205, 508.0, 0.0))
	for _w206 in GM.with_list((508.0), self):
		if _w206._dead:
			continue
		_w206.other = self
		(GM.f_move_towards_point(_w206, GM.vb(506.0, "x"), GM.vb(506.0, "y"), 8.0))
	x = xstart
	y = ystart
	for _w207 in GM.with_list((504.0), self):
		if _w207._dead:
			continue
		_w207.other = self
		_w207.x = _w207.xstart
		_w207.y = _w207.ystart
	GM.lives = GM.lives + (-1.0)
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_col_500():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_key_87():
	if ((((GM.f_place_free(self, (x + 0.0), (y + (-8.0))))))) >= 0.5:
		sprite_index = 504.0
		image_speed = 1.0
		(GM.f_action_move(self, "000000010", 8.0, 0.0))
func ev_key_83():
	if ((((GM.f_place_free(self, (x + 0.0), (y + 8.0)))))) >= 0.5:
		sprite_index = 503.0
		image_speed = 1.0
		(GM.f_action_move(self, "010000000", 8.0, 0.0))
func ev_key_68():
	if ((((GM.f_place_free(self, (x + 8.0), (y + 0.0)))))) >= 0.5:
		sprite_index = 501.0
		image_speed = 1.0
		(GM.f_action_move(self, "000001000", 8.0, 0.0))
func ev_key_65():
	if ((((GM.f_place_free(self, (x + (-8.0)), (y + 0.0)))))) >= 0.5:
		sprite_index = 502.0
		image_speed = 1.0
		(GM.f_action_move(self, "000100000", 8.0, 0.0))
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
