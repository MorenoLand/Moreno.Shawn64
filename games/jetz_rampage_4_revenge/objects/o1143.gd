extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_fluh = 0.0
var v_grenades = 0.0
var v_guyleft = 0.0
var v_guyright = 0.0
var v_guyx = 0.0
var v_guyy = 0.0
var v_have1 = 0.0
var v_have12 = 0.0
var v_have13 = 0.0
var v_have3 = 0.0
var v_have4 = 0.0
var v_have5 = 0.0
var v_have7 = 0.0
var v_have8 = 0.0
var v_movenow = 0.0
var v_myhealth = 0.0
var v_mymoney = 0.0
var v_shotready = 0.0
var v_weapon = 0.0
var v_woot = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
var v_wow = 0.0
func ev_create():
	(GM.f_sound_loop(229.0))
	GM.view_object[int(1.0)] = 1143.0
	GM.view_hborder[int(1.0)] = (400.0 - 31.0)
	GM.view_vborder[int(1.0)] = (150.0 - 31.0)
	v_grenades = 5.0
	v_movenow = 1.0
	v_mymoney = 0.0
	v_guyright = 0.0
	v_guyleft = 1.0
	v_myhealth = 50.0
	friction = 0.1
	v_weapon = 1.0
	v_shotready = 1.0
	v_have1 = 1.0
	v_have3 = 0.0
	v_have4 = 0.0
	v_have5 = 0.0
	v_have7 = 0.0
	v_have8 = 0.0
	v_have12 = 0.0
	v_have13 = 0.0
func ev_alarm_0():
	v_shotready = 1.0
func ev_step():
	if ((speed > 16.0)):
		speed = 16.0
	v_wow = (GM.f_instance_create(((x + (sprite_width / 2.0)) - 2.5), ((y + (sprite_height / 2.0)) - 2.5), 488.0))
	GM.vsetb(v_wow, "vspeed", GM.vb(v_wow, "vspeed") + vspeed)
	if ((v_myhealth <= 0.0)):
		self.ev_user(0.0)
func ev_col_1142():
	(GM.f_motion_add(self, GM.vb(self.other, "direction"), 1.0))
	v_myhealth = v_myhealth - 0.1
func ev_col_1141():
	(GM.f_motion_add(self, GM.vb(self.other, "direction"), 1.0))
	v_myhealth = v_myhealth - 0.1
func ev_col_1139():
	v_woot = (GM.f_round((GM.f_random(3.0))))
	if (GM.eq(v_woot, 0.0)):
		v_myhealth = v_myhealth - 0.4
	v_woot = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 490.0))
	v_woot2 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 905.0))
	v_woot3 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 906.0))
	GM.vsetb(v_woot, "depth", depth)
	GM.vsetb(v_woot2, "depth", depth)
	GM.vsetb(v_woot3, "depth", depth)
func ev_col_1135():
	(GM.f_motion_add(self, GM.vb(self.other, "direction"), 1.0))
	v_myhealth = v_myhealth - 0.6
func ev_col_1134():
	(GM.f_motion_add(self, GM.vb(self.other, "direction"), 1.0))
	v_myhealth = v_myhealth - 0.1
