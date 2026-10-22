extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_bridge = 0.0
var v_fluh = 0.0
var v_grrr = 0.0
var v_image_single = 0.0
var v_mypower = 0.0
var v_onelectric = 0.0
var v_onfire = 0.0
var v_persond = 0.0
var v_poon = 0.0
var v_randoom = 0.0
var v_sett = 0.0
var v_sheets = 0.0
var v_shizzed = 0.0
var v_wee = 0.0
var v_wee2 = 0.0
var v_weezing = 0.0
var v_weho = 0.0
var v_woot = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
var v_woot4 = 0.0
var v_wow = 0.0
var v_wow13 = 0.0
var v_wow15 = 0.0
var v_wow2 = 0.0
var v_wow3 = 0.0
var v_wow5 = 0.0
var v_xxx = 0.0
func ev_create():
	if not ((((GM.f_variable_local_exists(self, "onelectric")))) >= 0.5):
		v_onelectric = 0.0
	if not ((((GM.f_variable_local_exists(self, "onfire")))) >= 0.5):
		v_onfire = 0.0
	v_weezing = (GM.f_random(10000.0))
	v_wow = (GM.f_round((GM.f_random(1.0))))
	v_wow2 = (GM.f_random(2.0))
	v_wow3 = (v_wow2 / 10.0)
	v_wow5 = y
	image_speed = (0.3 + v_wow3)
	if ((absf(depth - (-7.0)) < 0.00001)):
		x = (GM.f_random(GM.room_width))
	if (((absf(depth - (-7.0)) < 0.00001) or (absf(depth - 3.0) < 0.00001))):
		if (GM.eq(v_wow, 0.0)):
			hspeed = (3.0 + v_wow2)
		if (GM.eq(v_wow, 1.0)):
			hspeed = ((-3.0) - v_wow2)
		depth = (-7.0)
		y = y - 10.0
		v_shizzed = (GM.f_random(30.0))
		v_bridge = 0.0
	if ((absf(depth - 13.0) < 0.00001)):
		if (GM.eq(v_wow, 0.0)):
			hspeed = (3.0 + v_wow2)
		if (GM.eq(v_wow, 1.0)):
			hspeed = ((-3.0) - v_wow2)
		depth = 13.0
		y = y - 10.0
		v_shizzed = (GM.f_random(13.0))
		if ((v_shizzed > 10.0)):
			v_bridge = 1.0
		else:
			v_bridge = 0.0
	if ((absf(depth - 16.0) < 0.00001)):
		if (GM.eq(v_wow, 0.0)):
			hspeed = (3.0 + v_wow2)
		if (GM.eq(v_wow, 1.0)):
			hspeed = ((-3.0) - v_wow2)
		v_shizzed = 0.0
		depth = (-7.0)
		v_bridge = 0.0
	if (((absf(depth - 24.0) < 0.00001) or (absf(depth - 23.0) < 0.00001))):
		v_shizzed = 0.0
		if ((absf(depth - 24.0) < 0.00001)):
			v_bridge = 1.0
		else:
			v_bridge = 0.0
		depth = (-11.0)
	y = GM.add(y, v_shizzed)
	depth = depth - (v_shizzed / 60.0)
	v_wow15 = 0.0
	v_wow13 = 0.0
	v_mypower = 2.0
	if ((absf(depth - 16.0) >= 0.00001)):
		v_persond = (GM.f_floor((GM.f_random(13.99))))
		if ((hspeed > 0.0)):
			if ((absf(v_persond - 0.0) < 0.00001)):
				sprite_index = 504.0
			if ((absf(v_persond - 1.0) < 0.00001)):
				sprite_index = 627.0
			if ((absf(v_persond - 2.0) < 0.00001)):
				sprite_index = 636.0
			if ((absf(v_persond - 3.0) < 0.00001)):
				sprite_index = 654.0
			if ((absf(v_persond - 4.0) < 0.00001)):
				sprite_index = 659.0
			if ((absf(v_persond - 5.0) < 0.00001)):
				sprite_index = 717.0
			if ((absf(v_persond - 6.0) < 0.00001)):
				sprite_index = 683.0
			if ((absf(v_persond - 7.0) < 0.00001)):
				sprite_index = 688.0
			if ((absf(v_persond - 8.0) < 0.00001)):
				sprite_index = 692.0
			if ((absf(v_persond - 9.0) < 0.00001)):
				sprite_index = 697.0
			if ((absf(v_persond - 10.0) < 0.00001)):
				sprite_index = 702.0
			if ((absf(v_persond - 11.0) < 0.00001)):
				sprite_index = 707.0
			if ((absf(v_persond - 12.0) < 0.00001)):
				sprite_index = 712.0
			if ((absf(v_persond - 13.0) < 0.00001)):
				speed = speed + 2.0
				sprite_index = 514.0
		if ((hspeed < 0.0)):
			if ((absf(v_persond - 0.0) < 0.00001)):
				sprite_index = 513.0
			if ((absf(v_persond - 1.0) < 0.00001)):
				sprite_index = 633.0
			if ((absf(v_persond - 2.0) < 0.00001)):
				sprite_index = 639.0
			if ((absf(v_persond - 3.0) < 0.00001)):
				sprite_index = 655.0
			if ((absf(v_persond - 4.0) < 0.00001)):
				sprite_index = 661.0
			if ((absf(v_persond - 5.0) < 0.00001)):
				sprite_index = 718.0
			if ((absf(v_persond - 6.0) < 0.00001)):
				sprite_index = 684.0
			if ((absf(v_persond - 7.0) < 0.00001)):
				sprite_index = 689.0
			if ((absf(v_persond - 8.0) < 0.00001)):
				sprite_index = 693.0
			if ((absf(v_persond - 9.0) < 0.00001)):
				sprite_index = 698.0
			if ((absf(v_persond - 10.0) < 0.00001)):
				sprite_index = 703.0
			if ((absf(v_persond - 11.0) < 0.00001)):
				sprite_index = 708.0
			if ((absf(v_persond - 12.0) < 0.00001)):
				sprite_index = 713.0
			if ((absf(v_persond - 13.0) < 0.00001)):
				speed = speed + 2.0
				sprite_index = 515.0
