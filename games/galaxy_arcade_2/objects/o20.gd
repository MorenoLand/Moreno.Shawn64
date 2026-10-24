extends "res://games/galaxy_arcade_2/scripts.gd"
var v_greg = 0.0
var v_poo = 0.0
var v_stick = 0.0
func ev_create():
	v_poo = 0.0
	v_greg = 1.0
	(GM.f_action_move(self, "000001000", 3.0, 0.0))
func ev_step():
	if (((y < 50.0))):
		y = 15.0
	if (((y > 500.0))):
		y = 530.0
	if ((GM.eq(v_stick, 1.0))):
		for _r67 in range(int((100.0))):
			pass
func ev_col_12():
	if (((absf(GM.vget(self.other, "v_frank") - 1.0) < 0.00001))):
		(GM.f_sound_play(14.0))
		(GM.f_instance_destroy(self))
		for _w68 in GM.with_list((self.other), self):
			if _w68._dead:
				continue
			_w68.other = self
			_w68.sprite_index = 26.0
			_w68.image_speed = 1.0
		GM.vset(self.other, "v_frank", 0.0)
func ev_col_10():
	if (((absf(GM.vget(self.other, "v_frank") - 1.0) < 0.00001))):
		(GM.f_sound_play(14.0))
		(GM.f_instance_destroy(self))
		for _w69 in GM.with_list((self.other), self):
			if _w69._dead:
				continue
			_w69.other = self
			_w69.sprite_index = 26.0
			_w69.image_speed = 1.0
		GM.vset(self.other, "v_frank", 0.0)
func ev_col_8():
	(GM.f_instance_destroy(self))
func ev_col_7():
	if (((absf(GM.vget(self.other, "v_frank") - 1.0) < 0.00001))):
		(GM.f_sound_play(14.0))
		(GM.f_instance_destroy(self))
		for _w70 in GM.with_list((self.other), self):
			if _w70._dead:
				continue
			_w70.other = self
			_w70.sprite_index = 27.0
			_w70.image_speed = 1.0
		GM.vset(self.other, "v_frank", 0.0)
func ev_col_5():
	if (((absf(GM.vget(self.other, "v_frank") - 1.0) < 0.00001))):
		(GM.f_sound_play(14.0))
		(GM.f_instance_destroy(self))
		for _w71 in GM.with_list((self.other), self):
			if _w71._dead:
				continue
			_w71.other = self
			_w71.sprite_index = 27.0
			_w71.image_speed = 1.0
		GM.vset(self.other, "v_frank", 0.0)
func ev_col_1():
	if (((absf(GM.vget(self.other, "v_frank") - 1.0) < 0.00001))):
		(GM.f_sound_play(14.0))
		(GM.f_instance_destroy(self))
		for _w72 in GM.with_list((self.other), self):
			if _w72._dead:
				continue
			_w72.other = self
			_w72.sprite_index = 27.0
			_w72.image_speed = 1.0
		GM.vset(self.other, "v_frank", 0.0)
