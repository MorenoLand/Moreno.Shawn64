extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_chargeup = 0.0
var v_damagelevel = 0.0
var v_fluh = 0.0
var v_grenades = 0.0
var v_guyleft = 0.0
var v_guyleft2 = 0.0
var v_guyright = 0.0
var v_guyright2 = 0.0
var v_guyx = 0.0
var v_guyy = 0.0
var v_lalala = 0.0
var v_movenow = 0.0
var v_myhealth = 0.0
var v_mymoney = 0.0
var v_mytext = ""
var v_rumble = 0.0
var v_select = 0.0
var v_shotready = 0.0
var v_showcheats = 0.0
var v_statusvalue = ""
var v_throwing = 0.0
var v_walala = 0.0
var v_weapon = 0.0
var v_wee = 0.0
var v_woot = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
var v_wow = 0.0
func ev_create():
	GM.G["missionsx"] = 0.0
	GM.view_object[int(0.0)] = 7.0
	GM.view_hborder[0] = (400.0 - 33.0)
	GM.view_vborder[0] = (300.0 - 33.0)
	(GM.f_sound_loop(110.0))
	v_movenow = 1.0
	v_grenades = 99999999.0
	if ((absf(GM.room - 1.0) < 0.00001)):
		(GM.f_instance_create(x, y, 742.0))
	if ((absf(GM.room - 16.0) < 0.00001)):
		(GM.f_instance_create(x, y, 881.0))
	v_damagelevel = 0.0
	v_lalala = 1.0
	v_mymoney = 0.0
	v_guyright = 1.0
	v_guyleft = 0.0
	v_guyright2 = 1.0
	v_guyleft2 = 1.0
	v_throwing = 0.0
	v_myhealth = 100.0
	v_statusvalue = "Free Roam"
	(GM.f_motion_add(self, 90.0, 0.01))
	friction = 0.1
	v_weapon = 1.0
	v_shotready = 1.0
	v_rumble = 0.0
	v_select = 0.0
	v_chargeup = 0.0
	(GM.f_motion_add(self, 10.0, 3.0))
	GM.G["donemissions"] = 0.0
	v_showcheats = 0.0
func ev_alarm_4():
	v_movenow = 1.0
func ev_alarm_3():
	v_mytext = ""
func ev_alarm_2():
	if ((absf(v_weapon - 17.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			(GM.f_instance_create((GM.vb(7.0, "x") + 13.0), (GM.vb(7.0, "y") + 21.0), 1019.0))
		else:
			(GM.f_instance_create((GM.vb(7.0, "x") + 23.0), (GM.vb(7.0, "y") + 21.0), 1019.0))
		v_throwing = 0.0
	else:
		if ((absf(v_guyright - 1.0) < 0.00001)):
			(GM.f_instance_create((GM.vb(7.0, "x") + 13.0), (GM.vb(7.0, "y") + 21.0), 655.0))
		else:
			(GM.f_instance_create((GM.vb(7.0, "x") + 23.0), (GM.vb(7.0, "y") + 21.0), 655.0))
		v_throwing = 0.0
func ev_alarm_1():
	v_lalala = 1.0
func ev_alarm_0():
	v_shotready = 1.0
func ev_step():
	if ((absf(v_movenow - 1.0) < 0.00001)):
		if ((speed > 16.0)):
			speed = 16.0
		v_wow = (GM.f_instance_create(((x + (sprite_width / 2.0)) - 2.5), ((y + (sprite_height / 2.0)) - 2.5), 488.0))
		GM.vsetb(v_wow, "vspeed", GM.vb(v_wow, "vspeed") + vspeed)
	if ((absf(GM.view_object[int(0.0)] - 7.0) < 0.00001)):
		(self.script_scrollview())
func ev_col_1083():
	if (((vspeed > 0.0) and not (((GM.f_place_free(self, x, (y + vspeed)))) >= 0.5))):
		if (((vspeed > 0.0) and ((GM.f_place_free(self, x, ((y + vspeed) + 1.0)))) >= 0.5)):
			(GM.f_move_contact(self, 270.0))
	vspeed = 0.0
func ev_col_1082():
	if (((vspeed > 0.0) and not (((GM.f_place_free(self, x, (y + vspeed)))) >= 0.5))):
		if (((vspeed > 0.0) and ((GM.f_place_free(self, x, ((y + vspeed) + 1.0)))) >= 0.5)):
			(GM.f_move_contact(self, 270.0))
	vspeed = 0.0
func ev_col_953():
	self.ev_user(3.0)
func ev_col_951():
	self.ev_user(3.0)
func ev_col_950():
	self.ev_user(3.0)
func ev_col_949():
	self.ev_user(3.0)
func ev_col_948():
	self.ev_user(3.0)
func ev_col_946():
	self.ev_user(3.0)
func ev_col_926():
	v_woot = (GM.f_round((GM.f_random(3.0))))
	if (GM.eq(v_woot, 0.0)):
		(self.script_takedamagejetz())
	v_woot = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 490.0))
	v_woot2 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 905.0))
	v_woot3 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 906.0))
	GM.vsetb(v_woot, "depth", depth)
	GM.vsetb(v_woot2, "depth", depth)
	GM.vsetb(v_woot3, "depth", depth)
func ev_col_794():
	hspeed = 0.0
func ev_col_784():
	vspeed = 0.0
func ev_col_760():
	for _r1 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	(GM.f_motion_add(self, GM.vb(self.other, "direction"), 3.0))
	(self.script_takedamagejetz())