func ev_col_962():
	if ((speed > 3.0)):
		GM.vsetb(self.other, "image_single", 1.0)
		GM.vb(self.other, "alarm")[int(0.0)] = 3.0
		(GM.f_sound_play(144.0))
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_656():
	for _r795 in range(int((4.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	v_fluh = GM.vget(self.other, "v_wooper")
	direction = ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0)
	speed = speed + 0.5
	v_myhealth = v_myhealth - 0.1
func ev_key_87():
	(GM.f_motion_add(self, 90.0, 0.7))
	if not ((((GM.f_sound_isplaying(109.0)))) >= 0.5):
		(GM.f_sound_play(109.0))
func ev_key_83():
	(GM.f_motion_add(self, 270.0, 0.7))
	if not ((((GM.f_sound_isplaying(109.0)))) >= 0.5):
		(GM.f_sound_play(109.0))
func ev_key_72():
	if ((absf(v_movenow - 1.0) < 0.00001)):
		if ((absf(v_shotready - 1.0) < 0.00001)):
			if ((absf(v_weapon - 1.0) < 0.00001)):
				if ((absf(v_guyright - 1.0) < 0.00001)):
					v_woot = (GM.f_instance_create(((x + 21.0) + 43.0), ((y - 3.0) + 29.0), 1144.0))
				else:
					v_woot = (GM.f_instance_create(((x - 6.0) + 0.0), ((y - 3.0) + 29.0), 1144.0))
				v_shotready = 0.0
				alarm[int(0.0)] = 4.0
			if ((absf(v_weapon - 3.0) < 0.00001)):
				if not ((((GM.f_sound_isplaying(111.0)))) >= 0.5):
					(GM.f_sound_loop(111.0))
				if ((absf(v_guyright - 1.0) < 0.00001)):
					(GM.f_instance_create((x + 21.0), (y - 3.0), 1147.0))
					v_woot = (GM.f_instance_create(((x + 21.0) + 17.0), ((y - 3.0) + 27.0), 490.0))
					GM.vsetb(v_woot, "hspeed", GM.vb(v_woot, "hspeed") + hspeed)
					GM.vsetb(v_woot, "vspeed", GM.vb(v_woot, "vspeed") + vspeed)
					GM.vsetb(v_woot, "depth", (depth - 1.0))
				else:
					(GM.f_instance_create((x - 6.0), (y - 3.0), 1147.0))
					v_woot = (GM.f_instance_create(((x - 6.0) + 26.0), ((y - 3.0) + 27.0), 490.0))
					GM.vsetb(v_woot, "hspeed", GM.vb(v_woot, "hspeed") + hspeed)
					GM.vsetb(v_woot, "vspeed", GM.vb(v_woot, "vspeed") + vspeed)
					GM.vsetb(v_woot, "depth", (depth - 1.0))
			if (((absf(v_weapon - 4.0) < 0.00001) or (absf(v_weapon - 12.0) < 0.00001))):
				if ((absf(v_guyright - 1.0) < 0.00001)):
					if ((absf(v_weapon - 4.0) < 0.00001)):
						v_woot = (GM.f_instance_create(((x + 21.0) + 36.0), ((y - 3.0) + 23.0), 1148.0))
					else:
						v_woot = (GM.f_instance_create(((x + 21.0) + 36.0), ((y - 3.0) + 23.0), 1149.0))
						v_movenow = 0.0
					for _r796 in range(int((10.0))):
						v_woot2 = (GM.f_instance_create((GM.vb(v_woot, "x") + (GM.vb(v_woot, "sprite_width") / 2.0)), (GM.vb(v_woot, "y") + (GM.vb(v_woot, "sprite_height") / 2.0)), 490.0))
						GM.vsetb(v_woot2, "hspeed", GM.vb(v_woot2, "hspeed") + hspeed)
						GM.vsetb(v_woot2, "vspeed", GM.vb(v_woot2, "vspeed") + vspeed)
					(GM.f_motion_add(self, 180.0, 5.0))
				else:
					if ((absf(v_weapon - 4.0) < 0.00001)):
						v_woot = (GM.f_instance_create(((x - 6.0) + 0.0), ((y - 3.0) + 23.0), 1148.0))
					else:
						v_woot = (GM.f_instance_create(((x - 6.0) + 0.0), ((y - 3.0) + 23.0), 1149.0))
						v_movenow = 0.0
					for _r797 in range(int((10.0))):
						v_woot2 = (GM.f_instance_create((GM.vb(v_woot, "x") + (GM.vb(v_woot, "sprite_width") / 2.0)), (GM.vb(v_woot, "y") + (GM.vb(v_woot, "sprite_height") / 2.0)), 490.0))
						GM.vsetb(v_woot2, "hspeed", GM.vb(v_woot2, "hspeed") + hspeed)
						GM.vsetb(v_woot2, "vspeed", GM.vb(v_woot2, "vspeed") + vspeed)
					(GM.f_motion_add(self, 0.0, 5.0))
				(GM.f_sound_play(116.0))
				v_shotready = 0.0
				alarm[int(0.0)] = 50.0
			if ((absf(v_weapon - 5.0) < 0.00001)):
				if not ((((GM.f_sound_isplaying(114.0)))) >= 0.5):
					(GM.f_sound_loop(114.0))
				if ((absf(v_guyright - 1.0) < 0.00001)):
					v_woot = (GM.f_instance_create(((x + 21.0) + 39.0), ((y - 3.0) + 30.0), 490.0))
					v_woot2 = (GM.f_instance_create(((x + 21.0) + 39.0), ((y - 3.0) + 30.0), 1150.0))
					v_woot3 = (GM.f_instance_create(((x + 21.0) + 39.0), ((y - 3.0) + 30.0), 1151.0))
				else:
					v_woot = (GM.f_instance_create(((x - 6.0) + 2.0), ((y - 3.0) + 30.0), 490.0))
					v_woot2 = (GM.f_instance_create(((x - 6.0) + 2.0), ((y - 3.0) + 30.0), 1150.0))
					v_woot3 = (GM.f_instance_create(((x - 6.0) + 2.0), ((y - 3.0) + 30.0), 1151.0))
				GM.vsetb(v_woot, "hspeed", GM.vb(v_woot, "hspeed") + hspeed)
				GM.vsetb(v_woot, "vspeed", GM.vb(v_woot, "vspeed") + vspeed)
				GM.vsetb(v_woot2, "hspeed", GM.vb(v_woot2, "hspeed") + hspeed)
				GM.vsetb(v_woot2, "vspeed", GM.vb(v_woot2, "vspeed") + vspeed)
				GM.vsetb(v_woot3, "hspeed", GM.vb(v_woot3, "hspeed") + hspeed)
				GM.vsetb(v_woot3, "vspeed", GM.vb(v_woot3, "vspeed") + vspeed)
			if ((absf(v_weapon - 7.0) < 0.00001)):
				if ((absf(v_guyright - 1.0) < 0.00001)):
					v_woot = (GM.f_instance_create(((x + 21.0) + 51.0), ((y - 3.0) + 25.0), 1145.0))
				else:
					v_woot = (GM.f_instance_create(((x - 6.0) + 0.0), ((y - 3.0) + 25.0), 1145.0))
				v_shotready = 0.0
				alarm[int(0.0)] = 3.0
			if ((absf(v_weapon - 8.0) < 0.00001)):
				for _r798 in range(int((3.0))):
					if ((absf(v_guyright - 1.0) < 0.00001)):
						v_woot = (GM.f_instance_create(((x + 21.0) + 51.0), ((y - 3.0) + 25.0), 1146.0))
					else:
						v_woot = (GM.f_instance_create(((x - 6.0) + 0.0), ((y - 3.0) + 25.0), 1146.0))
				v_shotready = 0.0
				alarm[int(0.0)] = 4.0
			if ((absf(v_weapon - 13.0) < 0.00001)):
				if ((absf(v_guyright - 1.0) < 0.00001)):
					(GM.f_motion_add(self, 180.0, 2.0))
					for _r799 in range(int((20.0))):
						(GM.f_instance_create(((x + 21.0) + 51.0), ((y - 3.0) + 25.0), 1146.0))
					for _r800 in range(int((4.0))):
						(GM.f_instance_create(((x + 21.0) + 51.0), ((y - 3.0) + 25.0), 490.0))
				else:
					for _r801 in range(int((20.0))):
						(GM.f_instance_create(((x - 6.0) + 0.0), ((y - 3.0) + 25.0), 1146.0))
					for _r802 in range(int((4.0))):
						(GM.f_instance_create(((x - 6.0) + 0.0), ((y - 3.0) + 25.0), 490.0))
					(GM.f_motion_add(self, 0.0, 2.0))
				v_shotready = 0.0
				alarm[int(0.0)] = 30.0
			if ((absf(alarm[int(0.0)] - (-1.0)) < 0.00001)):
				alarm[int(0.0)] = 1.0
func ev_key_68():
	(GM.f_motion_add(self, 0.0, 0.8))
	if ((hspeed > 0.0)):
		v_guyleft = 0.0
		v_guyright = 1.0
	if not ((((GM.f_sound_isplaying(109.0)))) >= 0.5):
		(GM.f_sound_play(109.0))
func ev_key_65():
	(GM.f_motion_add(self, 180.0, 0.8))
	if ((hspeed < 0.0)):
		v_guyleft = 1.0
		v_guyright = 0.0
	if not ((((GM.f_sound_isplaying(109.0)))) >= 0.5):
		(GM.f_sound_play(109.0))
func ev_other_10():
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 722.0))
	for _r803 in range(int((45.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	for _r804 in range(int((45.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	for _r805 in range(int((46.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 717.0))
	GM.G["j4var24"] = GM.G["j4var24"] + 1.0
	(GM.f_instance_create(x, y, 901.0))
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Trebuchet MS", 11.0, 1.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	v_guyx = x
	v_guyy = x
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
	if ((absf(v_weapon - 1.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			if (((GM.f_keyboard_check((GM.f_ord("H")))))) >= 0.5:
				(GM.f_draw_sprite(467.0, (-1.0), (x + 21.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(467.0, 0.0, (x + 21.0), (y - 3.0)))
		else:
			if (((GM.f_keyboard_check((GM.f_ord("H")))))) >= 0.5:
				(GM.f_draw_sprite(468.0, (-1.0), (x - 6.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(468.0, 0.0, (x - 6.0), (y - 3.0)))
	if ((absf(v_weapon - 3.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			if (((GM.f_keyboard_check((GM.f_ord("H")))))) >= 0.5:
				(GM.f_draw_sprite(454.0, (-1.0), (x + 21.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(454.0, 0.0, (x + 21.0), (y - 3.0)))
		else:
			if (((GM.f_keyboard_check((GM.f_ord("H")))))) >= 0.5:
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
			if (((GM.f_keyboard_check((GM.f_ord("H")))))) >= 0.5:
				(GM.f_draw_sprite(834.0, (-1.0), (x + 21.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(834.0, 0.0, (x + 21.0), (y - 3.0)))
		else:
			if (((GM.f_keyboard_check((GM.f_ord("H")))))) >= 0.5:
				(GM.f_draw_sprite(835.0, (-1.0), (x - 17.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(835.0, 0.0, (x - 17.0), (y - 3.0)))
	if ((absf(v_weapon - 8.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			if (((GM.f_keyboard_check((GM.f_ord("H")))))) >= 0.5:
				(GM.f_draw_sprite(837.0, (-1.0), (x + 21.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(837.0, 0.0, (x + 21.0), (y - 3.0)))
		else:
			if (((GM.f_keyboard_check((GM.f_ord("H")))))) >= 0.5:
				(GM.f_draw_sprite(838.0, (-1.0), (x - 17.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(838.0, 0.0, (x - 17.0), (y - 3.0)))
	if ((absf(v_weapon - 9.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			if (((GM.f_ord("H")))) >= 0.5:
				(GM.f_draw_sprite(977.0, (-1.0), (x + 21.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(977.0, 0.0, (x + 21.0), (y - 3.0)))
		else:
			if (((GM.f_ord("H")))) >= 0.5:
				(GM.f_draw_sprite(978.0, (-1.0), (x - 6.0), (y - 3.0)))
			else:
				(GM.f_draw_sprite(978.0, 0.0, (x - 6.0), (y - 3.0)))
	if ((absf(v_weapon - 10.0) < 0.00001)):
		if ((absf((GM.f_ord("H")) - 1.0) < 0.00001)):
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
	if ((absf(v_weapon - 18.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			(GM.f_draw_sprite(1006.0, (-1.0), (x + 21.0), (y - 3.0)))
		else:
			(GM.f_draw_sprite(1007.0, (-1.0), (x - 17.0), (y - 3.0)))
	GM.font_align = 1.0
	if ((absf(GM.view_current - 1.0) < 0.00001)):
		(GM.f_draw_sprite(842.0, ((GM.f_point_direction((GM.view_xview[int(1.0)] + 400.0), (GM.view_yview[int(1.0)] + 150.0), (GM.vb(979.0, "x") + (GM.vb(979.0, "sprite_width") / 2.0)), (GM.vb(979.0, "y") + (GM.vb(979.0, "sprite_height") / 2.0)))) / 10.0), (GM.view_xview[int(1.0)] + 5.0), (GM.view_yview[int(1.0)] + 30.0)))
		(GM.f_draw_healthbar((GM.view_xview[int(1.0)] + 5.0), (GM.view_yview[int(1.0)] + 4.0), ((GM.view_xview[int(1.0)] + 5.0) + 189.0), (GM.view_yview[int(1.0)] + 24.0), v_myhealth, 0.0, 255.0, 16711680.0, 0.0, 0.0, 0.0))
		(GM.f_draw_sprite(822.0, 0.0, GM.view_xview[int(1.0)], (GM.view_yview[int(1.0)] + 295.0)))
func ev_keypress_74():
	(GM.f_sound_play(152.0))
	if ((absf(v_guyright - 1.0) < 0.00001)):
		v_guyright = 0.0
		v_guyleft = 1.0
	else:
		if ((absf(v_guyleft - 1.0) < 0.00001)):
			v_guyleft = 0.0
			v_guyright = 1.0
func ev_keypress_71():
	(GM.f_sound_stop(114.0))
	(GM.f_sound_stop(115.0))
	(GM.f_sound_stop(111.0))
	(GM.f_sound_stop(243.0))
	(GM.f_sound_play(112.0))
	if ((absf(v_weapon - 18.0) < 0.00001)):
		v_weapon = 0.0
	v_weapon = v_weapon + 1.0
	if ((absf(v_weapon - 2.0) < 0.00001)):
		v_weapon = v_weapon + 1.0
	if (((absf(v_weapon - 3.0) < 0.00001) and (absf(v_have3 - 0.0) < 0.00001))):
		v_weapon = v_weapon + 1.0
	if (((absf(v_weapon - 4.0) < 0.00001) and (absf(v_have4 - 0.0) < 0.00001))):
		v_weapon = v_weapon + 1.0
	if (((absf(v_weapon - 5.0) < 0.00001) and (absf(v_have5 - 0.0) < 0.00001))):
		v_weapon = v_weapon + 1.0
	if ((absf(v_weapon - 6.0) < 0.00001)):
		v_weapon = v_weapon + 1.0
	if (((absf(v_weapon - 7.0) < 0.00001) and (absf(v_have7 - 0.0) < 0.00001))):
		v_weapon = v_weapon + 1.0
	if (((absf(v_weapon - 8.0) < 0.00001) and (absf(v_have8 - 0.0) < 0.00001))):
		v_weapon = v_weapon + 1.0
	if ((absf(v_weapon - 9.0) < 0.00001)):
		v_weapon = v_weapon + 1.0
	if ((absf(v_weapon - 10.0) < 0.00001)):
		v_weapon = v_weapon + 1.0
	if ((absf(v_weapon - 11.0) < 0.00001)):
		v_weapon = v_weapon + 1.0
	if (((absf(v_weapon - 12.0) < 0.00001) and (absf(v_have12 - 0.0) < 0.00001))):
		v_weapon = v_weapon + 1.0
	if (((absf(v_weapon - 13.0) < 0.00001) and (absf(v_have13 - 0.0) < 0.00001))):
		v_weapon = v_weapon + 1.0
	if ((absf(v_weapon - 14.0) < 0.00001)):
		v_weapon = v_weapon + 1.0
	if ((absf(v_weapon - 15.0) < 0.00001)):
		v_weapon = v_weapon + 1.0
	if ((absf(v_weapon - 16.0) < 0.00001)):
		v_weapon = v_weapon + 1.0
	if ((absf(v_weapon - 17.0) < 0.00001)):
		v_weapon = v_weapon + 1.0
	if ((absf(v_weapon - 18.0) < 0.00001)):
		v_weapon = 1.0
func ev_keyrelease_72():
	(GM.f_sound_stop(114.0))
	(GM.f_sound_stop(115.0))
	(GM.f_sound_stop(111.0))
	(GM.f_sound_stop(243.0))
