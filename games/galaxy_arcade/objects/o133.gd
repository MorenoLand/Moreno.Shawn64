extends "res://games/galaxy_arcade/scripts.gd"
func ev_step():
	x = GM.mouse_x
	y = GM.mouse_y
	if ((((GM.f_place_free(self, (x + 0.0), (y + 0.0)))))) >= 0.5:
		for _w18 in GM.with_list((241.0), self):
			if _w18._dead:
				continue
			_w18.other = self
			_w18.sprite_index = 149.0
			_w18.image_speed = 1.0
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + 0.0), 56.0))))) >= 0.5:
		for _w19 in GM.with_list((241.0), self):
			if _w19._dead:
				continue
			_w19.other = self
			_w19.sprite_index = 148.0
			_w19.image_speed = 1.0
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + 0.0), 64.0))))) >= 0.5:
		for _w20 in GM.with_list((241.0), self):
			if _w20._dead:
				continue
			_w20.other = self
			_w20.sprite_index = 151.0
			_w20.image_speed = 1.0
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + 0.0), 166.0))))) >= 0.5:
		for _w21 in GM.with_list((241.0), self):
			if _w21._dead:
				continue
			_w21.other = self
			_w21.sprite_index = 152.0
			_w21.image_speed = 1.0
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + 0.0), 197.0))))) >= 0.5:
		for _w22 in GM.with_list((241.0), self):
			if _w22._dead:
				continue
			_w22.other = self
			_w22.sprite_index = 150.0
			_w22.image_speed = 1.0
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + 0.0), 65.0))))) >= 0.5:
		for _w23 in GM.with_list((241.0), self):
			if _w23._dead:
				continue
			_w23.other = self
			_w23.sprite_index = 153.0
			_w23.image_speed = 1.0
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + 0.0), 247.0))))) >= 0.5:
		for _w24 in GM.with_list((241.0), self):
			if _w24._dead:
				continue
			_w24.other = self
			_w24.sprite_index = 161.0
			_w24.image_speed = 1.0
