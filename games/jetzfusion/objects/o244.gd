extends "res://games/jetzfusion/scripts.gd"
var v_hitme = 0.0
var v_image_single = 0.0
var v_mypower = 0.0
var v_poom = 0.0
var v_randoms = 0.0
func ev_create():
	v_hitme = 1.0
	v_mypower = 3.0
	v_image_single = 0.0
	depth = (x + y)
	if ((absf(sprite_index - 322.0) < 0.00001)):
		depth = ((x + y) - 40.0)
	if ((absf(sprite_index - 47.0) < 0.00001)):
		v_poom = (GM.f_round((GM.f_random(1.0))))
		if ((absf(v_poom - 0.0) < 0.00001)):
			sprite_index = 48.0
	if ((absf(sprite_index - 216.0) < 0.00001)):
		v_poom = (GM.f_round((GM.f_random(1.0))))
		if ((absf(v_poom - 0.0) < 0.00001)):
			sprite_index = 271.0
	if ((absf(sprite_index - 300.0) < 0.00001)):
		v_poom = (GM.f_round((GM.f_random(1.0))))
		if ((absf(v_poom - 0.0) < 0.00001)):
			sprite_index = 305.0
func ev_alarm_1():
	(GM.f_instance_create((x + 40.0), (y + 30.0), 163.0))
func ev_alarm_0():
	v_hitme = 1.0
func ev_col_166():
	if (((absf(sprite_index - 48.0) < 0.00001) and (absf(v_image_single - 0.0) < 0.00001))):
		(GM.f_sound_play(32.0))
		for _r316 in range(int((25.0))):
			(GM.f_instance_create(((x + 40.0) + (GM.f_random(40.0))), ((y + 40.0) + (GM.f_random(40.0))), 27.0))
		v_image_single = 1.0
		v_hitme = 0.0
