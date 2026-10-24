extends "res://games/galaxy_arcade_2/scripts.gd"
var v_bob = 0.0
var v_frank = 0.0
func ev_create():
	(GM.f_sound_play(0.0))
	v_bob = 0.0
	v_frank = 1.0
	alarm[int(0.0)] = 20.0
	if (((absf(GM.vget(4.0, "v_great") - 0.0) < 0.00001))):
		(GM.f_action_move(self, "010000000", 20.0, 0.0))
		gravity_direction = 90.0
		gravity = 0.8
	else:
		(GM.f_action_move(self, "010000000", 40.0, 0.0))
		gravity_direction = 90.0
		gravity = 2.0
func ev_alarm_0():
	v_bob = 1.0
func ev_col_4():
	if (((absf(v_bob - 1.0) < 0.00001))):
		if (not (((absf(sprite_index - 26.0) < 0.00001)))):
			if (not (((absf(sprite_index - 27.0) < 0.00001)))):
				if (not (((absf(sprite_index - 28.0) < 0.00001)))):
					if (not (((absf(sprite_index - 29.0) < 0.00001)))):
						(GM.f_sound_play(1.0))
						GM.vset(4.0, "v_wow", 1.0)
						for _w10 in GM.with_list((self.other), self):
							if _w10._dead:
								continue
							_w10.other = self
							_w10.sprite_index = 5.0
							_w10.image_speed = 1.0
						(GM.f_instance_destroy(self))
					else:
						(GM.f_sound_play(18.0))
						for _w11 in GM.with_list((self.other), self):
							if _w11._dead:
								continue
							_w11.other = self
							GM.vset(_w11, "v_great", 1.0)
						for _w12 in GM.with_list((self.other), self):
							if _w12._dead:
								continue
							_w12.other = self
							GM.vset(_w12, "v_wow", 1.0)
						for _w13 in GM.with_list((self.other), self):
							if _w13._dead:
								continue
							_w13.other = self
							_w13.sprite_index = 5.0
							_w13.image_speed = 1.0
						for _w14 in GM.with_list((self.other), self):
							if _w14._dead:
								continue
							_w14.other = self
							_w14.alarm[int(1.0)] = 200.0
						(GM.f_instance_destroy(self))
			else:
				(GM.f_sound_play(16.0))
				for _w15 in GM.with_list((self.other), self):
					if _w15._dead:
						continue
					_w15.other = self
					GM.vset(_w15, "v_wow", 0.0)
				for _w16 in GM.with_list((self.other), self):
					if _w16._dead:
						continue
					_w16.other = self
					GM.vset(_w16, "v_poison", 1.0)
				for _w17 in GM.with_list((self.other), self):
					if _w17._dead:
						continue
					_w17.other = self
					_w17.sprite_index = 39.0
					_w17.image_speed = 1.0
				for _w18 in GM.with_list((self.other), self):
					if _w18._dead:
						continue
					_w18.other = self
					_w18.alarm[int(0.0)] = 200.0
				(GM.f_instance_destroy(self))
