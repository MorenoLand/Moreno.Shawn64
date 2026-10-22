extends "res://games/infection2/scripts.gd"
var v_downspeed = 0.0
var v_downspeed2 = 0.0
var v_flipweapon = 0.0
var v_flipweapon2 = 0.0
var v_flipy = 0.0
var v_flipy2 = 0.0
var v_gun1ready = 0.0
var v_gun2ready = 0.0
var v_point = 0.0
var v_reload = 0.0
var v_reload2 = 0.0
var v_rot = 0.0
var v_shootnow = 0.0
var v_weapon = 0.0
var v_weapon1number = 0.0
var v_weapon2 = 0.0
var v_weapon2number = 0.0
var v_weapon3number = 0.0
var v_weapon4number = 0.0
var v_weaponspin = 0.0
var v_weaponspin2 = 0.0
var v_wee = 0.0
var v_weez = 0.0
var v_yyy = 0.0
var v_yyy2 = 0.0
var v_yyy3 = 0.0
var v_yyy4 = 0.0
var v_yyy5 = 0.0
func ev_create():
	GM.view_hborder[0] = (320.0 - (sprite_width / 2.0))
	GM.view_vborder[0] = (240.0 - (sprite_height / 2.0))
	v_shootnow = 1.0
	GM.background_hspeed[int(0.0)] = (hspeed / 3.0)
	v_yyy = 0.0
	v_yyy2 = 0.0
	v_yyy3 = 0.0
	v_yyy4 = 0.0
	v_yyy5 = 0.0
	v_weapon = 0.0
	v_flipweapon = 0.0
	v_flipy = 0.0
	v_weaponspin = 0.0
	v_downspeed = 0.0
	v_reload = 0.0
	v_weapon2 = 0.0
	v_flipweapon2 = 0.0
	v_flipy2 = 0.0
	v_weaponspin2 = 0.0
	v_downspeed2 = 0.0
	v_reload2 = 0.0
	v_weapon1number = 0.0
	v_weapon2number = 0.0
	v_weapon3number = 0.0
	v_weapon4number = 0.0
	v_gun1ready = 1.0
	v_gun2ready = 1.0
	gravity_direction = 270.0
	gravity = 0.7
func ev_alarm_7():
	v_gun2ready = 1.0
func ev_alarm_6():
	v_gun1ready = 1.0
func ev_alarm_5():
	if not (((absf(alarm[int(4.0)] - (-1.0)) < 0.00001))):
		alarm[int(5.0)] = 1.0
	v_weaponspin2 = v_weaponspin2 + 30.0
	v_flipy2 = v_flipy2 + v_downspeed2
	v_downspeed2 = v_downspeed2 + 0.4
	v_yyy5 = v_yyy5 + (v_downspeed2 / 4.0)
func ev_alarm_4():
	alarm[int(5.0)] = 0.0
	v_flipweapon2 = 0.0
	v_flipy2 = 0.0
	v_weaponspin2 = 0.0
	v_downspeed2 = 0.0
	v_yyy5 = 0.0
	if ((absf(v_weapon2 - 1.0) < 0.00001)):
		(GM.f_sound_play(3.0))
	if ((absf(v_weapon2 - 2.0) < 0.00001)):
		(GM.f_sound_play(3.0))
	if ((absf(v_weapon2 - 3.0) < 0.00001)):
		(GM.f_sound_play(3.0))
func ev_alarm_3():
	if not (((absf(alarm[int(2.0)] - (-1.0)) < 0.00001))):
		alarm[int(3.0)] = 1.0
	v_weaponspin = v_weaponspin + 30.0
	v_flipy = v_flipy + v_downspeed
	v_downspeed = v_downspeed + 0.4
	v_yyy4 = v_yyy4 + (v_downspeed / 4.0)
func ev_alarm_2():
	alarm[int(3.0)] = 0.0
	v_flipweapon = 0.0
	v_flipy = 0.0
	v_weaponspin = 0.0
	v_downspeed = 0.0
	v_yyy4 = 0.0
	if ((absf(v_weapon - 1.0) < 0.00001)):
		(GM.f_sound_play(3.0))
	if ((absf(v_weapon - 2.0) < 0.00001)):
		(GM.f_sound_play(3.0))
	if ((absf(v_weapon - 3.0) < 0.00001)):
		(GM.f_sound_play(3.0))