func ev_alarm_7():
	v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 734.0))
	GM.vsetb(v_wee, "depth", depth)
	if not ((((GM.f_variable_local_exists(self, "sheets")))) >= 0.5):
		v_sheets = 0.0
	if ((absf(v_sheets - 0.0) < 0.00001)):
		v_wee = (GM.f_instance_create(x, y, 914.0))
		GM.vsetb(v_wee, "depth", depth)
		GM.vset(v_wee, "v_image_single", 0.0)
		v_sheets = 1.0
	else:
		if ((absf(v_sheets - 1.0) < 0.00001)):
			v_sheets = 2.0
		else:
			if ((absf(v_sheets - 2.0) < 0.00001)):
				v_wee = (GM.f_instance_create(x, y, 914.0))
				GM.vsetb(v_wee, "depth", depth)
				GM.vset(v_wee, "v_image_single", 1.0)
				v_sheets = 0.0
	alarm[int(7.0)] = 2.0
func ev_alarm_6():
	v_onelectric = 1.0
func ev_alarm_5():
	v_woot = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 490.0))
	v_woot2 = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 905.0))
	v_woot3 = (GM.f_instance_create(((x + (sprite_width / 2.0)) - 1.0), ((y + (sprite_height / 2.0)) - 10.0), 906.0))
	GM.vsetb(v_woot, "hspeed", GM.vb(v_woot, "hspeed") + hspeed)
	GM.vsetb(v_woot, "vspeed", GM.vb(v_woot, "vspeed") + vspeed)
	GM.vsetb(v_woot, "depth", depth)
	GM.vsetb(v_woot2, "hspeed", GM.vb(v_woot2, "hspeed") + hspeed)
	GM.vsetb(v_woot2, "vspeed", GM.vb(v_woot2, "vspeed") + vspeed)
	GM.vsetb(v_woot2, "depth", depth)
	GM.vsetb(v_woot3, "hspeed", GM.vb(v_woot3, "hspeed") + hspeed)
	GM.vsetb(v_woot3, "vspeed", GM.vb(v_woot3, "vspeed") + vspeed)
	GM.vsetb(v_woot3, "depth", depth)
	v_woot4 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 912.0))
	GM.vsetb(v_woot4, "depth", depth)
	GM.vset(v_woot4, "v_yyy", ((y + sprite_height) - 6.0))
	v_mypower = v_mypower - 1.0
	if ((speed < 3.0)):
		self.ev_user(1.0)
	v_wow = (GM.f_round((GM.f_random(20.0))))
	if (GM.eq(v_wow, 0.0)):
		(self.script_personscream())
	if ((speed > 1.0)):
		speed = speed - 0.2
	alarm[int(5.0)] = 1.0
func ev_alarm_4():
	v_onfire = 1.0
func ev_alarm_3():
	speed = 6.0
	self.ev_user(0.0)
	self.ev_user(1.0)
func ev_alarm_2():
	self.ev_user(0.0)
func ev_alarm_1():
	if ((absf(v_wow15 - 1.0) < 0.00001)):
		if ((speed > v_wow13)):
			image_speed = (0.3 + v_wow3)
			speed = speed - 0.1
		else:
			v_wow15 = 0.0
		alarm[int(1.0)] = 1.0
func ev_alarm_0():
	v_wow2 = (GM.f_random(2.0))
	v_wow3 = (v_wow2 / 10.0)
	if ((absf(v_persond - 13.0) < 0.00001)):
		v_wow13 = (5.0 + v_wow2)
	else:
		v_wow13 = (3.0 + v_wow2)
	image_speed = (0.3 + v_wow3)
	alarm[int(1.0)] = 1.0
	v_wow15 = 1.0
func ev_col_1086():
	if ((y > 1000.0)):
		v_mypower = v_mypower - 5.0
		self.ev_user(0.0)
		self.ev_user(1.0)
		for _w102 in GM.with_list((self.other), self):
			if _w102._dead:
				continue
			_w102.other = self
			_w102.ev_user(0.0)
func ev_col_1010():
	if ((y > 1000.0)):
		v_mypower = v_mypower - 5.0
		self.ev_user(0.0)
		self.ev_user(1.0)
		for _w103 in GM.with_list((self.other), self):
			if _w103._dead:
				continue
			_w103.other = self
			_w103.ev_user(0.0)
func ev_col_976():
	if ((absf((GM.f_instance_number(977.0)) - 0.0) < 0.00001)):
		(self.script_personscream())
		v_wee = (GM.f_instance_create(x, y, 977.0))
		GM.vsetb(v_wee, "direction", direction)
		GM.vsetb(v_wee, "speed", 0.1)
		GM.vsetb(v_wee, "sprite_index", sprite_index)
		GM.vset(v_wee, "v_persond", v_persond)
		GM.vsetb(v_wee, "depth", depth)
		(GM.f_instance_destroy(self))
