extends "res://games/galaxy_arcade_2/scripts.gd"
var v_bob = 0.0
var v_frank = 0.0
func ev_create():
	(GM.f_sound_play(0.0))
	v_bob = 0.0
	v_frank = 1.0
	alarm[int(0.0)] = 20.0
	if (((absf(GM.vget(6.0, "v_great") - 0.0) < 0.00001))):
		(GM.f_action_move(self, "010000000", 20.0, 0.0))
		gravity_direction = 90.0
		gravity = 0.8
	else:
		(GM.f_action_move(self, "010000000", 40.0, 0.0))
		gravity_direction = 90.0
		gravity = 2.0
func ev_alarm_0():
	v_bob = 1.0
func ev_col_6():
	if (((absf(v_bob - 1.0) < 0.00001))):
		if (not (((absf(sprite_index - 26.0) < 0.00001)))):
			if (not (((absf(sprite_index - 27.0) < 0.00001)))):
				if (not (((absf(sprite_index - 28.0) < 0.00001)))):
					if (not (((absf(sprite_index - 29.0) < 0.00001)))):
						(GM.f_sound_play(1.0))
						GM.vset(6.0, "v_wow", 1.0)
						for _w19 in GM.with_list((self.other), self):
							if _w19._dead:
								continue
							_w19.other = self
							_w19.sprite_index = 5.0
							_w19.image_speed = 1.0
						(GM.f_instance_destroy(self))
					else:
						(GM.f_sound_play(1.0))
						(GM.f_sound_play(18.0))
						for _w20 in GM.with_list((self.other), self):
							if _w20._dead:
								continue
							_w20.other = self
							GM.vset(_w20, "v_great", 1.0)
						for _w21 in GM.with_list((self.other), self):
							if _w21._dead:
								continue
							_w21.other = self
							GM.vset(_w21, "v_wow", 1.0)
						for _w22 in GM.with_list((self.other), self):
							if _w22._dead:
								continue
							_w22.other = self
							_w22.sprite_index = 5.0
							_w22.image_speed = 1.0
						for _w23 in GM.with_list((self.other), self):
							if _w23._dead:
								continue
							_w23.other = self
							_w23.alarm[int(1.0)] = 200.0
						(GM.f_instance_destroy(self))
			else:
				(GM.f_sound_play(1.0))
				(GM.f_sound_play(16.0))
				for _w24 in GM.with_list((self.other), self):
					if _w24._dead:
						continue
					_w24.other = self
					GM.vset(_w24, "v_wow", 0.0)
				for _w25 in GM.with_list((self.other), self):
					if _w25._dead:
						continue
					_w25.other = self
					GM.vset(_w25, "v_poison", 1.0)
				for _w26 in GM.with_list((self.other), self):
					if _w26._dead:
						continue
					_w26.other = self
					_w26.sprite_index = 39.0
					_w26.image_speed = 1.0
				for _w27 in GM.with_list((self.other), self):
					if _w27._dead:
						continue
					_w27.other = self
					_w27.alarm[int(0.0)] = 200.0
				(GM.f_instance_destroy(self))
