extends "res://games/galaxy_arcade_2/scripts.gd"
var v_bob = 0.0
var v_frank = 0.0
func ev_create():
	(GM.f_sound_play(0.0))
	v_bob = 0.0
	v_frank = 1.0
	alarm[int(0.0)] = 20.0
	if (((absf(GM.vget(9.0, "v_great") - 0.0) < 0.00001))):
		(GM.f_action_move(self, "000000010", 20.0, 0.0))
		gravity_direction = 270.0
		gravity = 0.8
	else:
		(GM.f_action_move(self, "000000010", 40.0, 0.0))
		gravity_direction = 270.0
		gravity = 2.0
func ev_alarm_0():
	v_bob = 1.0
func ev_col_9():
	if (((absf(v_bob - 1.0) < 0.00001))):
		if (not (((absf(sprite_index - 26.0) < 0.00001)))):
			if (not (((absf(sprite_index - 27.0) < 0.00001)))):
				if (not (((absf(sprite_index - 28.0) < 0.00001)))):
					if (not (((absf(sprite_index - 29.0) < 0.00001)))):
						(GM.f_sound_play(1.0))
						GM.vset(9.0, "v_wow", 1.0)
						for _w28 in GM.with_list((self.other), self):
							if _w28._dead:
								continue
							_w28.other = self
							_w28.sprite_index = 9.0
							_w28.image_speed = 1.0
						(GM.f_instance_destroy(self))
					else:
						(GM.f_sound_play(1.0))
						(GM.f_sound_play(18.0))
						for _w29 in GM.with_list((self.other), self):
							if _w29._dead:
								continue
							_w29.other = self
							GM.vset(_w29, "v_great", 1.0)
						for _w30 in GM.with_list((self.other), self):
							if _w30._dead:
								continue
							_w30.other = self
							GM.vset(_w30, "v_wow", 1.0)
						for _w31 in GM.with_list((self.other), self):
							if _w31._dead:
								continue
							_w31.other = self
							_w31.sprite_index = 9.0
							_w31.image_speed = 1.0
						for _w32 in GM.with_list((self.other), self):
							if _w32._dead:
								continue
							_w32.other = self
							_w32.alarm[int(1.0)] = 200.0
						(GM.f_instance_destroy(self))
			else:
				(GM.f_sound_play(1.0))
				(GM.f_sound_play(16.0))
				for _w33 in GM.with_list((self.other), self):
					if _w33._dead:
						continue
					_w33.other = self
					GM.vset(_w33, "v_wow", 0.0)
				for _w34 in GM.with_list((self.other), self):
					if _w34._dead:
						continue
					_w34.other = self
					GM.vset(_w34, "v_poison", 1.0)
				for _w35 in GM.with_list((self.other), self):
					if _w35._dead:
						continue
					_w35.other = self
					_w35.sprite_index = 40.0
					_w35.image_speed = 1.0
				for _w36 in GM.with_list((self.other), self):
					if _w36._dead:
						continue
					_w36.other = self
					_w36.alarm[int(0.0)] = 200.0
				(GM.f_instance_destroy(self))