func ev_alarm_1():
	v_yyy = 0.0
	v_yyy2 = 0.0
	v_yyy4 = 0.0
	v_yyy5 = 0.0
func ev_alarm_0():
	v_shootnow = 1.0
func ev_stepend():
	if (((GM.f_place_meeting(self, (x + hspeed), y, 1.0)))) >= 0.5:
		hspeed = 0.0
func ev_step():
	if ((((((GM.f_keyboard_check((GM.f_ord("A"))))) >= 0.5 or ((GM.f_keyboard_check((GM.f_ord("D"))))) >= 0.5) or ((GM.f_keyboard_check(39.0))) >= 0.5) or ((GM.f_keyboard_check(37.0))) >= 0.5)):
		pass
	else:
		if GM.truth(((GM.f_instance_position((x + (sprite_width / 2.0)), ((y + sprite_height) + 1.0), 1.0)))):
			if ((hspeed > 0.0)):
				hspeed = hspeed - 1.5
			if (((hspeed < 1.5) and (hspeed > (-1.5)))):
				hspeed = 0.0
			if ((hspeed < 0.0)):
				hspeed = hspeed + 1.5
		else:
			if ((hspeed > 0.0)):
				hspeed = hspeed - 0.7
			if (((hspeed < 0.7) and (hspeed > (-0.7)))):
				hspeed = 0.0
			if ((hspeed < 0.0)):
				hspeed = hspeed + 0.7
	if ((hspeed < (-14.0))):
		hspeed = (-14.0)
	if ((hspeed > 14.0)):
		hspeed = 14.0
	if not ((((GM.f_keyboard_check((GM.f_ord("A")))))) >= 0.5):
		if not ((((GM.f_keyboard_check((GM.f_ord("D")))))) >= 0.5):
			(GM.f_sound_stop(8.0))
	(GM.f_instance_deactivate_all(self, 1.0))
	(GM.f_instance_activate_region((GM.view_xview[0] - 200.0), (GM.view_yview[0] - 1.0), ((GM.view_xview[0] + GM.view_wview[0]) + 200.0), ((GM.view_yview[0] + GM.view_hview[0]) + 1.0), 1.0))
func ev_col_41():
	if ((absf(GM.vget(self.other, "v_hit") - 1.0) < 0.00001)):
		speed = (speed / 2.0)
func ev_col_1():
	if ((vspeed > 2.0)):
		(GM.f_sound_play(9.0))
	if (((vspeed > 0.0) and not (((GM.f_place_free(self, x, (y + vspeed)))) >= 0.5))):
		if (((vspeed > 0.0) and ((GM.f_place_free(self, x, ((y + vspeed) + 1.0)))) >= 0.5)):
			(GM.f_move_contact(self, 270.0))
	vspeed = 0.0
func ev_key_83():
	v_yyy = 5.0
	v_yyy2 = 10.0
	v_yyy4 = 10.0
	v_yyy5 = 10.0
	alarm[int(1.0)] = 1.0
func ev_key_68():
	if ((((GM.f_place_meeting(self, (x + (-1.0)), (y + 0.0), 1.0))))) >= 0.5:
		if (not ((((GM.f_place_meeting(self, (x + 0.0), (y + 40.0), 1.0)))) >= 0.5)):
			(GM.f_motion_set(self, 70.0, 10.0))
	if (not (((GM.f_place_meeting(self, ((x + hspeed) + 1.0), y, 1.0))) >= 0.5)):
		if ((hspeed < 18.0)):
			hspeed = hspeed + 1.0
	v_wee = (GM.f_instance_create(((x + 20.0) - (hspeed / 2.0)), ((y + 50.0) - v_yyy3), 7.0))
	GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + ((hspeed - 2.0) - (GM.f_random(5.0))))
	GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + vspeed)
	v_wee = (GM.f_instance_create(((x + 20.0) + (hspeed / 2.0)), ((y + 50.0) - v_yyy3), 7.0))
	GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + ((hspeed - 2.0) - (GM.f_random(5.0))))
	GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + vspeed)
	if not ((((GM.f_sound_isplaying(8.0)))) >= 0.5):
		(GM.f_sound_loop(8.0))
