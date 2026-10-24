extends "res://games/galaxy_arcade_2/scripts.gd"
var v_greg = 0.0
var v_poo = 0.0
var v_stick = 0.0
func ev_create():
	v_poo = 0.0
	v_greg = 1.0
	(GM.f_action_move(self, "000001000", 6.0, 0.0))
func ev_step():
	if (((y < 50.0))):
		y = 15.0
	if (((y > 500.0))):
		y = 530.0
	if ((GM.eq(v_stick, 1.0))):
		for _r73 in range(int((100.0))):
			pass
func ev_col_12():
	if (((absf(GM.vget(self.other, "v_frank") - 1.0) < 0.00001))):
		(GM.f_sound_play(14.0))
		(GM.f_instance_destroy(self))
		for _w74 in GM.with_list((self.other), self):
			if _w74._dead:
				continue
			_w74.other = self
			_w74.sprite_index = 28.0
			_w74.image_speed = 1.0
		GM.vset(self.other, "v_frank", 0.0)
func ev_col_10():
	if (((absf(GM.vget(self.other, "v_frank") - 1.0) < 0.00001))):
		(GM.f_sound_play(14.0))
		(GM.f_instance_destroy(self))
		for _w75 in GM.with_list((self.other), self):
			if _w75._dead:
				continue
			_w75.other = self
			_w75.sprite_index = 28.0
			_w75.image_speed = 1.0
		GM.vset(self.other, "v_frank", 0.0)
func ev_col_8():
	(GM.f_instance_destroy(self))
func ev_col_7():
	if (((absf(GM.vget(self.other, "v_frank") - 1.0) < 0.00001))):
		(GM.f_sound_play(14.0))
		(GM.f_instance_destroy(self))
		for _w76 in GM.with_list((self.other), self):
			if _w76._dead:
				continue
			_w76.other = self
			_w76.sprite_index = 29.0
			_w76.image_speed = 1.0
		GM.vset(self.other, "v_frank", 0.0)
func ev_col_5():
	if (((absf(GM.vget(self.other, "v_frank") - 1.0) < 0.00001))):
		(GM.f_sound_play(14.0))
		(GM.f_instance_destroy(self))
		for _w77 in GM.with_list((self.other), self):
			if _w77._dead:
				continue
			_w77.other = self
			_w77.sprite_index = 29.0
			_w77.image_speed = 1.0
		GM.vset(self.other, "v_frank", 0.0)
func ev_col_1():
	if (((absf(GM.vget(self.other, "v_frank") - 1.0) < 0.00001))):
		(GM.f_sound_play(14.0))
		(GM.f_instance_destroy(self))
		for _w78 in GM.with_list((self.other), self):
			if _w78._dead:
				continue
			_w78.other = self
			_w78.sprite_index = 29.0
			_w78.image_speed = 1.0
		GM.vset(self.other, "v_frank", 0.0)
