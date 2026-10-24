extends "res://games/galaxy_arcade_2/scripts.gd"
var v_greg = 0.0
var v_poo = 0.0
var v_stick = 0.0
func ev_create():
	v_poo = 0.0
	v_greg = 1.0
	if ((((GM.f_random(4.0)) < 1.0))):
		sprite_index = 14.0
		image_speed = 1.0
		(GM.f_action_move(self, "000001000", 3.5, 0.0))
	else:
		if ((((GM.f_random(3.0)) < 1.0))):
			sprite_index = 12.0
			image_speed = 1.0
			(GM.f_action_move(self, "000001000", 3.0, 0.0))
		else:
			if ((((GM.f_random(2.0)) < 1.0))):
				sprite_index = 13.0
				image_speed = 1.0
				(GM.f_action_move(self, "000001000", 2.5, 0.0))
			else:
				sprite_index = 11.0
				image_speed = 1.0
				(GM.f_action_move(self, "000001000", 2.0, 0.0))
func ev_step():
	if (((y < 50.0))):
		y = 15.0
	if (((y > 500.0))):
		y = 530.0
	if ((GM.eq(v_stick, 1.0))):
		for _r46 in range(int((100.0))):
			pass
func ev_col_12():
	if (((absf(GM.vget(self.other, "v_frank") - 1.0) < 0.00001))):
		GM.G["pts"] = GM.G["pts"] + 1.0
		GM.G["speedy"] = GM.G["speedy"] + (-0.5)
		(GM.f_sound_play(14.0))
		(GM.f_instance_destroy(self))
		if (((absf(sprite_index - 14.0) < 0.00001))):
			for _w47 in GM.with_list((self.other), self):
				if _w47._dead:
					continue
				_w47.other = self
				_w47.sprite_index = 15.0
				_w47.image_speed = 1.0
		if (((absf(sprite_index - 11.0) < 0.00001))):
			for _w48 in GM.with_list((self.other), self):
				if _w48._dead:
					continue
				_w48.other = self
				_w48.sprite_index = 16.0
				_w48.image_speed = 1.0
		if (((absf(sprite_index - 12.0) < 0.00001))):
			for _w49 in GM.with_list((self.other), self):
				if _w49._dead:
					continue
				_w49.other = self
				_w49.sprite_index = 17.0
				_w49.image_speed = 1.0
		if (((absf(sprite_index - 13.0) < 0.00001))):
			for _w50 in GM.with_list((self.other), self):
				if _w50._dead:
					continue
				_w50.other = self
				_w50.sprite_index = 18.0
				_w50.image_speed = 1.0
		GM.vset(self.other, "v_frank", 0.0)
func ev_col_10():
	if (((absf(GM.vget(self.other, "v_frank") - 1.0) < 0.00001))):
		GM.G["pts"] = GM.G["pts"] + 1.0
		GM.G["speedy"] = GM.G["speedy"] + (-0.5)
		(GM.f_sound_play(14.0))
		(GM.f_instance_destroy(self))
		if (((absf(sprite_index - 14.0) < 0.00001))):
			for _w51 in GM.with_list((self.other), self):
				if _w51._dead:
					continue
				_w51.other = self
				_w51.sprite_index = 15.0
				_w51.image_speed = 1.0
		if (((absf(sprite_index - 11.0) < 0.00001))):
			for _w52 in GM.with_list((self.other), self):
				if _w52._dead:
					continue
				_w52.other = self
				_w52.sprite_index = 16.0
				_w52.image_speed = 1.0
		if (((absf(sprite_index - 12.0) < 0.00001))):
			for _w53 in GM.with_list((self.other), self):
				if _w53._dead:
					continue
				_w53.other = self
				_w53.sprite_index = 17.0
				_w53.image_speed = 1.0
		if (((absf(sprite_index - 13.0) < 0.00001))):
			for _w54 in GM.with_list((self.other), self):
				if _w54._dead:
					continue
				_w54.other = self
				_w54.sprite_index = 18.0
				_w54.image_speed = 1.0
		GM.vset(self.other, "v_frank", 0.0)
func ev_col_8():
	(GM.f_sound_play(3.0))
	GM.G["deaths"] = GM.G["deaths"] + (-1.0)
	(GM.f_instance_destroy(self))