func ev_col_959():
	v_wee = (GM.f_round((GM.f_random(4.0))))
	if (GM.eq(v_wee, 0.0)):
		v_mypower = v_mypower - 5.0
		self.ev_user(0.0)
		self.ev_user(1.0)
func ev_col_899():
	if ((y > 1000.0)):
		v_mypower = v_mypower - 5.0
		self.ev_user(0.0)
		self.ev_user(1.0)
func ev_col_791():
	if (((y > 1000.0) and ((GM.f_instance_number(643.0)) <= 2.0))):
		v_mypower = v_mypower - 5.0
		GM.vsetb(self.other, "vspeed", GM.vb(self.other, "vspeed") - 2.0)
		(GM.f_sound_play(190.0))
		self.ev_user(0.0)
		self.ev_user(1.0)
		for _w104 in GM.with_list((self.other), self):
			if _w104._dead:
				continue
			_w104.other = self
			_w104.ev_user(0.0)
func ev_col_772():
	if (((absf(v_onfire - 0.0) < 0.00001) and (absf(v_onelectric - 0.0) < 0.00001))):
		if (((x + (sprite_width / 2.0)) > (GM.vb(self.other, "x") + (GM.vb(self.other, "sprite_width") / 2.0)))):
			direction = 0.0
			if ((absf(sprite_index - 513.0) < 0.00001)):
				sprite_index = 504.0
			if ((absf(sprite_index - 515.0) < 0.00001)):
				sprite_index = 514.0
			if ((absf(sprite_index - 633.0) < 0.00001)):
				sprite_index = 627.0
			if ((absf(sprite_index - 639.0) < 0.00001)):
				sprite_index = 636.0
			if ((absf(sprite_index - 655.0) < 0.00001)):
				sprite_index = 654.0
			if ((absf(sprite_index - 661.0) < 0.00001)):
				sprite_index = 659.0
			if ((absf(sprite_index - 718.0) < 0.00001)):
				sprite_index = 717.0
			if ((absf(sprite_index - 684.0) < 0.00001)):
				sprite_index = 683.0
			if ((absf(sprite_index - 689.0) < 0.00001)):
				sprite_index = 688.0
			if ((absf(sprite_index - 693.0) < 0.00001)):
				sprite_index = 692.0
			if ((absf(sprite_index - 698.0) < 0.00001)):
				sprite_index = 697.0
			if ((absf(sprite_index - 703.0) < 0.00001)):
				sprite_index = 702.0
			if ((absf(sprite_index - 708.0) < 0.00001)):
				sprite_index = 707.0
			if ((absf(sprite_index - 713.0) < 0.00001)):
				sprite_index = 712.0
		else:
			if ((absf(sprite_index - 504.0) < 0.00001)):
				sprite_index = 513.0
			if ((absf(sprite_index - 514.0) < 0.00001)):
				sprite_index = 515.0
			if ((absf(sprite_index - 627.0) < 0.00001)):
				sprite_index = 633.0
			if ((absf(sprite_index - 636.0) < 0.00001)):
				sprite_index = 639.0
			if ((absf(sprite_index - 654.0) < 0.00001)):
				sprite_index = 655.0
			if ((absf(sprite_index - 659.0) < 0.00001)):
				sprite_index = 661.0
			if ((absf(sprite_index - 717.0) < 0.00001)):
				sprite_index = 718.0
			if ((absf(sprite_index - 683.0) < 0.00001)):
				sprite_index = 684.0
			if ((absf(sprite_index - 688.0) < 0.00001)):
				sprite_index = 689.0
			if ((absf(sprite_index - 692.0) < 0.00001)):
				sprite_index = 693.0
			if ((absf(sprite_index - 697.0) < 0.00001)):
				sprite_index = 698.0
			if ((absf(sprite_index - 702.0) < 0.00001)):
				sprite_index = 703.0
			if ((absf(sprite_index - 707.0) < 0.00001)):
				sprite_index = 708.0
			if ((absf(sprite_index - 712.0) < 0.00001)):
				sprite_index = 713.0
			direction = 180.0
		v_image_single = 0.0
		v_image_single = (-1.0)
		if ((absf(v_persond - 13.0) < 0.00001)):
			speed = (12.0 + (GM.f_random(2.0)))
		else:
			speed = (9.0 + (GM.f_random(2.0)))
		image_speed = 1.0
		alarm[int(0.0)] = (30.0 + (GM.f_random(20.0)))
func ev_col_770():
	if ((((y > 1000.0) and (GM.vb(self.other, "speed") > 6.0)) and ((GM.f_instance_number(643.0)) <= 3.0))):
		GM.vsetb(self.other, "vspeed", GM.vb(self.other, "vspeed") - 0.5)
		(GM.f_sound_play(190.0))
		v_mypower = v_mypower - 5.0
		self.ev_user(0.0)
		self.ev_user(1.0)
func ev_col_717():
	self.ev_user(4.0)
	for _w105 in GM.with_list((self.other), self):
		if _w105._dead:
			continue
		_w105.other = self
		(GM.f_instance_destroy(_w105))
