extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	if (((absf(GM.G["pac2p2"] - 1.0) < 0.00001))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 1250.0))
func ev_col_503():
	(GM.f_sound_play(3.0))
	for _w137 in GM.with_list((503.0), self):
		if _w137._dead:
			continue
		_w137.other = self
		(GM.f_instance_change(_w137, 508.0, 0.0))
	for _w138 in GM.with_list((507.0), self):
		if _w138._dead:
			continue
		_w138.other = self
		(GM.f_instance_change(_w138, 508.0, 0.0))
	for _w139 in GM.with_list((508.0), self):
		if _w139._dead:
			continue
		_w139.other = self
		(GM.f_move_towards_point(_w139, GM.vb(506.0, "x"), GM.vb(506.0, "y"), 8.0))
	x = xstart
	y = ystart
	for _w140 in GM.with_list((1250.0), self):
		if _w140._dead:
			continue
		_w140.other = self
		_w140.x = _w140.xstart
		_w140.y = _w140.ystart
	GM.lives = GM.lives + (-1.0)
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_col_500():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_key_40():
	if ((((GM.f_place_free(self, (x + 0.0), (y + 8.0)))))) >= 0.5:
		sprite_index = 503.0
		image_speed = 1.0
		(GM.f_action_move(self, "010000000", 8.0, 0.0))
func ev_key_39():
	if ((((GM.f_place_free(self, (x + 8.0), (y + 0.0)))))) >= 0.5:
		sprite_index = 501.0
		image_speed = 1.0
		(GM.f_action_move(self, "000001000", 8.0, 0.0))
func ev_key_38():
	if ((((GM.f_place_free(self, (x + 0.0), (y + (-8.0))))))) >= 0.5:
		sprite_index = 504.0
		image_speed = 1.0
		(GM.f_action_move(self, "000000010", 8.0, 0.0))
func ev_key_37():
	if ((((GM.f_place_free(self, (x + (-8.0)), (y + 0.0)))))) >= 0.5:
		sprite_index = 502.0
		image_speed = 1.0
		(GM.f_action_move(self, "000100000", 8.0, 0.0))
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