func ev_col_7():
	if (((absf(GM.vget(self.other, "v_frank") - 1.0) < 0.00001))):
		GM.G["pts"] = GM.G["pts"] + 1.0
		GM.G["speedy"] = GM.G["speedy"] + (-0.5)
		(GM.f_sound_play(14.0))
		(GM.f_instance_destroy(self))
		if (((absf(sprite_index - 14.0) < 0.00001))):
			for _w55 in GM.with_list((self.other), self):
				if _w55._dead:
					continue
				_w55.other = self
				_w55.sprite_index = 19.0
				_w55.image_speed = 1.0
		if (((absf(sprite_index - 11.0) < 0.00001))):
			for _w56 in GM.with_list((self.other), self):
				if _w56._dead:
					continue
				_w56.other = self
				_w56.sprite_index = 20.0
				_w56.image_speed = 1.0
		if (((absf(sprite_index - 12.0) < 0.00001))):
			for _w57 in GM.with_list((self.other), self):
				if _w57._dead:
					continue
				_w57.other = self
				_w57.sprite_index = 21.0
				_w57.image_speed = 1.0
		if (((absf(sprite_index - 13.0) < 0.00001))):
			for _w58 in GM.with_list((self.other), self):
				if _w58._dead:
					continue
				_w58.other = self
				_w58.sprite_index = 22.0
				_w58.image_speed = 1.0
		GM.vset(self.other, "v_frank", 0.0)
func ev_col_5():
	if (((absf(GM.vget(self.other, "v_frank") - 1.0) < 0.00001))):
		GM.G["pts"] = GM.G["pts"] + 1.0
		GM.G["speedy"] = GM.G["speedy"] + (-0.5)
		(GM.f_sound_play(14.0))
		(GM.f_instance_destroy(self))
		if (((absf(sprite_index - 14.0) < 0.00001))):
			for _w59 in GM.with_list((self.other), self):
				if _w59._dead:
					continue
				_w59.other = self
				_w59.sprite_index = 19.0
				_w59.image_speed = 1.0
		if (((absf(sprite_index - 11.0) < 0.00001))):
			for _w60 in GM.with_list((self.other), self):
				if _w60._dead:
					continue
				_w60.other = self
				_w60.sprite_index = 20.0
				_w60.image_speed = 1.0
		if (((absf(sprite_index - 12.0) < 0.00001))):
			for _w61 in GM.with_list((self.other), self):
				if _w61._dead:
					continue
				_w61.other = self
				_w61.sprite_index = 21.0
				_w61.image_speed = 1.0
		if (((absf(sprite_index - 13.0) < 0.00001))):
			for _w62 in GM.with_list((self.other), self):
				if _w62._dead:
					continue
				_w62.other = self
				_w62.sprite_index = 22.0
				_w62.image_speed = 1.0
		GM.vset(self.other, "v_frank", 0.0)
func ev_col_1():
	if (((absf(GM.vget(self.other, "v_frank") - 1.0) < 0.00001))):
		GM.G["pts"] = GM.G["pts"] + 1.0
		GM.G["speedy"] = GM.G["speedy"] + (-0.5)
		(GM.f_sound_play(14.0))
		(GM.f_instance_destroy(self))
		if (((absf(sprite_index - 14.0) < 0.00001))):
			for _w63 in GM.with_list((self.other), self):
				if _w63._dead:
					continue
				_w63.other = self
				_w63.sprite_index = 19.0
				_w63.image_speed = 1.0
		if (((absf(sprite_index - 11.0) < 0.00001))):
			for _w64 in GM.with_list((self.other), self):
				if _w64._dead:
					continue
				_w64.other = self
				_w64.sprite_index = 20.0
				_w64.image_speed = 1.0
		if (((absf(sprite_index - 12.0) < 0.00001))):
			for _w65 in GM.with_list((self.other), self):
				if _w65._dead:
					continue
				_w65.other = self
				_w65.sprite_index = 21.0
				_w65.image_speed = 1.0
		if (((absf(sprite_index - 13.0) < 0.00001))):
			for _w66 in GM.with_list((self.other), self):
				if _w66._dead:
					continue
				_w66.other = self
				_w66.sprite_index = 22.0
				_w66.image_speed = 1.0
		GM.vset(self.other, "v_frank", 0.0)