func ev_col_656():
	if (((absf(v_onfire - 0.0) < 0.00001))):
		if ((((GM.f_instance_number(660.0)) < 3.0))):
			if ((((GM.f_instance_number(905.0)) < 80.0))):
				if ((((GM.f_random(2.0)) < 1.0))):
					if ((absf(v_persond - 13.0) < 0.00001)):
						v_weho = (GM.f_instance_create(x, y, 752.0))
						GM.vsetb(v_weho, "direction", (direction - 180.0))
						GM.vsetb(v_weho, "speed", ((-10.0) + (GM.f_random(20.0))))
						GM.vsetb(v_weho, "depth", depth)
					v_randoom = (GM.f_round((GM.f_random(10.0))))
					if ((v_randoom < 4.0)):
						v_wow = (GM.f_instance_create((x + 10.0), (y + 30.0), 788.0))
						if ((y > 850.0)):
							GM.vset(v_wow, "v_yyy", (y + 50.0))
						else:
							GM.vset(v_wow, "v_yyy", 1130.0)
					self.ev_user(0.0)
					(self.script_adddamage())
					(GM.f_sound_play(151.0))
					(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 545.0))
					(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 663.0))
					for _r106 in range(int((20.0))):
						v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 978.0))
						GM.vsetb(v_wee, "direction", (40.0 + (GM.f_random(100.0))))
						GM.vset(v_wee, "v_yyy", ((y + sprite_height) - 6.0))
						GM.vsetb(v_wee, "depth", (depth - 1.0))
					for _r107 in range(int((25.0))):
						v_sett = (GM.f_instance_create((x + (GM.f_random((sprite_width - 2.0)))), (y + (GM.f_random(20.0))), 653.0))
						GM.vsetb(v_sett, "direction", (20.0 + (GM.f_random(140.0))))
						GM.vset(v_sett, "v_yyy", ((y + sprite_height) - 6.0))
						GM.vsetb(v_sett, "depth", depth)
					for _r108 in range(int((25.0))):
						v_sett = (GM.f_instance_create((x + (GM.f_random((sprite_width - 2.0)))), (y + (GM.f_random(20.0))), 664.0))
						v_fluh = GM.vget(self.other, "v_wooper")
						GM.vsetb(v_sett, "direction", ((((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0) - 30.0) + (GM.f_random(60.0))))
						GM.vset(v_sett, "v_yyy", ((y + sprite_height) - 6.0))
						GM.vsetb(v_sett, "depth", depth)
					while true:
						v_xxx = (GM.f_random(GM.room_width))
						if (((v_xxx < (GM.view_xview[0] - 40.0)) or (v_xxx > (GM.view_xview[0] + 800.0)))):
							break
					(GM.f_instance_create(v_xxx, 1080.0, 546.0))
					v_grrr = (GM.f_round((GM.f_random(1000.0))))
					if ((absf(v_bridge - 0.0) < 0.00001)):
						v_sett = (GM.f_instance_create((x + (sprite_width / 2.0)), ((y + sprite_height) - 5.0), 652.0))
						GM.vset(v_sett, "v_grrr", v_grrr)
					else:
						depth = (-4.0)
					v_sett = (GM.f_instance_create((x + 3.0), y, 660.0))
					v_fluh = GM.vget(self.other, "v_wooper")
					GM.vsetb(v_sett, "direction", ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0))
					GM.vsetb(v_sett, "speed", GM.vb(v_sett, "speed") + (5.0 + (GM.f_random(10.0))))
					GM.vsetb(v_sett, "depth", depth)
					GM.vsetb(v_sett, "sprite_index", 613.0)
					GM.vset(v_sett, "v_grrr", v_grrr)
					GM.vset(v_sett, "v_gore", ((y + sprite_height) - 6.0))
					v_sett = (GM.f_instance_create((x + 11.0), (y + 31.0), 644.0))
					v_fluh = GM.vget(self.other, "v_wooper")
					if ((absf(v_persond - 0.0) < 0.00001)):
						GM.vsetb(v_sett, "sprite_index", 600.0)
					if ((absf(v_persond - 1.0) < 0.00001)):
						GM.vsetb(v_sett, "sprite_index", 629.0)
					if ((absf(v_persond - 2.0) < 0.00001)):
						GM.vsetb(v_sett, "sprite_index", 640.0)
					if ((absf(v_persond - 3.0) < 0.00001)):
						GM.vsetb(v_sett, "sprite_index", 656.0)
					if ((absf(v_persond - 4.0) < 0.00001)):
						GM.vsetb(v_sett, "sprite_index", 662.0)
					if ((absf(v_persond - 5.0) < 0.00001)):
						GM.vsetb(v_sett, "sprite_index", 721.0)
					if ((absf(v_persond - 6.0) < 0.00001)):
						GM.vsetb(v_sett, "sprite_index", 687.0)
					if ((absf(v_persond - 7.0) < 0.00001)):
						GM.vsetb(v_sett, "sprite_index", 600.0)
					if ((absf(v_persond - 8.0) < 0.00001)):
						GM.vsetb(v_sett, "sprite_index", 696.0)
					if ((absf(v_persond - 9.0) < 0.00001)):
						GM.vsetb(v_sett, "sprite_index", 701.0)
					if ((absf(v_persond - 10.0) < 0.00001)):
						GM.vsetb(v_sett, "sprite_index", 706.0)
					if ((absf(v_persond - 11.0) < 0.00001)):
						GM.vsetb(v_sett, "sprite_index", 711.0)
					if ((absf(v_persond - 12.0) < 0.00001)):
						GM.vsetb(v_sett, "sprite_index", 716.0)
					if ((absf(v_persond - 13.0) < 0.00001)):
						GM.vsetb(v_sett, "sprite_index", 629.0)
					GM.vsetb(v_sett, "direction", ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0))
					GM.vsetb(v_sett, "speed", GM.vb(v_sett, "speed") + (5.0 + (GM.f_random(10.0))))
					GM.vsetb(v_sett, "depth", (depth + 1.0))
					GM.vset(v_sett, "v_image_single", 0.0)
					GM.vset(v_sett, "v_grrr", v_grrr)
					GM.vset(v_sett, "v_gore", ((y + sprite_height) - 6.0))
					v_sett = (GM.f_instance_create(((x + 9.0) + (GM.f_random(13.0))), (y + 45.0), 645.0))
					v_fluh = GM.vget(self.other, "v_wooper")
					GM.vsetb(v_sett, "direction", ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0))
					GM.vsetb(v_sett, "speed", GM.vb(v_sett, "speed") + (5.0 + (GM.f_random(10.0))))
					GM.vsetb(v_sett, "depth", depth)
					GM.vset(v_sett, "v_image_single", 0.0)
					GM.vset(v_sett, "v_grrr", v_grrr)
					GM.vset(v_sett, "v_gore", ((y + sprite_height) - 6.0))
					v_sett = (GM.f_instance_create(((x + 9.0) + (GM.f_random(13.0))), (y + 45.0), 645.0))
					v_fluh = GM.vget(self.other, "v_wooper")
					GM.vsetb(v_sett, "direction", ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0))
					GM.vsetb(v_sett, "speed", GM.vb(v_sett, "speed") + (5.0 + (GM.f_random(10.0))))
					GM.vsetb(v_sett, "depth", depth)
					GM.vset(v_sett, "v_image_single", 0.0)
					GM.vset(v_sett, "v_grrr", v_grrr)
					GM.vset(v_sett, "v_gore", ((y + sprite_height) - 6.0))
					v_sett = (GM.f_instance_create(((x + 5.0) + (GM.f_random(9.0))), ((y + 34.0) + (GM.f_random(2.0))), 646.0))
					v_fluh = GM.vget(self.other, "v_wooper")
					GM.vsetb(v_sett, "direction", ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0))
					GM.vsetb(v_sett, "speed", GM.vb(v_sett, "speed") + (5.0 + (GM.f_random(10.0))))
					GM.vset(v_sett, "v_image_single", 0.0)
					GM.vsetb(v_sett, "depth", depth)
					GM.vset(v_sett, "v_grrr", v_grrr)
					GM.vset(v_sett, "v_gore", ((y + sprite_height) - 6.0))
					v_sett = (GM.f_instance_create(((x + 5.0) + (GM.f_random(9.0))), ((y + 34.0) + (GM.f_random(2.0))), 646.0))
					v_fluh = GM.vget(self.other, "v_wooper")
					GM.vsetb(v_sett, "direction", ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0))
					GM.vsetb(v_sett, "speed", GM.vb(v_sett, "speed") + (5.0 + (GM.f_random(10.0))))
					GM.vset(v_sett, "v_image_single", 1.0)
					GM.vsetb(v_sett, "depth", (depth + 2.0))
					GM.vset(v_sett, "v_grrr", v_grrr)
					GM.vset(v_sett, "v_gore", ((y + sprite_height) - 6.0))
					(GM.f_instance_destroy(self))
				else:
					self.ev_user(4.0)