func ev_key_65():
	if ((((GM.f_place_meeting(self, (x + 1.0), (y + 0.0), 1.0))))) >= 0.5:
		if (not ((((GM.f_place_meeting(self, (x + 0.0), (y + 40.0), 1.0)))) >= 0.5)):
			(GM.f_motion_set(self, 110.0, 10.0))
	if (not (((GM.f_place_meeting(self, ((x + hspeed) - 1.0), y, 1.0))) >= 0.5)):
		if ((hspeed > (-18.0))):
			hspeed = hspeed - 1.0
	v_wee = (GM.f_instance_create(((x + 20.0) - (hspeed / 2.0)), ((y + 50.0) - v_yyy3), 7.0))
	GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + ((hspeed + 2.0) + (GM.f_random(5.0))))
	GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + vspeed)
	v_wee = (GM.f_instance_create(((x + 20.0) + (hspeed / 2.0)), ((y + 50.0) - v_yyy3), 7.0))
	GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + ((hspeed + 2.0) + (GM.f_random(5.0))))
	GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + vspeed)
	if not ((((GM.f_sound_isplaying(8.0)))) >= 0.5):
		(GM.f_sound_loop(8.0))
func ev_key_40():
	(GM.f_event_perform(self, 5.0, (GM.f_ord("S"))))
func ev_key_39():
	(GM.f_event_perform(self, 5.0, (GM.f_ord("D"))))
func ev_key_37():
	(GM.f_event_perform(self, 5.0, (GM.f_ord("A"))))
func ev_mouse_54():
	if (((GM.f_keyboard_check(17.0)))) >= 0.5:
		if ((absf(v_flipweapon2 - 0.0) < 0.00001)):
			v_weapon2 = v_weapon2 + 1.0
			if (((absf(v_weapon2 - 1.0) < 0.00001) and (absf(v_weapon1number - 0.0) < 0.00001))):
				v_weapon2 = v_weapon2 + 1.0
			if (((absf(v_weapon2 - 1.0) < 0.00001) and (absf(v_weapon1number - 1.0) < 0.00001))):
				v_weapon2 = v_weapon2 + 1.0
			if (((absf(v_weapon2 - 2.0) < 0.00001) and (absf(v_weapon2number - 0.0) < 0.00001))):
				v_weapon2 = v_weapon2 + 1.0
			if ((((absf(v_weapon2 - 2.0) < 0.00001) and (absf(v_weapon2number - 1.0) < 0.00001)) and (absf(v_weapon - 2.0) < 0.00001))):
				v_weapon2 = v_weapon2 + 1.0
			if (((absf(v_weapon2 - 3.0) < 0.00001) and (absf(v_weapon3number - 0.0) < 0.00001))):
				v_weapon2 = v_weapon2 + 1.0
			if ((((absf(v_weapon2 - 3.0) < 0.00001) and (absf(v_weapon3number - 1.0) < 0.00001)) and (absf(v_weapon - 3.0) < 0.00001))):
				v_weapon2 = v_weapon2 + 1.0
			if (((absf(v_weapon2 - 4.0) < 0.00001) and (absf(v_weapon4number - 0.0) < 0.00001))):
				v_weapon2 = v_weapon2 + 1.0
			if ((((absf(v_weapon2 - 4.0) < 0.00001) and (absf(v_weapon4number - 1.0) < 0.00001)) and (absf(v_weapon - 4.0) < 0.00001))):
				v_weapon2 = v_weapon2 + 1.0
			if ((absf(v_weapon2 - 5.0) < 0.00001)):
				v_weapon2 = 0.0
			(GM.f_sound_play(5.0))
			v_flipweapon2 = 1.0
			alarm[int(5.0)] = 1.0
			alarm[int(4.0)] = 25.0
			v_downspeed2 = (-5.0)
