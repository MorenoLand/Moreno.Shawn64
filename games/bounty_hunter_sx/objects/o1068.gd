extends "res://games/bounty_hunter_sx/scripts.gd"
var v_image_single = 0.0
func ev_create():
	v_image_single = (GM.f_random(5.0))
func ev_col_1095():
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(GM.room_height))
func ev_col_1087():
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(GM.room_height))
func ev_col_1068():
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(GM.room_height))
func ev_col_482():
	if (((absf((GM.f_instance_number(1112.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(1232.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create(0.0, 0.0, 1112.0))
	if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
		if (((absf((GM.f_instance_number(1232.0)) - 0.0) < 0.00001))):
			for _w49 in GM.with_list((self.other), self):
				if _w49._dead:
					continue
				_w49.other = self
				_w49.vspeed = 0.0
			for _w50 in GM.with_list((self.other), self):
				if _w50._dead:
					continue
				_w50.other = self
				_w50.hspeed = 0.0
			if ((absf(object_index - 1068.0) < 0.00001)):
				GM.G["planetat"] = "Tibitum - Home of the Monkeys"
			if ((absf(object_index - 1104.0) < 0.00001)):
				GM.G["planetat"] = "Lupitan - Sphere of Power"
			if ((absf(object_index - 1105.0) < 0.00001)):
				GM.G["planetat"] = "Skiola - Ice Planet"
			if ((absf(object_index - 1106.0) < 0.00001)):
				GM.G["planetat"] = "Dextopia - Land of the Pinchis"
			if ((absf(object_index - 1107.0) < 0.00001)):
				GM.G["planetat"] = "Squackle Land - Slave Planet"
			GM.background_hspeed[int(1.0)] = 0.0
			GM.background_vspeed[int(1.0)] = 0.0
			GM.background_hspeed[int(0.0)] = 0.0
			GM.background_vspeed[int(0.0)] = 0.0
			GM.background_hspeed[int(2.0)] = 0.0
			GM.background_vspeed[int(2.0)] = 0.0
			for _w51 in GM.with_list((482.0), self):
				if _w51._dead:
					continue
				_w51.other = self
				GM.G["aaa"] = GM.vget(_w51, "v_image_single")
				GM.G["bbb"] = GM.vget(_w51, "v_my_direction")
				GM.G["ccc"] = _w51.x
				GM.G["ddd"] = _w51.y
			(GM.f_sound_play(306.0))
			(GM.f_instance_create(0.0, 0.0, 1114.0))
			for _w52 in GM.with_list((482.0), self):
				if _w52._dead:
					continue
				_w52.other = self
				(GM.f_instance_destroy(_w52))
func ev_other_1():
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(GM.room_height))