func ev_col_634():
	if ((y > 1000.0)):
		v_mypower = v_mypower - 5.0
		self.ev_user(0.0)
		self.ev_user(1.0)
func ev_col_618():
	self.ev_user(3.0)
func ev_col_592():
	if ((y > 1000.0)):
		v_mypower = v_mypower - 5.0
		self.ev_user(0.0)
		self.ev_user(1.0)
		for _w109 in GM.with_list((self.other), self):
			if _w109._dead:
				continue
			_w109.other = self
			_w109.ev_user(0.0)
func ev_col_545():
	if (((absf(v_onfire - 0.0) < 0.00001) and (absf(v_onelectric - 0.0) < 0.00001))):
		if (((GM.f_instance_number(7.0)) > 0.0)):
			if (((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) < (x + (sprite_width / 2.0)))):
				direction = 0.0
				if ((absf(sprite_index - 513.0) < 0.00001)):
					sprite_index = 504.0
				if ((absf(sprite_index - 515.0) < 0.00001)):
					sprite_index = 514.0
				if ((absf(sprite_index - 633.0) < 0.00001)):
					sprite_index = 627.0
				if ((absf(sprite_index - 639.0) < 0.00001)):
					sprite_index = 636.0
				if ((absf(sprite_index - 655.0) < 0.00001)):
					sprite_index = 654.0
				if ((absf(sprite_index - 661.0) < 0.00001)):
					sprite_index = 659.0
				if ((absf(sprite_index - 718.0) < 0.00001)):
					sprite_index = 717.0
				if ((absf(sprite_index - 684.0) < 0.00001)):
					sprite_index = 683.0
				if ((absf(sprite_index - 689.0) < 0.00001)):
					sprite_index = 688.0
				if ((absf(sprite_index - 693.0) < 0.00001)):
					sprite_index = 692.0
				if ((absf(sprite_index - 698.0) < 0.00001)):
					sprite_index = 697.0
				if ((absf(sprite_index - 703.0) < 0.00001)):
					sprite_index = 702.0
				if ((absf(sprite_index - 708.0) < 0.00001)):
					sprite_index = 707.0
				if ((absf(sprite_index - 713.0) < 0.00001)):
					sprite_index = 712.0
			else:
				if ((absf(sprite_index - 504.0) < 0.00001)):
					sprite_index = 513.0
				if ((absf(sprite_index - 514.0) < 0.00001)):
					sprite_index = 515.0
				if ((absf(sprite_index - 627.0) < 0.00001)):
					sprite_index = 633.0
				if ((absf(sprite_index - 636.0) < 0.00001)):
					sprite_index = 639.0
				if ((absf(sprite_index - 654.0) < 0.00001)):
					sprite_index = 655.0
				if ((absf(sprite_index - 659.0) < 0.00001)):
					sprite_index = 661.0
				if ((absf(sprite_index - 717.0) < 0.00001)):
					sprite_index = 718.0
				if ((absf(sprite_index - 683.0) < 0.00001)):
					sprite_index = 684.0
				if ((absf(sprite_index - 688.0) < 0.00001)):
					sprite_index = 689.0
				if ((absf(sprite_index - 692.0) < 0.00001)):
					sprite_index = 693.0
				if ((absf(sprite_index - 697.0) < 0.00001)):
					sprite_index = 698.0
				if ((absf(sprite_index - 702.0) < 0.00001)):
					sprite_index = 703.0
				if ((absf(sprite_index - 707.0) < 0.00001)):
					sprite_index = 708.0
				if ((absf(sprite_index - 712.0) < 0.00001)):
					sprite_index = 713.0
				direction = 180.0
			v_image_single = 0.0
			v_image_single = (-1.0)
			if ((absf(v_persond - 13.0) < 0.00001)):
				speed = (12.0 + (GM.f_random(2.0)))
			else:
				speed = (9.0 + (GM.f_random(2.0)))
			image_speed = 1.0
			alarm[int(0.0)] = (30.0 + (GM.f_random(20.0)))
