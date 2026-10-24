extends "res://games/galaxy_arcade_2/scripts.gd"
var v_bob = 0.0
var v_frank = 0.0
func ev_create():
	(GM.f_sound_play(0.0))
	v_bob = 0.0
	v_frank = 1.0
	alarm[int(0.0)] = 20.0
	if (((absf(GM.vget(0.0, "v_great") - 0.0) < 0.00001))):
		(GM.f_action_move(self, "010000000", 20.0, 0.0))
		gravity_direction = 90.0
		gravity = 0.8
	else:
		(GM.f_action_move(self, "010000000", 40.0, 0.0))
		gravity_direction = 90.0
		gravity = 2.0
func ev_alarm_0():
	v_bob = 1.0
func ev_col_0():
	if (((absf(v_bob - 1.0) < 0.00001))):
		if (not (((absf(sprite_index - 26.0) < 0.00001)))):
			if (not (((absf(sprite_index - 27.0) < 0.00001)))):
				if (not (((absf(sprite_index - 28.0) < 0.00001)))):
					if (not (((absf(sprite_index - 29.0) < 0.00001)))):
						(GM.f_sound_play(1.0))
						GM.vset(0.0, "v_wow", 1.0)
						for _w1 in GM.with_list((self.other), self):
							if _w1._dead:
								continue
							_w1.other = self
							_w1.sprite_index = 5.0
							_w1.image_speed = 1.0
						(GM.f_instance_destroy(self))
					else:
						(GM.f_sound_play(1.0))
						(GM.f_sound_play(18.0))
						for _w2 in GM.with_list((self.other), self):
							if _w2._dead:
								continue
							_w2.other = self
							GM.vset(_w2, "v_great", 1.0)
						for _w3 in GM.with_list((self.other), self):
							if _w3._dead:
								continue
							_w3.other = self
							GM.vset(_w3, "v_wow", 1.0)
						for _w4 in GM.with_list((self.other), self):
							if _w4._dead:
								continue
							_w4.other = self
							_w4.sprite_index = 5.0
							_w4.image_speed = 1.0
						for _w5 in GM.with_list((self.other), self):
							if _w5._dead:
								continue
							_w5.other = self
							_w5.alarm[int(1.0)] = 200.0
						(GM.f_instance_destroy(self))
			else:
				(GM.f_sound_play(1.0))
				(GM.f_sound_play(16.0))
				for _w6 in GM.with_list((self.other), self):
					if _w6._dead:
						continue
					_w6.other = self
					GM.vset(_w6, "v_wow", 0.0)
				for _w7 in GM.with_list((self.other), self):
					if _w7._dead:
						continue
					_w7.other = self
					GM.vset(_w7, "v_poison", 1.0)
				for _w8 in GM.with_list((self.other), self):
					if _w8._dead:
						continue
					_w8.other = self
					_w8.sprite_index = 39.0
					_w8.image_speed = 1.0
				for _w9 in GM.with_list((self.other), self):
					if _w9._dead:
						continue
					_w9.other = self
					_w9.alarm[int(0.0)] = 200.0
				(GM.f_instance_destroy(self))
