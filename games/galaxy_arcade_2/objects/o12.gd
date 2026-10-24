extends "res://games/galaxy_arcade_2/scripts.gd"
var v_bob = 0.0
var v_frank = 0.0
func ev_create():
	(GM.f_sound_play(0.0))
	v_bob = 0.0
	v_frank = 1.0
	alarm[int(0.0)] = 20.0
	if (((absf(GM.vget(11.0, "v_great") - 0.0) < 0.00001))):
		(GM.f_action_move(self, "000000010", 20.0, 0.0))
		gravity_direction = 270.0
		gravity = 0.8
	else:
		(GM.f_action_move(self, "000000010", 40.0, 0.0))
		gravity_direction = 270.0
		gravity = 2.0
func ev_alarm_0():
	v_bob = 1.0
func ev_col_11():
	if (((absf(v_bob - 1.0) < 0.00001))):
		if (not (((absf(sprite_index - 26.0) < 0.00001)))):
			if (not (((absf(sprite_index - 27.0) < 0.00001)))):
				if (not (((absf(sprite_index - 28.0) < 0.00001)))):
					if (not (((absf(sprite_index - 29.0) < 0.00001)))):
						(GM.f_sound_play(1.0))
						GM.vset(11.0, "v_wow", 1.0)
						for _w37 in GM.with_list((self.other), self):
							if _w37._dead:
								continue
							_w37.other = self
							_w37.sprite_index = 9.0
							_w37.image_speed = 1.0
						(GM.f_instance_destroy(self))
					else:
						(GM.f_sound_play(1.0))
						(GM.f_sound_play(18.0))
						for _w38 in GM.with_list((self.other), self):
							if _w38._dead:
								continue
							_w38.other = self
							GM.vset(_w38, "v_great", 1.0)
						for _w39 in GM.with_list((self.other), self):
							if _w39._dead:
								continue
							_w39.other = self
							GM.vset(_w39, "v_wow", 1.0)
						for _w40 in GM.with_list((self.other), self):
							if _w40._dead:
								continue
							_w40.other = self
							_w40.sprite_index = 9.0
							_w40.image_speed = 1.0
						for _w41 in GM.with_list((self.other), self):
							if _w41._dead:
								continue
							_w41.other = self
							_w41.alarm[int(1.0)] = 200.0
						(GM.f_instance_destroy(self))
			else:
				(GM.f_sound_play(1.0))
				(GM.f_sound_play(16.0))
				for _w42 in GM.with_list((self.other), self):
					if _w42._dead:
						continue
					_w42.other = self
					GM.vset(_w42, "v_wow", 0.0)
				for _w43 in GM.with_list((self.other), self):
					if _w43._dead:
						continue
					_w43.other = self
					GM.vset(_w43, "v_poison", 1.0)
				for _w44 in GM.with_list((self.other), self):
					if _w44._dead:
						continue
					_w44.other = self
					_w44.sprite_index = 40.0
					_w44.image_speed = 1.0
				for _w45 in GM.with_list((self.other), self):
					if _w45._dead:
						continue
					_w45.other = self
					_w45.alarm[int(0.0)] = 200.0
				(GM.f_instance_destroy(self))