func ev_col_532():
	(GM.f_instance_destroy(self))
func ev_col_518():
	if ((((GM.f_random(20.0)) < 1.0))):
		if ((v_shizzed <= 10.0)):
			if (((GM.f_instance_number(531.0)) < 100.0)):
				while true:
					v_xxx = (GM.f_random(GM.room_width))
					if (((v_xxx < (GM.view_xview[0] - 40.0)) or (v_xxx > (GM.view_xview[0] + 800.0)))):
						break
				(GM.f_instance_create(v_xxx, 1080.0, 546.0))
			(GM.f_instance_destroy(self))
			if (((GM.vb(self.other, "x") + (GM.vb(self.other, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
				v_wee2 = (GM.f_instance_create(GM.vb(self.other, "x"), y, 709.0))
			else:
				v_wee2 = (GM.f_instance_create((GM.vb(self.other, "x") + 40.0), y, 709.0))
			GM.vsetb(v_wee2, "depth", depth)
			GM.vsetb(v_wee2, "sprite_index", sprite_index)
func ev_col_502():
	if not (((absf(GM.vb(self.other, "sprite_index") - 494.0) < 0.00001))):
		self.ev_user(1.0)
		if ((v_mypower < 1.0)):
			self.ev_user(0.0)
		for _w110 in GM.with_list((self.other), self):
			if _w110._dead:
				continue
			_w110.other = self
			(GM.f_instance_destroy(_w110))
func ev_col_494():
	self.ev_user(3.0)
func ev_col_491():
	self.ev_user(4.0)
func ev_other_15():
	while true:
		v_xxx = (GM.f_random(GM.room_width))
		if (((v_xxx < (GM.view_xview[0] - 40.0)) or (v_xxx > (GM.view_xview[0] + 800.0)))):
			break
	if (((speed > 6.0)) and not (((absf(depth - (-11.0)) < 0.00001)))):
		speed = 6.0
	(GM.f_instance_create(v_xxx, 1080.0, 546.0))
	(GM.f_sound_play(190.0))
	for _r111 in range(int((20.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 664.0))
		GM.vsetb(v_wee, "direction", (50.0 + (GM.f_random(80.0))))
		GM.vset(v_wee, "v_yyy", ((y + sprite_height) - 6.0))
		GM.vsetb(v_wee, "depth", (depth - 1.0))
	for _r112 in range(int((10.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 653.0))
		GM.vsetb(v_wee, "direction", (50.0 + (GM.f_random(80.0))))
		GM.vset(v_wee, "v_yyy", ((y + sprite_height) - 6.0))
		GM.vsetb(v_wee, "depth", (depth - 1.0))
	for _r113 in range(int((10.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 978.0))
		GM.vsetb(v_wee, "direction", (40.0 + (GM.f_random(100.0))))
		GM.vset(v_wee, "v_yyy", ((y + sprite_height) - 6.0))
		GM.vsetb(v_wee, "depth", (depth - 1.0))
	(GM.f_instance_destroy(self))
func ev_other_14():
	if (((absf(v_onfire - 0.0) < 0.00001) and ((GM.f_instance_number(905.0)) < 80.0))):
		alarm[int(4.0)] = 1.0
		alarm[int(5.0)] = 1.0
		(self.script_personscream())
func ev_other_13():
	if ((absf(v_onelectric - 0.0) < 0.00001)):
		if ((((GM.f_instance_number(917.0)) < 4.0) or (absf((GM.f_instance_number(1127.0)) - 1.0) < 0.00001))):
			(GM.f_instance_create(x, y, 917.0))
			(GM.f_sound_play(212.0))
			(self.script_personscream())
			v_mypower = (-1.0)
			v_onelectric = 1.0
			speed = 0.5
			v_image_single = 2.0
			alarm[int(3.0)] = 20.0
			alarm[int(7.0)] = 2.0
func ev_other_12():
	if (((self.script_view_check(self)))) >= 0.5:
		(GM.f_sound_play(151.0))
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 545.0))
	v_mypower = v_mypower - 1.0
	v_randoom = (GM.f_round((GM.f_random(10.0))))
	if ((v_randoom < 4.0)):
		v_wow = (GM.f_instance_create((x + 10.0), (y + 30.0), 788.0))
		if ((y > 1040.0)):
			GM.vset(v_wow, "v_yyy", (y + 50.0))
		else:
			GM.vset(v_wow, "v_yyy", 1130.0)
	if ((v_mypower <= 0.0)):
		if ((absf(v_persond - 13.0) < 0.00001)):
			v_weho = (GM.f_instance_create(x, y, 752.0))
			GM.vsetb(v_weho, "direction", (direction - 180.0))
			GM.vsetb(v_weho, "speed", (2.0 + (GM.f_random(5.0))))
			GM.vsetb(v_weho, "depth", depth)
		if ((absf((GM.f_instance_number(796.0)) - 0.0) < 0.00001)):
			(self.script_adddamage())
		while true:
			v_xxx = (GM.f_random(GM.room_width))
			if (((v_xxx < (GM.view_xview[0] - 40.0)) or (v_xxx > (GM.view_xview[0] + 800.0)))):
				break
		if (((speed > 6.0)) and not (((absf(depth - (-11.0)) < 0.00001)))):
			speed = 6.0
		(GM.f_instance_create(v_xxx, 1080.0, 546.0))
		v_grrr = (GM.f_round((GM.f_random(1000.0))))
		if ((absf(v_bridge - 1.0) < 0.00001)):
			if ((((GM.f_place_meeting(self, x, y, 592.0))) >= 0.5 and (absf(depth - (-11.0)) >= 0.00001))):
				v_bridge = 0.0
			else:
				if not (((absf(depth - (-11.0)) < 0.00001))):
					depth = (-4.0)
		if ((absf(v_bridge - 0.0) < 0.00001)):
			v_sett = (GM.f_instance_create((x + (sprite_width / 2.0)), ((y + sprite_height) - 5.0), 652.0))
			GM.vset(v_sett, "v_grrr", v_grrr)
		v_sett = (GM.f_instance_create((x + 3.0), y, 643.0))
		GM.vset(v_sett, "v_spurt", 0.0)
		if ((((v_randoom <= 5.0)) and ((GM.vb(self.other, "y") <= (y + 30.0)))) and not (((absf(depth - (-11.0)) < 0.00001)))):
			GM.vset(v_sett, "v_spurt", 1.0)
		if ((absf(v_bridge - 1.0) < 0.00001)):
			GM.vset(v_sett, "v_image_single", 0.0)
		GM.vsetb(v_sett, "hspeed", GM.vb(v_sett, "hspeed") + hspeed)
		if ((absf(v_onfire - 1.0) < 0.00001)):
			GM.vset(v_sett, "v_onfire", 1.0)
		else:
			GM.vset(v_sett, "v_onfire", 0.0)
		if ((absf(v_onelectric - 1.0) < 0.00001)):
			GM.vset(v_sett, "v_onelectric", 1.0)
		else:
			GM.vset(v_sett, "v_onelectric", 0.0)
		GM.vsetb(v_sett, "vspeed", GM.vb(v_sett, "vspeed") + vspeed)
		GM.vsetb(v_sett, "depth", depth)
		if ((hspeed > 0.0)):
			if ((absf(v_persond - 0.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 599.0)
			if ((absf(v_persond - 1.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 634.0)
			if ((absf(v_persond - 2.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 637.0)
			if ((absf(v_persond - 3.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 657.0)
			if ((absf(v_persond - 4.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 663.0)
			if ((absf(v_persond - 5.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 719.0)
			if ((absf(v_persond - 6.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 685.0)
			if ((absf(v_persond - 7.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 690.0)
			if ((absf(v_persond - 8.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 694.0)
			if ((absf(v_persond - 9.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 699.0)
			if ((absf(v_persond - 10.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 704.0)
			if ((absf(v_persond - 11.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 709.0)
			if ((absf(v_persond - 12.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 714.0)
			if ((absf(v_persond - 13.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 787.0)
		else:
			if ((absf(v_persond - 0.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 606.0)
			if ((absf(v_persond - 1.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 635.0)
			if ((absf(v_persond - 2.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 638.0)
			if ((absf(v_persond - 3.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 658.0)
			if ((absf(v_persond - 4.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 664.0)
			if ((absf(v_persond - 5.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 720.0)
			if ((absf(v_persond - 6.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 686.0)
			if ((absf(v_persond - 7.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 691.0)
			if ((absf(v_persond - 8.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 695.0)
			if ((absf(v_persond - 9.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 700.0)
			if ((absf(v_persond - 10.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 705.0)
			if ((absf(v_persond - 11.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 710.0)
			if ((absf(v_persond - 12.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 715.0)
			if ((absf(v_persond - 13.0) < 0.00001)):
				GM.vsetb(v_sett, "sprite_index", 788.0)
		GM.vset(v_sett, "v_grrr", v_grrr)
		v_sett = (GM.f_instance_create((x + 11.0), (y + 31.0), 644.0))
		GM.vsetb(v_sett, "hspeed", GM.vb(v_sett, "hspeed") + hspeed)
		GM.vsetb(v_sett, "vspeed", GM.vb(v_sett, "vspeed") + vspeed)
		GM.vsetb(v_sett, "depth", (depth + 1.0))
		if ((absf(v_persond - 0.0) < 0.00001)):
			GM.vsetb(v_sett, "sprite_index", 600.0)
		if ((absf(v_persond - 1.0) < 0.00001)):
			GM.vsetb(v_sett, "sprite_index", 629.0)
		if ((absf(v_persond - 2.0) < 0.00001)):
			GM.vsetb(v_sett, "sprite_index", 640.0)
		if ((absf(v_persond - 3.0) < 0.00001)):
			GM.vsetb(v_sett, "sprite_index", 656.0)
		if ((absf(v_persond - 4.0) < 0.00001)):
			GM.vsetb(v_sett, "sprite_index", 662.0)
		if ((absf(v_persond - 5.0) < 0.00001)):
			GM.vsetb(v_sett, "sprite_index", 721.0)
		if ((absf(v_persond - 6.0) < 0.00001)):
			GM.vsetb(v_sett, "sprite_index", 687.0)
		if ((absf(v_persond - 7.0) < 0.00001)):
			GM.vsetb(v_sett, "sprite_index", 600.0)
		if ((absf(v_persond - 8.0) < 0.00001)):
			GM.vsetb(v_sett, "sprite_index", 696.0)
		if ((absf(v_persond - 9.0) < 0.00001)):
			GM.vsetb(v_sett, "sprite_index", 701.0)
		if ((absf(v_persond - 10.0) < 0.00001)):
			GM.vsetb(v_sett, "sprite_index", 706.0)
		if ((absf(v_persond - 11.0) < 0.00001)):
			GM.vsetb(v_sett, "sprite_index", 711.0)
		if ((absf(v_persond - 12.0) < 0.00001)):
			GM.vsetb(v_sett, "sprite_index", 716.0)
		if ((absf(v_persond - 13.0) < 0.00001)):
			GM.vsetb(v_sett, "sprite_index", 629.0)
		GM.vset(v_sett, "v_grrr", v_grrr)
		v_sett = (GM.f_instance_create(((x + 9.0) + (GM.f_random(13.0))), (y + 45.0), 645.0))
		GM.vsetb(v_sett, "hspeed", GM.vb(v_sett, "hspeed") + hspeed)
		GM.vsetb(v_sett, "vspeed", GM.vb(v_sett, "vspeed") + vspeed)
		GM.vsetb(v_sett, "depth", depth)
		if ((hspeed > 0.0)):
			GM.vset(v_sett, "v_image_single", 0.0)
		else:
			GM.vset(v_sett, "v_image_single", 1.0)
		GM.vset(v_sett, "v_grrr", v_grrr)
		v_sett = (GM.f_instance_create(((x + 9.0) + (GM.f_random(13.0))), (y + 45.0), 645.0))
		GM.vsetb(v_sett, "hspeed", GM.vb(v_sett, "hspeed") + hspeed)
		GM.vsetb(v_sett, "vspeed", GM.vb(v_sett, "vspeed") + vspeed)
		GM.vsetb(v_sett, "depth", depth)
		if ((hspeed > 0.0)):
			GM.vset(v_sett, "v_image_single", 0.0)
		else:
			GM.vset(v_sett, "v_image_single", 1.0)
		GM.vset(v_sett, "v_grrr", v_grrr)
		v_sett = (GM.f_instance_create(((x + 5.0) + (GM.f_random(9.0))), ((y + 34.0) + (GM.f_random(2.0))), 646.0))
		GM.vsetb(v_sett, "hspeed", GM.vb(v_sett, "hspeed") + hspeed)
		GM.vsetb(v_sett, "vspeed", GM.vb(v_sett, "vspeed") + vspeed)
		GM.vset(v_sett, "v_image_single", 0.0)
		GM.vsetb(v_sett, "depth", depth)
		GM.vset(v_sett, "v_grrr", v_grrr)
		v_sett = (GM.f_instance_create(((x + 5.0) + (GM.f_random(9.0))), ((y + 34.0) + (GM.f_random(2.0))), 646.0))
		GM.vsetb(v_sett, "hspeed", GM.vb(v_sett, "hspeed") + hspeed)
		GM.vsetb(v_sett, "vspeed", GM.vb(v_sett, "vspeed") + vspeed)
		GM.vset(v_sett, "v_image_single", 1.0)
		GM.vsetb(v_sett, "depth", (depth + 2.0))
		GM.vset(v_sett, "v_grrr", v_grrr)
		(GM.f_instance_destroy(self))
func ev_other_11():
	self.ev_user(2.0)
func ev_other_10():
	(self.script_personscream())
func ev_other_0():
	while true:
		v_xxx = (GM.f_random(GM.room_width))
		if (((v_xxx < (GM.view_xview[0] - 40.0)) or (v_xxx > (GM.view_xview[0] + 800.0)))):
			break
	(GM.f_instance_create(v_xxx, 1080.0, 546.0))
	(GM.f_instance_destroy(self))
func ev_keypress_32():
	if not (((absf(v_persond - 13.0) < 0.00001))):
		if ((((GM.f_place_meeting(self, x, y, 7.0))) >= 0.5 and (absf((GM.f_instance_number(710.0)) - 0.0) < 0.00001))):
			v_poon = (GM.f_instance_create(x, y, 710.0))
			GM.vsetb(v_poon, "sprite_index", sprite_index)
			GM.vset(v_poon, "v_persond", v_persond)
			self.ev_user(0.0)
			(GM.f_instance_destroy(self))