func ev_col_14():
	if ((absf(v_hitme - 1.0) < 0.00001)):
		if ((absf(GM.room - 0.0) < 0.00001)):
			for _r317 in range(int((5.0))):
				(GM.f_instance_create(((x + 40.0) + (GM.f_random(40.0))), ((y + 40.0) + (GM.f_random(40.0))), 27.0))
		if ((absf(GM.room - 3.0) < 0.00001)):
			for _r318 in range(int((5.0))):
				(GM.f_instance_create(((x + 40.0) + (GM.f_random(40.0))), ((y + 40.0) + (GM.f_random(40.0))), 228.0))
		if ((absf(GM.room - 6.0) < 0.00001)):
			for _r319 in range(int((5.0))):
				(GM.f_instance_create(((x + 40.0) + (GM.f_random(40.0))), ((y + 40.0) + (GM.f_random(40.0))), 27.0))
		v_mypower = v_mypower - 1.0
		v_randoms = (GM.f_round((GM.f_random(3.0))))
		if ((((absf(v_image_single - 0.0) < 0.00001) and (absf(sprite_index - 47.0) < 0.00001)) and (absf(v_randoms - 0.0) < 0.00001))):
			alarm[int(1.0)] = (1.0 + (GM.f_random(49.0)))
		if ((((absf(v_image_single - 0.0) < 0.00001) and (absf(sprite_index - 48.0) < 0.00001)) and (absf(v_randoms - 0.0) < 0.00001))):
			alarm[int(1.0)] = (1.0 + (GM.f_random(49.0)))
		if ((((absf(v_image_single - 0.0) < 0.00001) and (absf(sprite_index - 300.0) < 0.00001)) and (absf(v_randoms - 0.0) < 0.00001))):
			alarm[int(1.0)] = (1.0 + (GM.f_random(49.0)))
		if ((((absf(v_image_single - 0.0) < 0.00001) and (absf(sprite_index - 305.0) < 0.00001)) and (absf(v_randoms - 0.0) < 0.00001))):
			alarm[int(1.0)] = (1.0 + (GM.f_random(49.0)))
		v_randoms = (GM.f_round((GM.f_random(9.0))))
		if ((absf(v_randoms - 0.0) < 0.00001)):
			if ((((((GM.f_distance_to_object(self, 138.0)) < (GM.f_distance_to_object(self, 139.0))) and ((GM.f_distance_to_object(self, 138.0)) < (GM.f_distance_to_object(self, 140.0)))) and ((GM.f_distance_to_object(self, 138.0)) < (GM.f_distance_to_object(self, 141.0)))) and ((GM.f_distance_to_object(self, 138.0)) < (GM.f_distance_to_object(self, 142.0))))):
				for _w320 in GM.with_list((138.0), self):
					if _w320._dead:
						continue
					_w320.other = self
					(GM.f_instance_create(GM.vb(138.0, "x"), (GM.vb(138.0, "y") - 20.0), 143.0))
			else:
				if ((((((GM.f_distance_to_object(self, 139.0)) < (GM.f_distance_to_object(self, 138.0))) and ((GM.f_distance_to_object(self, 139.0)) < (GM.f_distance_to_object(self, 140.0)))) and ((GM.f_distance_to_object(self, 139.0)) < (GM.f_distance_to_object(self, 141.0)))) and ((GM.f_distance_to_object(self, 139.0)) < (GM.f_distance_to_object(self, 142.0))))):
					for _w321 in GM.with_list((139.0), self):
						if _w321._dead:
							continue
						_w321.other = self
						(GM.f_instance_create(GM.vb(139.0, "x"), (GM.vb(139.0, "y") - 20.0), 143.0))
				else:
					if ((((((GM.f_distance_to_object(self, 140.0)) < (GM.f_distance_to_object(self, 138.0))) and ((GM.f_distance_to_object(self, 140.0)) < (GM.f_distance_to_object(self, 139.0)))) and ((GM.f_distance_to_object(self, 140.0)) < (GM.f_distance_to_object(self, 141.0)))) and ((GM.f_distance_to_object(self, 140.0)) < (GM.f_distance_to_object(self, 142.0))))):
						for _w322 in GM.with_list((140.0), self):
							if _w322._dead:
								continue
							_w322.other = self
							(GM.f_instance_create(GM.vb(140.0, "x"), (GM.vb(138.0, "y") - 20.0), 143.0))
					else:
						if ((((((GM.f_distance_to_object(self, 141.0)) < (GM.f_distance_to_object(self, 138.0))) and ((GM.f_distance_to_object(self, 141.0)) < (GM.f_distance_to_object(self, 139.0)))) and ((GM.f_distance_to_object(self, 141.0)) < (GM.f_distance_to_object(self, 140.0)))) and ((GM.f_distance_to_object(self, 141.0)) < (GM.f_distance_to_object(self, 142.0))))):
							for _w323 in GM.with_list((141.0), self):
								if _w323._dead:
									continue
								_w323.other = self
								(GM.f_instance_create(GM.vb(141.0, "x"), (GM.vb(141.0, "y") - 20.0), 143.0))
						else:
							if ((((((GM.f_distance_to_object(self, 142.0)) < (GM.f_distance_to_object(self, 138.0))) and ((GM.f_distance_to_object(self, 142.0)) < (GM.f_distance_to_object(self, 139.0)))) and ((GM.f_distance_to_object(self, 142.0)) < (GM.f_distance_to_object(self, 140.0)))) and ((GM.f_distance_to_object(self, 142.0)) < (GM.f_distance_to_object(self, 141.0))))):
								for _w324 in GM.with_list((142.0), self):
									if _w324._dead:
										continue
									_w324.other = self
									(GM.f_instance_create(GM.vb(142.0, "x"), (GM.vb(142.0, "y") - 20.0), 143.0))
		if not (((absf(v_image_single - 1.0) < 0.00001))):
			if ((((absf(sprite_index - 47.0) < 0.00001) or (absf(sprite_index - 48.0) < 0.00001)) and (absf(v_image_single - 0.0) < 0.00001))):
				(GM.f_sound_play(32.0))
				for _r325 in range(int((25.0))):
					(GM.f_instance_create(((x + 40.0) + (GM.f_random(40.0))), ((y + 40.0) + (GM.f_random(40.0))), 27.0))
			if ((((absf(sprite_index - 216.0) < 0.00001) or (absf(sprite_index - 271.0) < 0.00001)) and (absf(v_image_single - 0.0) < 0.00001))):
				(GM.f_sound_play(32.0))
				for _r326 in range(int((25.0))):
					(GM.f_instance_create(((x + 40.0) + (GM.f_random(40.0))), ((y + 40.0) + (GM.f_random(40.0))), 27.0))
			if ((((absf(sprite_index - 300.0) < 0.00001) or (absf(sprite_index - 305.0) < 0.00001)) and (absf(v_image_single - 0.0) < 0.00001))):
				(GM.f_sound_play(32.0))
				for _r327 in range(int((25.0))):
					(GM.f_instance_create(((x + 40.0) + (GM.f_random(40.0))), ((y + 40.0) + (GM.f_random(40.0))), 27.0))
			v_image_single = 1.0
			alarm[int(0.0)] = 5.0
			v_hitme = 0.0
