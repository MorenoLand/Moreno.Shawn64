extends "res://games/galaxy_arcade/scripts.gd"
func ev_step():
	if (((absf((GM.f_instance_number(169.0)) - 0.0) < 0.00001))):
		(GM.f_sound_play(19.0))
		if (((absf(GM.room - 39.0) < 0.00001))):
			if (((GM.G["pacscore"] > GM.G["pachigh"]))):
				GM.G["pachigh"] = GM.G["pacscore"]
				await GM.f_show_message("NEW HIGH SCORE")
			(GM.f_room_goto(3.0))
		else:
			(GM.f_room_goto_next())
	if (((GM.G["paclives"] < 1.0))):
		if (((GM.G["pacscore"] > GM.G["pachigh"]))):
			GM.G["pachigh"] = GM.G["pacscore"]
			await GM.f_show_message("NEW HIGH SCORE")
		(GM.f_room_goto(3.0))
func ev_col_176():
	GM.G["paclives"] = GM.G["paclives"] + 1.0
func ev_col_173():
	(GM.f_sound_play(18.0))
	for _w25 in GM.with_list((self.other), self):
		if _w25._dead:
			continue
		_w25.other = self
		(GM.f_instance_destroy(_w25))
	for _w26 in GM.with_list((172.0), self):
		if _w26._dead:
			continue
		_w26.other = self
		(GM.f_instance_change(_w26, 170.0, 0.0))
	for _w27 in GM.with_list((170.0), self):
		if _w27._dead:
			continue
		_w27.other = self
		(GM.f_instance_change(_w27, 172.0, 0.0))
	for _w28 in GM.with_list((172.0), self):
		if _w28._dead:
			continue
		_w28.other = self
		_w28.alarm[int(0.0)] = 160.0
func ev_col_172():
	(GM.f_sound_play(6.0))
	for _w29 in GM.with_list((self.other), self):
		if _w29._dead:
			continue
		_w29.other = self
		_w29.x = _w29.xstart
		_w29.y = _w29.ystart
	for _w30 in GM.with_list((self.other), self):
		if _w30._dead:
			continue
		_w30.other = self
		(GM.f_instance_change(_w30, 170.0, 0.0))
	GM.G["pacscore"] = GM.G["pacscore"] + 100.0
func ev_col_170():
	(GM.f_sound_play(5.0))
	for _w31 in GM.with_list((170.0), self):
		if _w31._dead:
			continue
		_w31.other = self
		_w31.x = _w31.xstart
		_w31.y = _w31.ystart
	for _w32 in GM.with_list((172.0), self):
		if _w32._dead:
			continue
		_w32.other = self
		_w32.x = _w32.xstart
		_w32.y = _w32.ystart
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
	sprite_index = 98.0
	image_speed = 1.0
	x = xstart
	y = ystart
	GM.G["paclives"] = GM.G["paclives"] + (-1.0)
func ev_col_169():
	GM.G["pacscore"] = GM.G["pacscore"] + 5.0
func ev_col_167():
	vspeed = 0.0
	hspeed = 0.0
func ev_key_40():
	if ((((GM.f_place_free(self, (x + 0.0), (y + 4.0)))))) >= 0.5:
		sprite_index = 98.0
		image_speed = 1.0
		(GM.f_action_move(self, "010000000", 4.0, 0.0))
func ev_key_39():
	if ((((GM.f_place_free(self, (x + 4.0), (y + 0.0)))))) >= 0.5:
		sprite_index = 96.0
		image_speed = 1.0
		(GM.f_action_move(self, "000001000", 4.0, 0.0))
func ev_key_38():
	if ((((GM.f_place_free(self, (x + 0.0), (y + (-4.0))))))) >= 0.5:
		sprite_index = 97.0
		image_speed = 1.0
		(GM.f_action_move(self, "000000010", 4.0, 0.0))
func ev_key_37():
	if ((((GM.f_place_free(self, (x + (-4.0)), (y + 0.0)))))) >= 0.5:
		sprite_index = 100.0
		image_speed = 1.0
		(GM.f_action_move(self, "000100000", 4.0, 0.0))