func ev_mouse_53():
	if (((GM.f_keyboard_check(17.0)))) >= 0.5:
		if ((absf(v_flipweapon - 0.0) < 0.00001)):
			v_weapon = v_weapon + 1.0
			if (((absf(v_weapon - 1.0) < 0.00001) and (absf(v_weapon1number - 0.0) < 0.00001))):
				v_weapon = v_weapon + 1.0
			if ((((absf(v_weapon - 1.0) < 0.00001) and (absf(v_weapon1number - 1.0) < 0.00001)) and (absf(v_weapon2 - 1.0) < 0.00001))):
				v_weapon = v_weapon + 1.0
			if (((absf(v_weapon - 2.0) < 0.00001) and (absf(v_weapon2number - 0.0) < 0.00001))):
				v_weapon = v_weapon + 1.0
			if ((((absf(v_weapon - 2.0) < 0.00001) and (absf(v_weapon2number - 1.0) < 0.00001)) and (absf(v_weapon2 - 2.0) < 0.00001))):
				v_weapon = v_weapon + 1.0
			if (((absf(v_weapon - 3.0) < 0.00001) and (absf(v_weapon3number - 0.0) < 0.00001))):
				v_weapon = v_weapon + 1.0
			if ((((absf(v_weapon - 3.0) < 0.00001) and (absf(v_weapon3number - 1.0) < 0.00001)) and (absf(v_weapon2 - 3.0) < 0.00001))):
				v_weapon = v_weapon + 1.0
			if (((absf(v_weapon - 4.0) < 0.00001) and (absf(v_weapon4number - 0.0) < 0.00001))):
				v_weapon = v_weapon + 1.0
			if ((((absf(v_weapon - 4.0) < 0.00001) and (absf(v_weapon4number - 1.0) < 0.00001)) and (absf(v_weapon2 - 4.0) < 0.00001))):
				v_weapon = v_weapon + 1.0
			if ((absf(v_weapon - 5.0) < 0.00001)):
				v_weapon = 0.0
			(GM.f_sound_play(5.0))
			v_flipweapon = 1.0
			alarm[int(3.0)] = 1.0
			alarm[int(2.0)] = 25.0
			v_downspeed = (-5.0)
func ev_mouse_51():
	v_weez = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.mouse_x, (GM.mouse_y + 25.0)))
	if not ((((GM.f_keyboard_check(17.0)))) >= 0.5):
		if (((absf(v_gun2ready - 1.0) < 0.00001) and (absf(v_flipweapon2 - 0.0) < 0.00001))):
			if ((GM.mouse_x > (x + (sprite_width / 2.0)))):
				if ((absf(v_weapon2 - 1.0) < 0.00001)):
					(GM.f_sound_play(12.0))
					for _r1 in range(int((10.0))):
						(GM.f_instance_create(((x + 32.0) + (GM.f_lengthdir_x(30.0, v_weez))), (((y + 36.0) + v_yyy2) + (GM.f_lengthdir_y(30.0, v_weez))), 23.0))
			else:
				if ((absf(v_weapon2 - 1.0) < 0.00001)):
					(GM.f_sound_play(12.0))
					for _r2 in range(int((10.0))):
						(GM.f_instance_create(((x + 26.0) + (GM.f_lengthdir_x(30.0, v_weez))), (((y + 36.0) + v_yyy2) + (GM.f_lengthdir_y(30.0, v_weez))), 23.0))
			(GM.f_instance_create(x, y, 25.0))
			v_gun2ready = 0.0
			alarm[int(7.0)] = 35.0
func ev_mouse_50():
	v_weez = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.mouse_x, (GM.mouse_y + 25.0)))
	if not ((((GM.f_keyboard_check(17.0)))) >= 0.5):
		if (((absf(v_gun1ready - 1.0) < 0.00001) and (absf(v_flipweapon - 0.0) < 0.00001))):
			if ((GM.mouse_x > (x + (sprite_width / 2.0)))):
				if ((absf(v_weapon - 1.0) < 0.00001)):
					(GM.f_sound_play(12.0))
					for _r3 in range(int((10.0))):
						(GM.f_instance_create(((x + 32.0) + (GM.f_lengthdir_x(30.0, v_weez))), (((y + 36.0) + v_yyy2) + (GM.f_lengthdir_y(30.0, v_weez))), 23.0))
			else:
				if ((absf(v_weapon - 1.0) < 0.00001)):
					(GM.f_sound_play(12.0))
					for _r4 in range(int((10.0))):
						(GM.f_instance_create(((x + 26.0) + (GM.f_lengthdir_x(30.0, v_weez))), (((y + 36.0) + v_yyy2) + (GM.f_lengthdir_y(30.0, v_weez))), 23.0))
			(GM.f_instance_create(x, y, 24.0))
			v_gun1ready = 0.0
			alarm[int(6.0)] = 35.0
