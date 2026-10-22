extends "res://games/thrust/scripts.gd"
var v_exploded = 0.0
var v_exploding = 0.0
var v_havekey = 0.0
var v_image_single = 0.0
var v_movement = 0.0
var v_myAcceleration = 0.0
var v_myArmor = 0.0
var v_myFriction = 0.0
var v_myTopSpeed = 0.0
var v_my_direction = 0.0
var v_pearls = 0.0
var v_pearlshave = 0.0
var v_rotationspeed = 0.0
var v_wee = 0.0
var v_what = 0.0
func ev_create():
	v_image_single = 23.0
	v_my_direction = 90.0
	v_myAcceleration = 0.5
	v_myTopSpeed = 15.0
	v_myFriction = 0.02
	v_myArmor = 10.0
	v_exploding = 0.0
	visible = 1.0
	v_movement = 1.0
	GM.G["accel"] = 0.5
	GM.G["topspeed"] = 15.0
	v_pearls = (GM.f_instance_number(3.0))
	v_pearlshave = 0.0
	v_havekey = 0.0
	(GM.f_screen_gamma(0.0, 0.0, 0.0))
	v_rotationspeed = 4.0
	v_exploded = 0.0
	friction = 0.1
func ev_step():
	if (((GM.f_keyboard_check(38.0)))) >= 0.5:
		if not ((((GM.f_sound_isplaying(2.0)))) >= 0.5):
			(GM.f_sound_loop(2.0))
	else:
		(GM.f_sound_stop(2.0))
	GM.G["time"] = GM.G["time"] + 1.0
	if (((absf((GM.f_instance_number(21.0)) - 1.0) < 0.00001))):
		if (((absf((GM.f_instance_number(22.0)) - 1.0) < 0.00001))):
			if (((((x + sprite_width) > GM.vb(21.0, "x")) and (x < GM.vb(22.0, "x"))))):
				(GM.f_motion_add(self, 90.0, 0.5))
func ev_col_101():
	self.ev_user(0.0)
func ev_col_100():
	self.ev_user(0.0)
func ev_key_39():
	v_my_direction = fmod(((v_my_direction - v_rotationspeed)), 360.0)
	if (v_my_direction < 0.0):
		v_my_direction = v_my_direction + 360.0
	(self.script_SetShip1Sprite())
func ev_key_38():
	if (not (GM.truth(((GM.f_instance_place(self, x, y, 77.0)))))):
		(GM.f_motion_add(self, v_my_direction, GM.G["accel"]))
		if ((absf(visible - 1.0) < 0.00001)):
			for _r28 in range(int((3.0))):
				v_what = (GM.f_instance_create((x + 27.5), (y + 27.5), 2.0))
				for _w29 in GM.with_list((v_what), self):
					if _w29._dead:
						continue
					_w29.other = self
					(GM.f_motion_add(_w29, (GM.vget(0.0, "v_my_direction") - 180.0), (1.0 + (GM.f_random(5.0)))))
				GM.vsetb(v_what, "gravity", 0.1)
				GM.vsetb(v_what, "gravity_direction", 270.0)
				GM.vsetb(v_what, "vspeed", GM.vb(v_what, "vspeed") + vspeed)
				GM.vsetb(v_what, "hspeed", GM.vb(v_what, "hspeed") + hspeed)
	else:
		(GM.f_motion_add(self, v_my_direction, 0.3))
		if ((absf(visible - 1.0) < 0.00001)):
			for _r30 in range(int((3.0))):
				v_what = (GM.f_instance_create((x + 27.5), (y + 27.5), 2.0))
				for _w31 in GM.with_list((v_what), self):
					if _w31._dead:
						continue
					_w31.other = self
					(GM.f_motion_add(_w31, (GM.vget(0.0, "v_my_direction") - 180.0), (1.0 + (GM.f_random(5.0)))))
				GM.vsetb(v_what, "gravity", 0.1)
				GM.vsetb(v_what, "gravity_direction", 270.0)
				GM.vsetb(v_what, "vspeed", GM.vb(v_what, "vspeed") + vspeed)
				GM.vsetb(v_what, "hspeed", GM.vb(v_what, "hspeed") + hspeed)
func ev_key_37():
	v_my_direction = fmod(((v_my_direction + v_rotationspeed)), 360.0)
	(self.script_SetShip1Sprite())
func ev_other_10():
	(GM.f_screen_gamma(0.0, 0.0, 0.0))
	GM.background_hspeed[int(0.0)] = 0.0
	GM.background_hspeed[int(1.0)] = 0.0
	GM.background_hspeed[int(2.0)] = 0.0
	GM.background_hspeed[int(3.0)] = 0.0
	GM.background_hspeed[int(4.0)] = 0.0
	GM.background_hspeed[int(5.0)] = 0.0
	GM.background_hspeed[int(6.0)] = 0.0
	GM.background_hspeed[int(7.0)] = 0.0
	GM.background_vspeed[int(0.0)] = 0.0
	GM.background_vspeed[int(1.0)] = 0.0
	GM.background_vspeed[int(2.0)] = 0.0
	GM.background_vspeed[int(3.0)] = 0.0
	GM.background_vspeed[int(4.0)] = 0.0
	GM.background_vspeed[int(5.0)] = 0.0
	GM.background_vspeed[int(6.0)] = 0.0
	GM.background_vspeed[int(7.0)] = 0.0
	for _r32 in range(int((200.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 10.0)))), (y + (GM.f_random((sprite_height - 10.0)))), 8.0))
	(GM.f_sound_stop(2.0))
	(GM.f_sound_play(1.0))
	(GM.f_instance_create(0.0, 0.0, 5.0))
	(GM.f_instance_destroy(self))
func ev_other_4():
	v_wee = 0.0
func ev_other_0():
	(self.script_outsidewrap(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	(GM.f_draw_sprite(0.0, v_image_single, x, y))
	(GM.f_action_draw_font("Impact", 18.0, 0.0, 0.0))
	(GM.f_draw_set_color(255.0))
	GM.font_align = 1.0
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 25.0), ((("Pearls: " + (GM.f_string(v_pearlshave))) + "/") + (GM.f_string(v_pearls)))))
	(GM.f_action_draw_font("Impact", 26.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 50.0), ("" + (GM.f_string(GM.room_caption)))))
	(GM.f_action_draw_font("Arial", 10.0, 1.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	GM.font_align = 0.0
	(GM.f_draw_text((GM.view_xview[0] + 5.0), (GM.view_yview[0] + 5.0), ("Time: " + (GM.f_string((GM.G["time"] / 30.0))))))
func ev_keypress_112():
	if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
		if ((((GM.f_keyboard_check(17.0))))) >= 0.5:
			(GM.f_room_goto_next())
func ev_keypress_27():
	(GM.f_sound_play(7.0))
	(GM.f_room_goto(11.0))