func ev_col_745():
	for _r2 in range(int((2.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	(GM.f_motion_add(self, GM.vb(self.other, "direction"), 0.3))
	(self.script_takedamagejetz())
func ev_col_743():
	for _r3 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	(GM.f_motion_add(self, GM.vb(self.other, "direction"), 3.0))
	(self.script_takedamagejetz())
func ev_col_714():
	(GM.f_motion_add(self, GM.vb(self.other, "direction"), 1.0))
	(self.script_takedamagejetz())
func ev_col_656():
	for _r4 in range(int((4.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	v_fluh = GM.vget(self.other, "v_wooper")
	direction = ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0)
	speed = speed + 0.5
	(self.script_takedamagejetz())
func ev_col_551():
	hspeed = 0.0
func ev_col_489():
	vspeed = 0.0
func ev_key_40():
	if ((absf(v_movenow - 1.0) < 0.00001)):
		if ((GM.f_keyboard_check(16.0))) >= 0.5:
			return
		(GM.f_motion_add(self, 270.0, 0.7))
		if not ((((GM.f_sound_isplaying(109.0)))) >= 0.5):
			(GM.f_sound_loop(109.0))
func ev_key_39():
	if ((absf(v_movenow - 1.0) < 0.00001)):
		if ((GM.f_keyboard_check(16.0))) >= 0.5:
			return
		(GM.f_motion_add(self, 0.0, 0.8))
		if not ((((GM.f_sound_isplaying(109.0)))) >= 0.5):
			(GM.f_sound_loop(109.0))
		if ((hspeed > 0.0)):
			v_guyleft = 0.0
			v_guyright = 1.0
func ev_key_38():
	if ((absf(v_movenow - 1.0) < 0.00001)):
		if ((GM.f_keyboard_check(16.0))) >= 0.5:
			return
		(GM.f_motion_add(self, 90.0, 0.7))
		if not ((((GM.f_sound_isplaying(109.0)))) >= 0.5):
			(GM.f_sound_loop(109.0))
func ev_key_37():
	if ((absf(v_movenow - 1.0) < 0.00001)):
		if ((GM.f_keyboard_check(16.0))) >= 0.5:
			return
		v_guyleft2 = 1.0
		(GM.f_motion_add(self, 180.0, 0.8))
		if not ((((GM.f_sound_isplaying(109.0)))) >= 0.5):
			(GM.f_sound_loop(109.0))
		if ((hspeed < 0.0)):
			v_guyleft = 1.0
			v_guyright = 0.0
func ev_key_17():
	if ((absf(v_movenow - 1.0) < 0.00001)):
		if (((absf(v_shotready - 1.0) < 0.00001) and (absf(v_lalala - 1.0) < 0.00001))):
			if ((((absf(v_shotready - 1.0) < 0.00001) and (v_grenades > 0.0)) and (absf(v_weapon - 2.0) < 0.00001))):
				v_grenades = v_grenades - 1.0
				v_throwing = 1.0
				alarm[int(0.0)] = 70.0
				alarm[int(2.0)] = 4.0
				v_shotready = 0.0
			if ((((absf(v_shotready - 1.0) < 0.00001) and (v_grenades > 0.0)) and (absf(v_weapon - 17.0) < 0.00001))):
				v_grenades = v_grenades - 1.0
				v_throwing = 1.0
				alarm[int(0.0)] = 70.0
				alarm[int(2.0)] = 4.0
				v_shotready = 0.0
			if ((absf(v_weapon - 1.0) < 0.00001)):
				if ((absf(v_guyright - 1.0) < 0.00001)):
					v_woot = (GM.f_instance_create(((x + 21.0) + 43.0), ((y - 3.0) + 29.0), 502.0))
				else:
					v_woot = (GM.f_instance_create(((x - 6.0) + 0.0), ((y - 3.0) + 29.0), 502.0))
				v_shotready = 0.0
				alarm[int(0.0)] = 4.0
			if ((absf(v_weapon - 3.0) < 0.00001)):
				if not ((((GM.f_sound_isplaying(111.0)))) >= 0.5):
					(GM.f_sound_loop(111.0))
				if ((absf(v_guyright - 1.0) < 0.00001)):
					(GM.f_instance_create((x + 21.0), (y - 3.0), 976.0))
					v_woot = (GM.f_instance_create(((x + 21.0) + 17.0), ((y - 3.0) + 27.0), 490.0))
					GM.vsetb(v_woot, "hspeed", GM.vb(v_woot, "hspeed") + hspeed)
					GM.vsetb(v_woot, "vspeed", GM.vb(v_woot, "vspeed") + vspeed)
				else:
					(GM.f_instance_create((x - 6.0), (y - 3.0), 976.0))
					v_woot = (GM.f_instance_create(((x - 6.0) + 26.0), ((y - 3.0) + 27.0), 490.0))
					GM.vsetb(v_woot, "hspeed", GM.vb(v_woot, "hspeed") + hspeed)
					GM.vsetb(v_woot, "vspeed", GM.vb(v_woot, "vspeed") + vspeed)
			if (((absf(v_weapon - 4.0) < 0.00001) or (absf(v_weapon - 12.0) < 0.00001))):
				if ((absf(v_guyright - 1.0) < 0.00001)):
					if ((absf(v_weapon - 4.0) < 0.00001)):
						v_woot = (GM.f_instance_create(((x + 21.0) + 36.0), ((y - 3.0) + 23.0), 500.0))
					else:
						v_woot = (GM.f_instance_create(((x + 21.0) + 36.0), ((y - 3.0) + 23.0), 970.0))
						v_movenow = 0.0
					for _r5 in range(int((10.0))):
						v_woot2 = (GM.f_instance_create((GM.vb(v_woot, "x") + (GM.vb(v_woot, "sprite_width") / 2.0)), (GM.vb(v_woot, "y") + (GM.vb(v_woot, "sprite_height") / 2.0)), 490.0))
						GM.vsetb(v_woot2, "hspeed", GM.vb(v_woot2, "hspeed") + hspeed)
						GM.vsetb(v_woot2, "vspeed", GM.vb(v_woot2, "vspeed") + vspeed)
					(GM.f_motion_add(self, 180.0, 5.0))
				else:
					if ((absf(v_weapon - 4.0) < 0.00001)):
						v_woot = (GM.f_instance_create(((x - 6.0) + 0.0), ((y - 3.0) + 23.0), 500.0))
					else:
						v_woot = (GM.f_instance_create(((x - 6.0) + 0.0), ((y - 3.0) + 23.0), 970.0))
						v_movenow = 0.0
					for _r6 in range(int((10.0))):
						v_woot2 = (GM.f_instance_create((GM.vb(v_woot, "x") + (GM.vb(v_woot, "sprite_width") / 2.0)), (GM.vb(v_woot, "y") + (GM.vb(v_woot, "sprite_height") / 2.0)), 490.0))
						GM.vsetb(v_woot2, "hspeed", GM.vb(v_woot2, "hspeed") + hspeed)
						GM.vsetb(v_woot2, "vspeed", GM.vb(v_woot2, "vspeed") + vspeed)
					(GM.f_motion_add(self, 0.0, 5.0))
				(GM.f_instance_create(x, y, 498.0))
				(GM.f_sound_play(116.0))
				v_shotready = 0.0
				alarm[int(0.0)] = 50.0
			if ((absf(v_weapon - 5.0) < 0.00001)):
				if not ((((GM.f_sound_isplaying(114.0)))) >= 0.5):
					(GM.f_sound_loop(114.0))
				if ((absf(v_guyright - 1.0) < 0.00001)):
					v_woot = (GM.f_instance_create(((x + 21.0) + 39.0), ((y - 3.0) + 30.0), 490.0))
					v_woot2 = (GM.f_instance_create(((x + 21.0) + 39.0), ((y - 3.0) + 30.0), 491.0))
					v_woot3 = (GM.f_instance_create(((x + 21.0) + 39.0), ((y - 3.0) + 30.0), 493.0))
				else:
					v_woot = (GM.f_instance_create(((x - 6.0) + 2.0), ((y - 3.0) + 30.0), 490.0))
					v_woot2 = (GM.f_instance_create(((x - 6.0) + 2.0), ((y - 3.0) + 30.0), 491.0))
					v_woot3 = (GM.f_instance_create(((x - 6.0) + 2.0), ((y - 3.0) + 30.0), 493.0))
				GM.vsetb(v_woot, "hspeed", GM.vb(v_woot, "hspeed") + hspeed)
				GM.vsetb(v_woot, "vspeed", GM.vb(v_woot, "vspeed") + vspeed)
				GM.vsetb(v_woot2, "hspeed", GM.vb(v_woot2, "hspeed") + hspeed)
				GM.vsetb(v_woot2, "vspeed", GM.vb(v_woot2, "vspeed") + vspeed)
				GM.vsetb(v_woot3, "hspeed", GM.vb(v_woot3, "hspeed") + hspeed)
				GM.vsetb(v_woot3, "vspeed", GM.vb(v_woot3, "vspeed") + vspeed)
			if ((absf(v_weapon - 6.0) < 0.00001)):
				if not ((((GM.f_sound_isplaying(115.0)))) >= 0.5):
					(GM.f_sound_loop(115.0))
				for _r7 in range(int((2.0))):
					if ((absf(v_guyright - 1.0) < 0.00001)):
						v_woot = (GM.f_instance_create(((x + 21.0) + 42.0), ((y - 3.0) + 32.0), 494.0))
					else:
						v_woot = (GM.f_instance_create(((x - 6.0) + 0.0), ((y - 3.0) + 32.0), 494.0))
			if ((absf(v_weapon - 7.0) < 0.00001)):
				if ((absf(v_guyright - 1.0) < 0.00001)):
					v_woot = (GM.f_instance_create(((x + 21.0) + 51.0), ((y - 3.0) + 25.0), 804.0))
				else:
					v_woot = (GM.f_instance_create(((x - 6.0) + 0.0), ((y - 3.0) + 25.0), 804.0))
				v_shotready = 0.0
				alarm[int(0.0)] = 3.0
			if ((absf(v_weapon - 8.0) < 0.00001)):
				for _r8 in range(int((3.0))):
					if ((absf(v_guyright - 1.0) < 0.00001)):
						v_woot = (GM.f_instance_create(((x + 21.0) + 51.0), ((y - 3.0) + 25.0), 805.0))
					else:
						v_woot = (GM.f_instance_create(((x - 6.0) + 0.0), ((y - 3.0) + 25.0), 805.0))
				v_shotready = 0.0
				alarm[int(0.0)] = 4.0
			if ((absf(v_weapon - 9.0) < 0.00001)):
				if ((speed < 10.0)):
					if not ((((GM.f_sound_isplaying(243.0)))) >= 0.5):
						(GM.f_sound_loop(243.0))
					if ((absf(GM.vget(7.0, "v_guyright") - 1.0) < 0.00001)):
						v_woot = (GM.f_instance_create((((x + sprite_width) + 50.0) - 50.0), (y + (sprite_height / 2.0)), 959.0))
					else:
						v_woot = (GM.f_instance_create(((x - 50.0) + 50.0), (y + (sprite_height / 2.0)), 959.0))
					v_shotready = 0.0
					alarm[int(0.0)] = 4.0
			if ((absf(v_weapon - 10.0) < 0.00001)):
				if ((absf((GM.f_instance_number(963.0)) - 0.0) < 0.00001)):
					(GM.f_mouse_set_screen_position(400.0, 300.0))
					(GM.f_instance_create(x, y, 963.0))
			if ((absf(v_weapon - 11.0) < 0.00001)):
				if ((absf((GM.f_instance_number(966.0)) - 0.0) < 0.00001)):
					(GM.f_instance_create(x, y, 966.0))
			if ((absf(v_weapon - 15.0) < 0.00001)):
				if ((absf(v_guyright - 1.0) < 0.00001)):
					(GM.f_motion_add(self, 180.0, 5.0))
					v_woot = (GM.f_instance_create(((x + 21.0) + 36.0), ((y - 3.0) + 23.0), 1013.0))
					v_woot = (GM.f_instance_create(((x + 21.0) + 36.0), ((y - 3.0) + 23.0), 1012.0))
					v_woot = (GM.f_instance_create(((x + 21.0) + 36.0), ((y - 3.0) + 23.0), 1014.0))
				else:
					(GM.f_motion_add(self, 0.0, 5.0))
					v_woot = (GM.f_instance_create(((x - 6.0) + 0.0), ((y - 3.0) + 23.0), 1013.0))
					v_woot = (GM.f_instance_create(((x - 6.0) + 0.0), ((y - 3.0) + 23.0), 1012.0))
					v_woot = (GM.f_instance_create(((x - 6.0) + 0.0), ((y - 3.0) + 23.0), 1014.0))
				for _r9 in range(int((10.0))):
					v_woot2 = (GM.f_instance_create((GM.vb(v_woot, "x") + (GM.vb(v_woot, "sprite_width") / 2.0)), (GM.vb(v_woot, "y") + (GM.vb(v_woot, "sprite_height") / 2.0)), 490.0))
					GM.vsetb(v_woot2, "hspeed", GM.vb(v_woot2, "hspeed") + hspeed)
					GM.vsetb(v_woot2, "vspeed", GM.vb(v_woot2, "vspeed") + vspeed)
				(GM.f_instance_create(x, y, 498.0))
				(GM.f_sound_play(116.0))
				v_shotready = 0.0
				alarm[int(0.0)] = 60.0
			if ((absf(v_weapon - 13.0) < 0.00001)):
				if ((absf(v_guyright - 1.0) < 0.00001)):
					(GM.f_motion_add(self, 180.0, 2.0))
					for _r10 in range(int((20.0))):
						(GM.f_instance_create(((x + 21.0) + 51.0), ((y - 3.0) + 25.0), 805.0))
					for _r11 in range(int((4.0))):
						(GM.f_instance_create(((x + 21.0) + 51.0), ((y - 3.0) + 25.0), 490.0))
				else:
					for _r12 in range(int((20.0))):
						(GM.f_instance_create(((x - 6.0) + 0.0), ((y - 3.0) + 25.0), 805.0))
					for _r13 in range(int((4.0))):
						(GM.f_instance_create(((x - 6.0) + 0.0), ((y - 3.0) + 25.0), 490.0))
					(GM.f_motion_add(self, 0.0, 2.0))
				v_shotready = 0.0
				alarm[int(0.0)] = 30.0
			if ((absf(v_weapon - 16.0) < 0.00001)):
				if ((absf(v_guyright - 1.0) < 0.00001)):
					(GM.f_motion_add(self, 180.0, 1.0))
					v_woot = (GM.f_instance_create(((x + 21.0) + 36.0), ((y - 3.0) + 23.0), 1017.0))
				else:
					(GM.f_motion_add(self, 0.0, 1.0))
					v_woot = (GM.f_instance_create(((x - 6.0) + 0.0), ((y - 3.0) + 23.0), 1017.0))
				(GM.f_instance_create(x, y, 498.0))
				v_shotready = 0.0
				alarm[int(0.0)] = 60.0
			if ((absf(v_weapon - 14.0) < 0.00001)):
				if ((absf(v_guyright - 1.0) < 0.00001)):
					v_woot = (GM.f_instance_create(((x + 21.0) + 43.0), ((y - 3.0) + 29.0), 1022.0))
				else:
					v_woot = (GM.f_instance_create(((x - 6.0) + 0.0), ((y - 3.0) + 29.0), 1022.0))
				v_shotready = 0.0
				alarm[int(0.0)] = 100.0
			if ((absf(v_weapon - 18.0) < 0.00001)):
				if not ((((GM.f_sound_isplaying(111.0)))) >= 0.5):
					(GM.f_sound_loop(111.0))
				if ((absf(v_guyright - 1.0) < 0.00001)):
					(GM.f_instance_create((x + 21.0), (y - 3.0), 976.0))
					v_woot = (GM.f_instance_create(((x + 21.0) + 17.0), ((y - 3.0) + 27.0), 490.0))
					GM.vsetb(v_woot, "hspeed", GM.vb(v_woot, "hspeed") + hspeed)
					GM.vsetb(v_woot, "vspeed", GM.vb(v_woot, "vspeed") + vspeed)
				else:
					(GM.f_instance_create((x - 6.0), (y - 3.0), 976.0))
					v_woot = (GM.f_instance_create(((x - 6.0) + 26.0), ((y - 3.0) + 27.0), 490.0))
					GM.vsetb(v_woot, "hspeed", GM.vb(v_woot, "hspeed") + hspeed)
					GM.vsetb(v_woot, "vspeed", GM.vb(v_woot, "vspeed") + vspeed)
				if not ((((GM.f_sound_isplaying(114.0)))) >= 0.5):
					(GM.f_sound_loop(114.0))
				if ((absf(v_guyright - 1.0) < 0.00001)):
					v_woot = (GM.f_instance_create(((x + 21.0) + 39.0), ((y - 3.0) + 30.0), 490.0))
					v_woot2 = (GM.f_instance_create(((x + 21.0) + 39.0), ((y - 3.0) + 30.0), 491.0))
					v_woot3 = (GM.f_instance_create(((x + 21.0) + 39.0), ((y - 3.0) + 30.0), 493.0))
				else:
					v_woot = (GM.f_instance_create(((x - 6.0) + 2.0), ((y - 3.0) + 30.0), 490.0))
					v_woot2 = (GM.f_instance_create(((x - 6.0) + 2.0), ((y - 3.0) + 30.0), 491.0))
					v_woot3 = (GM.f_instance_create(((x - 6.0) + 2.0), ((y - 3.0) + 30.0), 493.0))
				GM.vsetb(v_woot, "hspeed", GM.vb(v_woot, "hspeed") + hspeed)
				GM.vsetb(v_woot, "vspeed", GM.vb(v_woot, "vspeed") + vspeed)
				GM.vsetb(v_woot2, "hspeed", GM.vb(v_woot2, "hspeed") + hspeed)
				GM.vsetb(v_woot2, "vspeed", GM.vb(v_woot2, "vspeed") + vspeed)
				GM.vsetb(v_woot3, "hspeed", GM.vb(v_woot3, "hspeed") + hspeed)
				GM.vsetb(v_woot3, "vspeed", GM.vb(v_woot3, "vspeed") + vspeed)
				if not ((((GM.f_sound_isplaying(115.0)))) >= 0.5):
					(GM.f_sound_loop(115.0))
				for _r14 in range(int((2.0))):
					if ((absf(v_guyright - 1.0) < 0.00001)):
						v_woot = (GM.f_instance_create(((x + 21.0) + 42.0), ((y - 3.0) + 32.0), 494.0))
					else:
						v_woot = (GM.f_instance_create(((x - 6.0) + 0.0), ((y - 3.0) + 32.0), 494.0))
				if ((speed < 10.0)):
					if ((absf(GM.vget(7.0, "v_guyright") - 1.0) < 0.00001)):
						v_woot = (GM.f_instance_create((((x + sprite_width) + 50.0) - 50.0), (y + (sprite_height / 2.0)), 959.0))
					else:
						v_woot = (GM.f_instance_create(((x - 50.0) + 50.0), (y + (sprite_height / 2.0)), 959.0))
					v_shotready = 0.0
					alarm[int(0.0)] = 1.0
				v_wow = (GM.f_round((GM.f_random(5.0))))
				if (GM.eq(v_wow, 0.0)):
					(GM.f_instance_create(x, y, 497.0))
				if (GM.eq(v_wow, 1.0)):
					(GM.f_instance_create(x, y, 498.0))
		if ((absf(alarm[int(0.0)] - (-1.0)) < 0.00001)):
			alarm[int(0.0)] = 1.0
func ev_other_14():
	v_select = 0.0
	v_weapon = 1.0
	(GM.f_sound_play(175.0))
func ev_other_13():
	for _r15 in range(int((2.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	for _r16 in range(int((2.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	(GM.f_motion_add(self, (GM.f_random(360.0)), 2.0))
	(GM.f_sound_play(122.0))
	(self.script_takedamagejetz())
func ev_other_12():
	GM.G["j4var11"] = (GM.G["j4var11"] + v_mymoney)
	v_mymoney = 0.0
func ev_other_11():
	for _r17 in range(int((30.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	for _r18 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	for _r19 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 637.0))
	(GM.f_sound_play(213.0))
	(GM.f_sound_play(140.0))
func ev_other_10():
	v_weapon = (v_select + 1.0)
	v_shotready = 1.0
	(GM.f_sound_play(112.0))
	alarm[int(1.0)] = 1.0
func ev_other_0():
	if (((x < 0.0) and (hspeed < 0.0))):
		x = (GM.room_width + sprite_xoffset)
	if (((x > GM.room_width) and (hspeed > 0.0))):
		x = ((-sprite_width) + sprite_xoffset)
	y = y - 1.0
	if (((GM.f_instance_number(1057.0)) > 0.0)):
		(GM.f_instance_create(x, y, 1058.0))
		for _w20 in GM.with_list((1057.0), self):
			if _w20._dead:
				continue
			_w20.other = self
			(GM.f_instance_destroy(_w20))
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Trebuchet MS", 11.0, 1.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	v_guyx = x
	v_guyy = x
	if (((absf(v_weapon - 3.0) < 0.00001) and (absf(v_lalala - 1.0) < 0.00001))):
		if (((GM.f_keyboard_check(17.0)))) >= 0.5:
			if ((absf(v_rumble - 1.0) < 0.00001)):
				v_rumble = 0.0
			else:
				if ((absf(v_rumble - 0.0) < 0.00001)):
					v_rumble = 1.0
			if ((absf(v_rumble - 1.0) < 0.00001)):
				v_guyx = (x + 1.0)
	(GM.f_draw_sprite_scaled(235.0, 0.0, x, 1150.0, (y / 1160.0)))
	if ((absf(v_damagelevel - 0.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			if (((hspeed < 18.0) and (hspeed >= 0.0))):
				(GM.f_draw_sprite(1.0, (hspeed / 0.5), v_guyx, y))
			if ((hspeed >= 18.0)):
				(GM.f_draw_sprite(1.0, 36.0, v_guyx, y))
			if ((hspeed < 0.0)):
				(GM.f_draw_sprite(1.0, 0.0, v_guyx, y))
		if ((absf(v_guyleft - 1.0) < 0.00001)):
			if (((hspeed > (-18.0)) and (hspeed <= 0.0))):
				(GM.f_draw_sprite(447.0, ((-hspeed) / 0.5), v_guyx, y))
			if ((hspeed <= (-18.0))):
				(GM.f_draw_sprite(447.0, 36.0, v_guyx, y))
			if ((hspeed > 0.0)):
				(GM.f_draw_sprite(447.0, 0.0, v_guyx, y))
	if ((absf(v_damagelevel - 1.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			if (((hspeed < 18.0) and (hspeed >= 0.0))):
				(GM.f_draw_sprite(1032.0, (hspeed / 0.5), v_guyx, y))
			if ((hspeed >= 18.0)):
				(GM.f_draw_sprite(1032.0, 36.0, v_guyx, y))
			if ((hspeed < 0.0)):
				(GM.f_draw_sprite(1032.0, 0.0, v_guyx, y))
		if ((absf(v_guyleft - 1.0) < 0.00001)):
			if (((hspeed > (-18.0)) and (hspeed <= 0.0))):
				(GM.f_draw_sprite(1033.0, ((-hspeed) / 0.5), v_guyx, y))
			if ((hspeed <= (-18.0))):
				(GM.f_draw_sprite(1033.0, 36.0, v_guyx, y))
			if ((hspeed > 0.0)):
				(GM.f_draw_sprite(1033.0, 0.0, v_guyx, y))
	if ((absf(v_damagelevel - 2.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			if (((hspeed < 18.0) and (hspeed >= 0.0))):
				(GM.f_draw_sprite(1034.0, (hspeed / 0.5), v_guyx, y))
			if ((hspeed >= 18.0)):
				(GM.f_draw_sprite(1034.0, 36.0, v_guyx, y))
			if ((hspeed < 0.0)):
				(GM.f_draw_sprite(1034.0, 0.0, v_guyx, y))
		if ((absf(v_guyleft - 1.0) < 0.00001)):
			if (((hspeed > (-18.0)) and (hspeed <= 0.0))):
				(GM.f_draw_sprite(1035.0, ((-hspeed) / 0.5), v_guyx, y))
			if ((hspeed <= (-18.0))):
				(GM.f_draw_sprite(1035.0, 36.0, v_guyx, y))
			if ((hspeed > 0.0)):
				(GM.f_draw_sprite(1035.0, 0.0, v_guyx, y))
	if ((absf(v_weapon - 1.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			if ((((GM.f_keyboard_check(17.0))) >= 0.5 and (absf(v_lalala - 1.0) < 0.00001))):
				(GM.f_draw_sprite(467.0, (-1.0), (x + 21.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(467.0, 0.0, (x + 21.0), (y - 3.0)))
		else:
			if ((((GM.f_keyboard_check(17.0))) >= 0.5 and (absf(v_lalala - 1.0) < 0.00001))):
				(GM.f_draw_sprite(468.0, (-1.0), (x - 6.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(468.0, 0.0, (x - 6.0), (y - 3.0)))
	if ((absf(GM.vget(7.0, "v_weapon") - 2.0) < 0.00001)):
		if ((absf(v_throwing - 1.0) < 0.00001)):
			v_walala = (-1.0)
		if ((absf(v_throwing - 0.0) < 0.00001)):
			v_walala = 0.0
		if ((absf(v_guyright - 1.0) < 0.00001)):
			if ((v_grenades > 0.0)):
				(GM.f_draw_sprite(610.0, v_walala, (x + 18.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(448.0, 0.0, (x + 18.0), (y - 3.0)))
		else:
			if ((v_grenades > 0.0)):
				(GM.f_draw_sprite(609.0, v_walala, (x - 3.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(449.0, 0.0, (x - 3.0), (y - 3.0)))
	if ((absf(v_weapon - 3.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			if ((((GM.f_keyboard_check(17.0))) >= 0.5 and (absf(v_lalala - 1.0) < 0.00001))):
				(GM.f_draw_sprite(454.0, (-1.0), (x + 21.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(454.0, 0.0, (x + 21.0), (y - 3.0)))
		else:
			if ((((GM.f_keyboard_check(17.0))) >= 0.5 and (absf(v_lalala - 1.0) < 0.00001))):
				(GM.f_draw_sprite(455.0, (-1.0), (x - 6.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(455.0, 0.0, (x - 6.0), (y - 3.0)))
	if ((absf(v_weapon - 4.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			(GM.f_draw_sprite(450.0, (-1.0), (x + 21.0), (y - 3.0)))
		else:
			(GM.f_draw_sprite(737.0, (-1.0), (x - 6.0), (y - 3.0)))
	if ((absf(v_weapon - 5.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			(GM.f_draw_sprite(457.0, (-1.0), (x + 21.0), (y - 3.0)))
		else:
			(GM.f_draw_sprite(458.0, (-1.0), (x - 6.0), (y - 3.0)))
	if ((absf(v_weapon - 6.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			(GM.f_draw_sprite(461.0, (-1.0), (x + 21.0), (y - 3.0)))
		else:
			(GM.f_draw_sprite(462.0, (-1.0), (x - 6.0), (y - 3.0)))
	if ((absf(v_weapon - 7.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			if ((((GM.f_keyboard_check(17.0))) >= 0.5 and (absf(v_lalala - 1.0) < 0.00001))):
				(GM.f_draw_sprite(834.0, (-1.0), (x + 21.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(834.0, 0.0, (x + 21.0), (y - 3.0)))
		else:
			if ((((GM.f_keyboard_check(17.0))) >= 0.5 and (absf(v_lalala - 1.0) < 0.00001))):
				(GM.f_draw_sprite(835.0, (-1.0), (x - 17.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(835.0, 0.0, (x - 17.0), (y - 3.0)))
	if ((absf(v_weapon - 8.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			if ((((GM.f_keyboard_check(17.0))) >= 0.5 and (absf(v_lalala - 1.0) < 0.00001))):
				(GM.f_draw_sprite(837.0, (-1.0), (x + 21.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(837.0, 0.0, (x + 21.0), (y - 3.0)))
		else:
			if ((((GM.f_keyboard_check(17.0))) >= 0.5 and (absf(v_lalala - 1.0) < 0.00001))):
				(GM.f_draw_sprite(838.0, (-1.0), (x - 17.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(838.0, 0.0, (x - 17.0), (y - 3.0)))
	if ((absf(v_weapon - 9.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			if ((((GM.f_keyboard_check(17.0))) >= 0.5 and (absf(v_lalala - 1.0) < 0.00001))):
				(GM.f_draw_sprite(977.0, (-1.0), (x + 21.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(977.0, 0.0, (x + 21.0), (y - 3.0)))
		else:
			if ((((GM.f_keyboard_check(17.0))) >= 0.5 and (absf(v_lalala - 1.0) < 0.00001))):
				(GM.f_draw_sprite(978.0, (-1.0), (x - 6.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(978.0, 0.0, (x - 6.0), (y - 3.0)))
	if ((absf(v_weapon - 10.0) < 0.00001)):
		if ((absf((GM.f_keyboard_check(17.0)) - 1.0) < 0.00001)):
			(GM.f_draw_sprite(771.0, 0.0, (GM.mouse_x - 26.0), (GM.mouse_y - 26.0)))
			v_wow = ((((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.mouse_x, GM.mouse_y)) + 90.0)) / 22.5)
			if ((GM.mouse_x > (x + (sprite_width / 2.0)))):
				v_guyright = 1.0
				v_guyleft = 0.0
			else:
				v_guyright = 0.0
				v_guyleft = 1.0
		else:
			if ((absf(v_guyright - 1.0) < 0.00001)):
				v_wow = 4.0
			else:
				v_wow = 12.0
		(GM.f_draw_sprite(983.0, v_wow, ((x + (sprite_width / 2.0)) - 30.0), ((y + (sprite_height / 2.0)) - 30.0)))
	if ((absf(v_weapon - 11.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			(GM.f_draw_sprite(980.0, (-1.0), (x + 21.0), (y - 3.0)))
		else:
			(GM.f_draw_sprite(981.0, (-1.0), (x - 6.0), (y - 3.0)))
	if ((absf(v_weapon - 12.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			(GM.f_draw_sprite(986.0, (-1.0), (x + 21.0), (y - 3.0)))
		else:
			(GM.f_draw_sprite(987.0, (-1.0), (x - 6.0), (y - 3.0)))
	if ((absf(v_weapon - 13.0) < 0.00001)):
		if ((alarm[int(0.0)] < 7.0)):
			if ((absf(v_guyright - 1.0) < 0.00001)):
				(GM.f_draw_sprite(1000.0, 0.0, (x + 21.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(1001.0, 0.0, (x - 17.0), (y - 3.0)))
		else:
			if ((absf(v_guyright - 1.0) < 0.00001)):
				(GM.f_draw_sprite(1000.0, 1.0, (x + 21.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(1001.0, 1.0, (x - 17.0), (y - 3.0)))
	if ((absf(v_weapon - 14.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			(GM.f_draw_sprite(1002.0, (-1.0), (x + 21.0), (y - 3.0)))
		else:
			(GM.f_draw_sprite(1003.0, (-1.0), (x - 17.0), (y - 3.0)))
	if ((absf(v_weapon - 15.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			(GM.f_draw_sprite(1008.0, (-1.0), (x + 21.0), (y - 3.0)))
		else:
			(GM.f_draw_sprite(1009.0, (-1.0), (x - 17.0), (y - 3.0)))
	if ((absf(v_weapon - 16.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			(GM.f_draw_sprite(1004.0, (-1.0), (x + 21.0), (y - 3.0)))
		else:
			(GM.f_draw_sprite(1005.0, (-1.0), (x - 17.0), (y - 3.0)))
	if ((absf(v_weapon - 17.0) < 0.00001)):
		if ((absf(v_throwing - 1.0) < 0.00001)):
			v_walala = (-1.0)
		if ((absf(v_throwing - 0.0) < 0.00001)):
			v_walala = 0.0
		if ((absf(v_guyright - 1.0) < 0.00001)):
			if ((v_grenades > 0.0)):
				(GM.f_draw_sprite(1010.0, v_walala, (x + 18.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(448.0, 0.0, (x + 18.0), (y - 3.0)))
		else:
			if ((v_grenades > 0.0)):
				(GM.f_draw_sprite(1011.0, v_walala, (x - 3.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(449.0, 0.0, (x - 3.0), (y - 3.0)))
	if ((absf(v_weapon - 18.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			if (((GM.f_keyboard_check(17.0)))) >= 0.5:
				(GM.f_draw_sprite(1006.0, (-1.0), (x + 21.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(1006.0, 0.0, (x + 21.0), (y - 3.0)))
		else:
			if (((GM.f_keyboard_check(17.0)))) >= 0.5:
				(GM.f_draw_sprite(1007.0, (-1.0), (x - 6.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(1007.0, 0.0, (x - 6.0), (y - 3.0)))
	GM.font_align = 1.0
	if (((absf(v_showcheats - 1.0) < 0.00001))):
		(GM.f_draw_text((x + (sprite_width / 2.0)), (y - 20.0), ("Cheat: " + (GM.f_string(GM.keyboard_string)))))
func ev_keypress_96():
	(GM.f_sound_play(152.0))
	if ((absf(v_guyright - 1.0) < 0.00001)):
		v_guyright = 0.0
		v_guyleft = 1.0
	else:
		if ((absf(v_guyleft - 1.0) < 0.00001)):
			v_guyleft = 0.0
			v_guyright = 1.0
func ev_keypress_67():
	if ((absf(v_showcheats - 1.0) < 0.00001)):
		v_showcheats = 0.0
	else:
		if ((absf(v_showcheats - 0.0) < 0.00001)):
			v_showcheats = 1.0
func ev_keypress_40():
	if not (((GM.f_keyboard_check(16.0))) >= 0.5):
		return
	if ((v_select > 11.0)):
		v_select = v_select - 12.0
	else:
		v_select = v_select + 6.0
func ev_keypress_39():
	if not (((GM.f_keyboard_check(16.0))) >= 0.5):
		return
	if (((absf(v_select - 5.0) < 0.00001) or (absf(v_select - 11.0) < 0.00001)) or (absf(v_select - 17.0) < 0.00001)):
		v_select = v_select - 5.0
	else:
		v_select = v_select + 1.0
func ev_keypress_38():
	if not (((GM.f_keyboard_check(16.0))) >= 0.5):
		return
	if (v_select < 6.0):
		v_select = v_select + 12.0
	else:
		v_select = v_select - 6.0
func ev_keypress_37():
	if not (((GM.f_keyboard_check(16.0))) >= 0.5):
		return
	if (((absf(v_select - 0.0) < 0.00001) or (absf(v_select - 6.0) < 0.00001)) or (absf(v_select - 12.0) < 0.00001)):
		v_select = v_select + 5.0
	else:
		v_select = v_select - 1.0
func ev_keypress_27():
	(GM.f_sound_stop_all())
	self.ev_user(2.0)
	(GM.f_room_goto(9.0))
func ev_keypress_18():
	(GM.f_sound_play(152.0))
	if ((absf(v_guyright - 1.0) < 0.00001)):
		v_guyright = 0.0
		v_guyleft = 1.0
	else:
		if ((absf(v_guyleft - 1.0) < 0.00001)):
			v_guyleft = 0.0
			v_guyright = 1.0
func ev_keypress_16():
	for _w21 in GM.with_list((963.0), self):
		if _w21._dead:
			continue
		_w21.other = self
		(GM.f_instance_destroy(_w21))
	for _w22 in GM.with_list((966.0), self):
		if _w22._dead:
			continue
		_w22.other = self
		(GM.f_instance_destroy(_w22))
	if (((absf(v_movenow - 1.0) < 0.00001) and (absf((GM.f_instance_number(986.0)) - 0.0) < 0.00001))):
		(GM.f_sound_stop(111.0))
		(GM.f_sound_stop(114.0))
		(GM.f_sound_play(112.0))
		(GM.f_sound_stop(115.0))
		(GM.f_sound_stop(243.0))
		v_lalala = 0.0
		(GM.f_instance_create(x, y, 982.0))
func ev_keypress_13():
	if ((GM.keyboard_string == "jumper")):
		for _r23 in range(int((50.0))):
			(GM.f_instance_create((GM.view_xview[0] + 390.0), GM.view_yview[0], 907.0))
	if ((GM.keyboard_string == "nugtohs23")):
		(GM.f_sound_play(224.0))
		v_wee = (GM.f_instance_create(x, y, 974.0))
		GM.vset(v_wee, "v_powerupz", "the Shotgun")
		GM.G["j4var17"] = 1.0
	if ((GM.keyboard_string == "omgwtf6663")):
		GM.G["j4var18"] = 1.0
		(GM.f_sound_play(224.0))
		v_wee = (GM.f_instance_create(x, y, 974.0))
		GM.vset(v_wee, "v_powerupz", "the Laser")
	if ((GM.keyboard_string == "blowshitep")):
		GM.G["j4var19"] = 1.0
		(GM.f_sound_play(224.0))
		v_wee = (GM.f_instance_create(x, y, 974.0))
		GM.vset(v_wee, "v_powerupz", "Bazooka 3")
	if ((GM.keyboard_string == "fireisgood")):
		GM.G["j4var20"] = 1.0
		(GM.f_sound_play(224.0))
		v_wee = (GM.f_instance_create(x, y, 974.0))
		GM.vset(v_wee, "v_powerupz", "the Fire Cannon")
	if ((GM.keyboard_string == "bigboombaby")):
		GM.G["j4var21"] = 1.0
		(GM.f_sound_play(224.0))
		v_wee = (GM.f_instance_create(x, y, 974.0))
		GM.vset(v_wee, "v_powerupz", "Grenade 2")
	if ((GM.keyboard_string == "endofitall")):
		GM.G["j4var22"] = 1.0
		(GM.f_sound_play(224.0))
		v_wee = (GM.f_instance_create(x, y, 974.0))
		GM.vset(v_wee, "v_powerupz", "the MEGA Gun")
	if ((GM.keyboard_string == "mastaweaponomg")):
		GM.G["j4var1"] = 1.0
		GM.G["j4var2"] = 1.0
		GM.G["j4var3"] = 1.0
		GM.G["j4var4"] = 1.0
		GM.G["j4var5"] = 1.0
		GM.G["j4var6"] = 1.0
		GM.G["j4var7"] = 1.0
		GM.G["j4var8"] = 1.0
		GM.G["j4var9"] = 1.0
		GM.G["j4var10"] = 1.0
		GM.G["j4var17"] = 1.0
		GM.G["j4var18"] = 1.0
		GM.G["j4var19"] = 1.0
		GM.G["j4var20"] = 1.0
		GM.G["j4var21"] = 1.0
		GM.G["j4var22"] = 1.0
	if ((GM.keyboard_string == "s64omgs64")):
		for _w24 in GM.with_list((674.0), self):
			if _w24._dead:
				continue
			_w24.other = self
			(GM.f_instance_destroy(_w24))
		for _w25 in GM.with_list((675.0), self):
			if _w25._dead:
				continue
			_w25.other = self
			(GM.f_instance_destroy(_w25))
		for _w26 in GM.with_list((669.0), self):
			if _w26._dead:
				continue
			_w26.other = self
			(GM.f_instance_destroy(_w26))
		for _w27 in GM.with_list((676.0), self):
			if _w27._dead:
				continue
			_w27.other = self
			(GM.f_instance_destroy(_w27))
		for _w28 in GM.with_list((677.0), self):
			if _w28._dead:
				continue
			_w28.other = self
			(GM.f_instance_destroy(_w28))
		for _w29 in GM.with_list((984.0), self):
			if _w29._dead:
				continue
			_w29.other = self
			(GM.f_instance_destroy(_w29))
		for _w30 in GM.with_list((787.0), self):
			if _w30._dead:
				continue
			_w30.other = self
			(GM.f_instance_destroy(_w30))
		for _w31 in GM.with_list((814.0), self):
			if _w31._dead:
				continue
			_w31.other = self
			(GM.f_instance_destroy(_w31))
		for _w32 in GM.with_list((798.0), self):
			if _w32._dead:
				continue
			_w32.other = self
			(GM.f_instance_destroy(_w32))
		for _w33 in GM.with_list((989.0), self):
			if _w33._dead:
				continue
			_w33.other = self
			(GM.f_instance_destroy(_w33))
		for _w34 in GM.with_list((997.0), self):
			if _w34._dead:
				continue
			_w34.other = self
			(GM.f_instance_destroy(_w34))
		for _w35 in GM.with_list((988.0), self):
			if _w35._dead:
				continue
			_w35.other = self
			(GM.f_instance_destroy(_w35))
		for _w36 in GM.with_list((999.0), self):
			if _w36._dead:
				continue
			_w36.other = self
			(GM.f_instance_destroy(_w36))
		for _w37 in GM.with_list((1004.0), self):
			if _w37._dead:
				continue
			_w37.other = self
			(GM.f_instance_destroy(_w37))
		for _w38 in GM.with_list((1007.0), self):
			if _w38._dead:
				continue
			_w38.other = self
			(GM.f_instance_destroy(_w38))
		for _w39 in GM.with_list((1029.0), self):
			if _w39._dead:
				continue
			_w39.other = self
			(GM.f_instance_destroy(_w39))
		for _w40 in GM.with_list((1030.0), self):
			if _w40._dead:
				continue
			_w40.other = self
			(GM.f_instance_destroy(_w40))
		for _w41 in GM.with_list((1033.0), self):
			if _w41._dead:
				continue
			_w41.other = self
			(GM.f_instance_destroy(_w41))
		for _w42 in GM.with_list((1000.0), self):
			if _w42._dead:
				continue
			_w42.other = self
			(GM.f_instance_destroy(_w42))
		for _w43 in GM.with_list((1005.0), self):
			if _w43._dead:
				continue
			_w43.other = self
			(GM.f_instance_destroy(_w43))
		for _w44 in GM.with_list((1008.0), self):
			if _w44._dead:
				continue
			_w44.other = self
			(GM.f_instance_destroy(_w44))
		for _w45 in GM.with_list((1032.0), self):
			if _w45._dead:
				continue
			_w45.other = self
			(GM.f_instance_destroy(_w45))
		for _w46 in GM.with_list((1031.0), self):
			if _w46._dead:
				continue
			_w46.other = self
			(GM.f_instance_destroy(_w46))
		for _w47 in GM.with_list((1034.0), self):
			if _w47._dead:
				continue
			_w47.other = self
			(GM.f_instance_destroy(_w47))
		for _w48 in GM.with_list((918.0), self):
			if _w48._dead:
				continue
			_w48.other = self
			(GM.f_instance_destroy(_w48))
		for _w49 in GM.with_list((1064.0), self):
			if _w49._dead:
				continue
			_w49.other = self
			(GM.f_instance_destroy(_w49))
		for _w50 in GM.with_list((1091.0), self):
			if _w50._dead:
				continue
			_w50.other = self
			(GM.f_instance_destroy(_w50))
		for _w51 in GM.with_list((1077.0), self):
			if _w51._dead:
				continue
			_w51.other = self
			(GM.f_instance_destroy(_w51))
		for _w52 in GM.with_list((1079.0), self):
			if _w52._dead:
				continue
			_w52.other = self
			(GM.f_instance_destroy(_w52))
		for _w53 in GM.with_list((1089.0), self):
			if _w53._dead:
				continue
			_w53.other = self
			(GM.f_instance_destroy(_w53))
		for _w54 in GM.with_list((1063.0), self):
			if _w54._dead:
				continue
			_w54.other = self
			(GM.f_instance_destroy(_w54))
		for _w55 in GM.with_list((1066.0), self):
			if _w55._dead:
				continue
			_w55.other = self
			(GM.f_instance_destroy(_w55))
		for _w56 in GM.with_list((1092.0), self):
			if _w56._dead:
				continue
			_w56.other = self
			(GM.f_instance_destroy(_w56))
		for _w57 in GM.with_list((1078.0), self):
			if _w57._dead:
				continue
			_w57.other = self
			(GM.f_instance_destroy(_w57))
		for _w58 in GM.with_list((1080.0), self):
			if _w58._dead:
				continue
			_w58.other = self
			(GM.f_instance_destroy(_w58))
		for _w59 in GM.with_list((1090.0), self):
			if _w59._dead:
				continue
			_w59.other = self
			(GM.f_instance_destroy(_w59))
		for _w60 in GM.with_list((1093.0), self):
			if _w60._dead:
				continue
			_w60.other = self
			(GM.f_instance_destroy(_w60))
		for _w61 in GM.with_list((1095.0), self):
			if _w61._dead:
				continue
			_w61.other = self
			(GM.f_instance_destroy(_w61))
		for _w62 in GM.with_list((1097.0), self):
			if _w62._dead:
				continue
			_w62.other = self
			(GM.f_instance_destroy(_w62))
		for _w63 in GM.with_list((1099.0), self):
			if _w63._dead:
				continue
			_w63.other = self
			(GM.f_instance_destroy(_w63))
		for _w64 in GM.with_list((1101.0), self):
			if _w64._dead:
				continue
			_w64.other = self
			(GM.f_instance_destroy(_w64))
		for _w65 in GM.with_list((1103.0), self):
			if _w65._dead:
				continue
			_w65.other = self
			(GM.f_instance_destroy(_w65))
		for _w66 in GM.with_list((1094.0), self):
			if _w66._dead:
				continue
			_w66.other = self
			(GM.f_instance_destroy(_w66))
		for _w67 in GM.with_list((1096.0), self):
			if _w67._dead:
				continue
			_w67.other = self
			(GM.f_instance_destroy(_w67))
		for _w68 in GM.with_list((1098.0), self):
			if _w68._dead:
				continue
			_w68.other = self
			(GM.f_instance_destroy(_w68))
		for _w69 in GM.with_list((1100.0), self):
			if _w69._dead:
				continue
			_w69.other = self
			(GM.f_instance_destroy(_w69))
		for _w70 in GM.with_list((1102.0), self):
			if _w70._dead:
				continue
			_w70.other = self
			(GM.f_instance_destroy(_w70))
		for _w71 in GM.with_list((1104.0), self):
			if _w71._dead:
				continue
			_w71.other = self
			(GM.f_instance_destroy(_w71))
		if ((absf(GM.room - 1.0) < 0.00001)):
			(self.script_checkcity1())
		if ((absf(GM.room - 16.0) < 0.00001)):
			(self.script_checkcity2())
	if ((GM.keyboard_string == "set2999")):
		GM.G["j4var14"] = 2999.0
		GM.G["j4var15"] = 2999.0
		GM.G["j4var16"] = 2999.0
	if ((GM.keyboard_string == "moneyisyummy")):
		GM.G["j4var11"] = 100000.0
	GM.keyboard_string = ""
func ev_keyrelease_40():
	if not ((((GM.f_keyboard_check(38.0)))) >= 0.5):
		if not ((((GM.f_keyboard_check(40.0)))) >= 0.5):
			if not ((((GM.f_keyboard_check(37.0)))) >= 0.5):
				if not ((((GM.f_keyboard_check(39.0)))) >= 0.5):
					(GM.f_sound_stop(109.0))
func ev_keyrelease_39():
	if not ((((GM.f_keyboard_check(38.0)))) >= 0.5):
		if not ((((GM.f_keyboard_check(40.0)))) >= 0.5):
			if not ((((GM.f_keyboard_check(37.0)))) >= 0.5):
				if not ((((GM.f_keyboard_check(39.0)))) >= 0.5):
					(GM.f_sound_stop(109.0))
func ev_keyrelease_38():
	if not ((((GM.f_keyboard_check(38.0)))) >= 0.5):
		if not ((((GM.f_keyboard_check(40.0)))) >= 0.5):
			if not ((((GM.f_keyboard_check(37.0)))) >= 0.5):
				if not ((((GM.f_keyboard_check(39.0)))) >= 0.5):
					(GM.f_sound_stop(109.0))
func ev_keyrelease_37():
	if not ((((GM.f_keyboard_check(38.0)))) >= 0.5):
		if not ((((GM.f_keyboard_check(40.0)))) >= 0.5):
			if not ((((GM.f_keyboard_check(37.0)))) >= 0.5):
				if not ((((GM.f_keyboard_check(39.0)))) >= 0.5):
					(GM.f_sound_stop(109.0))
func ev_keyrelease_17():
	(GM.f_sound_stop(114.0))
	(GM.f_sound_stop(115.0))
	(GM.f_sound_stop(111.0))
	(GM.f_sound_stop(243.0))
	for _w72 in GM.with_list((963.0), self):
		if _w72._dead:
			continue
		_w72.other = self
		(GM.f_instance_destroy(_w72))
	for _w73 in GM.with_list((966.0), self):
		if _w73._dead:
			continue
		_w73.other = self
		(GM.f_instance_destroy(_w73))
func ev_keyrelease_16():
	if (((absf(v_movenow - 1.0) < 0.00001) and (absf((GM.f_instance_number(986.0)) - 0.0) < 0.00001))):
		v_weapon = (v_select + 1.0)
		if (((absf(v_weapon - 3.0) < 0.00001) and (absf(GM.G["j4var1"] - 0.0) < 0.00001))):
			self.ev_user(4.0)
		if (((absf(v_weapon - 4.0) < 0.00001) and (absf(GM.G["j4var2"] - 0.0) < 0.00001))):
			self.ev_user(4.0)
		if (((absf(v_weapon - 5.0) < 0.00001) and (absf(GM.G["j4var3"] - 0.0) < 0.00001))):
			self.ev_user(4.0)
		if (((absf(v_weapon - 6.0) < 0.00001) and (absf(GM.G["j4var4"] - 0.0) < 0.00001))):
			self.ev_user(4.0)
		if (((absf(v_weapon - 7.0) < 0.00001) and (absf(GM.G["j4var5"] - 0.0) < 0.00001))):
			self.ev_user(4.0)
		if (((absf(v_weapon - 8.0) < 0.00001) and (absf(GM.G["j4var6"] - 0.0) < 0.00001))):
			self.ev_user(4.0)
		if (((absf(v_weapon - 9.0) < 0.00001) and (absf(GM.G["j4var7"] - 0.0) < 0.00001))):
			self.ev_user(4.0)
		if (((absf(v_weapon - 10.0) < 0.00001) and (absf(GM.G["j4var8"] - 0.0) < 0.00001))):
			self.ev_user(4.0)
		if (((absf(v_weapon - 11.0) < 0.00001) and (absf(GM.G["j4var9"] - 0.0) < 0.00001))):
			self.ev_user(4.0)
		if (((absf(v_weapon - 12.0) < 0.00001) and (absf(GM.G["j4var10"] - 0.0) < 0.00001))):
			self.ev_user(4.0)
		if (((absf(v_weapon - 13.0) < 0.00001) and (absf(GM.G["j4var17"] - 0.0) < 0.00001))):
			self.ev_user(4.0)
		if (((absf(v_weapon - 14.0) < 0.00001) and (absf(GM.G["j4var18"] - 0.0) < 0.00001))):
			self.ev_user(4.0)
		if (((absf(v_weapon - 15.0) < 0.00001) and (absf(GM.G["j4var19"] - 0.0) < 0.00001))):
			self.ev_user(4.0)
		if (((absf(v_weapon - 16.0) < 0.00001) and (absf(GM.G["j4var20"] - 0.0) < 0.00001))):
			self.ev_user(4.0)
		if (((absf(v_weapon - 17.0) < 0.00001) and (absf(GM.G["j4var21"] - 0.0) < 0.00001))):
			self.ev_user(4.0)
		if (((absf(v_weapon - 18.0) < 0.00001) and (absf(GM.G["j4var22"] - 0.0) < 0.00001))):
			self.ev_user(4.0)
		(GM.f_sound_play(112.0))
		alarm[int(1.0)] = 1.0