func ev_draw():
	(GM.f_draw_set_font(0.0))
	(GM.f_draw_set_halign(0.0))
	(GM.f_draw_set_blend_mode(1.0))
	(GM.f_draw_set_alpha(0.7))
	(GM.f_draw_line_color((x + 30.0), ((y + 32.0) + v_yyy2), GM.mouse_x, (GM.mouse_y + 35.0), 255.0, 0.0))
	(GM.f_draw_set_alpha(1.0))
	(GM.f_draw_set_blend_mode(0.0))
	v_point = (GM.f_point_direction((x + (sprite_width / 2.0)), y, GM.mouse_x, GM.mouse_y))
	if ((GM.mouse_x > (x + 30.0))):
		if ((v_point < 180.0)):
			v_rot = v_point
		else:
			v_rot = (-((360.0 - v_point)))
		if ((absf(v_flipweapon2 - 0.0) < 0.00001)):
			if ((absf(v_weapon2 - 1.0) < 0.00001)):
				(GM.f_draw_sprite_ext(18.0, 0.0, (x + 34.0), ((y + 32.0) + v_yyy2), 1.0, 1.0, (v_point + v_reload2), 16777215.0, 1.0))
			if ((absf(v_weapon2 - 3.0) < 0.00001)):
				(GM.f_draw_sprite_ext(21.0, 0.0, (x + 34.0), ((y + 32.0) + v_yyy2), 1.0, 1.0, (v_point + v_reload2), 16777215.0, 1.0))
			if ((absf(v_weapon2 - 2.0) < 0.00001)):
				(GM.f_draw_sprite_ext(20.0, 0.0, (x + 34.0), ((y + 32.0) + v_yyy2), 1.0, 1.0, (v_point + v_reload2), 16777215.0, 1.0))
		else:
			if ((absf(v_weapon2 - 1.0) < 0.00001)):
				(GM.f_draw_sprite_ext(18.0, 0.0, (x + 42.0), (((y + 32.0) + v_yyy2) + v_flipy2), 1.0, 1.0, v_weaponspin2, 16777215.0, 1.0))
			if ((absf(v_weapon2 - 3.0) < 0.00001)):
				(GM.f_draw_sprite_ext(21.0, 0.0, (x + 42.0), (((y + 32.0) + v_yyy2) + v_flipy2), 1.0, 1.0, v_weaponspin2, 16777215.0, 1.0))
			if ((absf(v_weapon2 - 2.0) < 0.00001)):
				(GM.f_draw_sprite_ext(20.0, 0.0, (x + 42.0), (((y + 32.0) + v_yyy2) + v_flipy2), 1.0, 1.0, v_weaponspin2, 16777215.0, 1.0))
		(GM.f_draw_sprite_ext(17.0, 0.0, (x + 34.0), ((y + 32.0) + v_yyy5), 1.0, 1.0, (v_rot + v_reload2), 16777215.0, 1.0))
		(GM.f_draw_sprite_ext(14.0, 0.0, (x + 30.0), ((y + 36.0) + v_yyy), 1.0, 1.0, hspeed, 16777215.0, 1.0))
		if ((v_point < 180.0)):
			(GM.f_draw_sprite_ext(15.0, 0.0, ((x + 30.0) - (v_rot / 5.0)), (((y + 13.0) + (v_rot / 10.0)) + v_yyy2), 1.0, 1.0, v_rot, 16777215.0, 1.0))
		else:
			(GM.f_draw_sprite_ext(15.0, 0.0, ((x + 30.0) - (v_rot / 5.0)), (((y + 13.0) - (v_rot / 10.0)) + v_yyy2), 1.0, 1.0, v_rot, 16777215.0, 1.0))
		(GM.f_draw_sprite(16.0, 0.0, ((x + 20.0) - (hspeed / 2.0)), ((y + 46.0) - v_yyy3)))
		(GM.f_draw_sprite(16.0, 0.0, ((x + 20.0) + (hspeed / 2.0)), ((y + 46.0) - v_yyy3)))
		if ((absf(v_flipweapon - 1.0) < 0.00001)):
			if ((absf(v_weapon - 1.0) < 0.00001)):
				(GM.f_draw_sprite_ext(18.0, 0.0, (x + 40.0), (((y + 36.0) + v_yyy2) + v_flipy), 1.0, 1.0, v_weaponspin, 16777215.0, 1.0))
			if ((absf(v_weapon - 3.0) < 0.00001)):
				(GM.f_draw_sprite_ext(21.0, 0.0, (x + 40.0), (((y + 36.0) + v_yyy2) + v_flipy), 1.0, 1.0, v_weaponspin, 16777215.0, 1.0))
			if ((absf(v_weapon - 2.0) < 0.00001)):
				(GM.f_draw_sprite_ext(20.0, 0.0, (x + 40.0), (((y + 36.0) + v_yyy2) + v_flipy), 1.0, 1.0, v_weaponspin, 16777215.0, 1.0))
		else:
			if ((absf(v_weapon - 1.0) < 0.00001)):
				(GM.f_draw_sprite_ext(18.0, 0.0, (x + 32.0), ((y + 36.0) + v_yyy2), 1.0, 1.0, (v_point + v_reload), 16777215.0, 1.0))
			if ((absf(v_weapon - 3.0) < 0.00001)):
				(GM.f_draw_sprite_ext(21.0, 0.0, (x + 32.0), ((y + 36.0) + v_yyy2), 1.0, 1.0, (v_point + v_reload), 16777215.0, 1.0))
			if ((absf(v_weapon - 2.0) < 0.00001)):
				(GM.f_draw_sprite_ext(20.0, 0.0, (x + 32.0), ((y + 36.0) + v_yyy2), 1.0, 1.0, (v_point + v_reload), 16777215.0, 1.0))
		(GM.f_draw_sprite_ext(17.0, 0.0, (x + 32.0), ((y + 36.0) + v_yyy4), 1.0, 1.0, (v_rot + v_reload), 16777215.0, 1.0))
	if ((GM.mouse_x < (x + 30.0))):
		v_rot = (180.0 + v_point)
		if ((absf(v_flipweapon2 - 0.0) < 0.00001)):
			if ((absf(v_weapon2 - 1.0) < 0.00001)):
				(GM.f_draw_sprite_ext(18.0, 1.0, (x + 24.0), ((y + 32.0) + v_yyy2), 1.0, 1.0, (v_rot - v_reload2), 16777215.0, 1.0))
			if ((absf(v_weapon2 - 3.0) < 0.00001)):
				(GM.f_draw_sprite_ext(21.0, 1.0, (x + 24.0), ((y + 32.0) + v_yyy2), 1.0, 1.0, (v_rot - v_reload2), 16777215.0, 1.0))
			if ((absf(v_weapon2 - 2.0) < 0.00001)):
				(GM.f_draw_sprite_ext(20.0, 1.0, (x + 24.0), ((y + 32.0) + v_yyy2), 1.0, 1.0, (v_rot - v_reload2), 16777215.0, 1.0))
		else:
			if ((absf(v_weapon2 - 2.0) < 0.00001)):
				(GM.f_draw_sprite_ext(20.0, 1.0, (x + 18.0), (((y + 32.0) + v_yyy2) + v_flipy2), 1.0, 1.0, v_weaponspin2, 16777215.0, 1.0))
			if ((absf(v_weapon2 - 3.0) < 0.00001)):
				(GM.f_draw_sprite_ext(21.0, 1.0, (x + 18.0), (((y + 32.0) + v_yyy2) + v_flipy2), 1.0, 1.0, v_weaponspin2, 16777215.0, 1.0))
			if ((absf(v_weapon2 - 1.0) < 0.00001)):
				(GM.f_draw_sprite_ext(18.0, 1.0, (x + 18.0), (((y + 32.0) + v_yyy2) + v_flipy2), 1.0, 1.0, v_weaponspin2, 16777215.0, 1.0))
		(GM.f_draw_sprite_ext(17.0, 1.0, (x + 26.0), ((y + 32.0) + v_yyy5), 1.0, 1.0, (v_rot - v_reload2), 16777215.0, 1.0))
		(GM.f_draw_sprite_ext(14.0, 1.0, (x + 30.0), ((y + 36.0) + v_yyy), 1.0, 1.0, hspeed, 16777215.0, 1.0))
		if ((v_point < 180.0)):
			(GM.f_draw_sprite_ext(15.0, 1.0, ((x + 30.0) + (((180.0 - v_point)) / 5.0)), (((y + 13.0) + (((180.0 - v_point)) / 10.0)) + v_yyy2), 1.0, 1.0, (180.0 + v_point), 16777215.0, 1.0))
		else:
			(GM.f_draw_sprite_ext(15.0, 1.0, ((x + 30.0) + (((180.0 - v_point)) / 4.5)), (((y + 13.0) - (((180.0 - v_point)) / 8.0)) + v_yyy2), 1.0, 1.0, (180.0 + v_point), 16777215.0, 1.0))
		(GM.f_draw_sprite(16.0, 1.0, ((x + 20.0) - (hspeed / 2.0)), ((y + 46.0) - v_yyy3)))
		(GM.f_draw_sprite(16.0, 1.0, ((x + 20.0) + (hspeed / 2.0)), ((y + 46.0) - v_yyy3)))
		if ((absf(v_flipweapon - 1.0) < 0.00001)):
			if ((absf(v_weapon - 1.0) < 0.00001)):
				(GM.f_draw_sprite_ext(18.0, 1.0, (x + 20.0), (((y + 36.0) + v_yyy2) + v_flipy), 1.0, 1.0, v_weaponspin, 16777215.0, 1.0))
			if ((absf(v_weapon - 3.0) < 0.00001)):
				(GM.f_draw_sprite_ext(21.0, 1.0, (x + 20.0), (((y + 36.0) + v_yyy2) + v_flipy), 1.0, 1.0, v_weaponspin, 16777215.0, 1.0))
			if ((absf(v_weapon - 2.0) < 0.00001)):
				(GM.f_draw_sprite_ext(20.0, 1.0, (x + 20.0), (((y + 36.0) + v_yyy2) + v_flipy), 1.0, 1.0, v_weaponspin, 16777215.0, 1.0))
		else:
			if ((absf(v_weapon - 1.0) < 0.00001)):
				(GM.f_draw_sprite_ext(18.0, 1.0, (x + 26.0), ((y + 36.0) + v_yyy2), 1.0, 1.0, (v_rot - v_reload), 16777215.0, 1.0))
			if ((absf(v_weapon - 3.0) < 0.00001)):
				(GM.f_draw_sprite_ext(21.0, 1.0, (x + 26.0), ((y + 36.0) + v_yyy2), 1.0, 1.0, (v_rot - v_reload), 16777215.0, 1.0))
			if ((absf(v_weapon - 2.0) < 0.00001)):
				(GM.f_draw_sprite_ext(20.0, 1.0, (x + 26.0), ((y + 36.0) + v_yyy2), 1.0, 1.0, (v_rot - v_reload), 16777215.0, 1.0))
		(GM.f_draw_sprite_ext(17.0, 1.0, (x + 28.0), ((y + 36.0) + v_yyy4), 1.0, 1.0, (v_rot - v_reload), 16777215.0, 1.0))
	(GM.f_draw_sprite(7.0, (-1.0), GM.mouse_x, (GM.mouse_y + 35.0)))
	if ((absf(v_weapon - 0.0) < 0.00001)):
		if ((v_weapon1number > 0.0)):
			(GM.f_draw_set_color(16777215.0))
			(GM.f_draw_text((GM.view_xview[0] + 5.0), (GM.view_yview[0] + 5.0), "Hold control and"))
			(GM.f_draw_text((GM.view_xview[0] + 5.0), (GM.view_yview[0] + 25.0), "LEFT Click to wield"))
			(GM.f_draw_text((GM.view_xview[0] + 5.0), (GM.view_yview[0] + 45.0), "your weapon!"))
	if ((absf(v_weapon2 - 0.0) < 0.00001)):
		if ((v_weapon1number > 1.0)):
			(GM.f_draw_set_halign(2.0))
			(GM.f_draw_set_color(16777215.0))
			(GM.f_draw_text((GM.view_xview[0] + 635.0), (GM.view_yview[0] + 5.0), "Hold control and"))
			(GM.f_draw_text((GM.view_xview[0] + 635.0), (GM.view_yview[0] + 25.0), "RIGHT Click to wield"))
			(GM.f_draw_text((GM.view_xview[0] + 635.0), (GM.view_yview[0] + 45.0), "your weapon!"))
			(GM.f_draw_set_halign(0.0))
func ev_keypress_87():
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + 10.0), 1.0))))) >= 0.5:
		(GM.f_motion_add(self, 90.0, 14.0))
	(GM.f_sound_play(10.0))
func ev_keypress_38():
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + 15.0), 1.0))))) >= 0.5:
		(GM.f_motion_add(self, 90.0, 14.0))
func ev_keyrelease_87():
	if ((vspeed < 0.0)):
		vspeed = (vspeed / 1.5)
func ev_keyrelease_38():
	if ((vspeed < 0.0)):
		vspeed = (vspeed / 1.5)
