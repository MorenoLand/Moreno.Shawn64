extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_available = ""
var v_wee = 0.0
var v_wowe = 0.0
func ev_alarm_0():
	(GM.f_instance_create(0.0, 0.0, 569.0))
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 48.0, 0.0, 0.0))
	(GM.f_draw_set_color(8388608.0))
	GM.font_align = 1.0
	v_wowe = 495.0
	(GM.f_draw_text((GM.room_width / 2.0), v_wowe, "Enter - Back"))
	(GM.f_action_draw_font("Arial", 11.0, 1.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text(400.0, 130.0, ("Weapon Shop - $" + (GM.f_string(GM.G["j4var11"])))))
	GM.font_align = 0.0
	if ((absf(GM.G["j4var1"] - 1.0) < 0.00001)):
		v_available = "UNLOCKED"
	else:
		v_available = "Press A to Buy!"
	(GM.f_draw_sprite(593.0, 0.0, 48.0, 170.0))
	(GM.f_draw_sprite(466.0, 2.0, 48.0, 170.0))
	(GM.f_draw_text(95.0, 185.0, ("Chainsaw - $3,000 - " + (GM.f_string(v_available)))))
	if ((absf(GM.G["j4var2"] - 1.0) < 0.00001)):
		v_available = "UNLOCKED"
	else:
		v_available = "Press B to Buy!"
	(GM.f_draw_sprite(593.0, 0.0, 48.0, 220.0))
	(GM.f_draw_sprite(466.0, 3.0, 48.0, 220.0))
	(GM.f_draw_text(95.0, 235.0, ("Bazooka - $5,000 - " + (GM.f_string(v_available)))))
	if ((absf(GM.G["j4var3"] - 1.0) < 0.00001)):
		v_available = "UNLOCKED"
	else:
		v_available = "Press C to Buy!"
	(GM.f_draw_sprite(593.0, 0.0, 48.0, 270.0))
	(GM.f_draw_sprite(466.0, 4.0, 48.0, 270.0))
	(GM.f_draw_text(95.0, 285.0, ("Flame Thrower - $7,000 - " + (GM.f_string(v_available)))))
	if ((absf(GM.G["j4var4"] - 1.0) < 0.00001)):
		v_available = "UNLOCKED"
	else:
		v_available = "Press D to Buy!"
	(GM.f_draw_sprite(593.0, 0.0, 48.0, 320.0))
	(GM.f_draw_sprite(466.0, 5.0, 48.0, 320.0))
	(GM.f_draw_text(95.0, 335.0, ("Electricity Gun - $9,000 - " + (GM.f_string(v_available)))))
	if ((absf(GM.G["j4var23"] - 1.0) < 0.00001)):
		v_available = "UNLOCKED"
	else:
		v_available = "Press E to Buy!"
	(GM.f_draw_sprite(593.0, 0.0, 48.0, 370.0))
	(GM.f_draw_sprite(466.0, 18.0, 48.0, 370.0))
	(GM.f_draw_text(95.0, 385.0, ("Custom Music - $3,000 - " + (GM.f_string(v_available)))))
	v_wee = 340.0
	if ((absf(GM.G["j4var18"] - 1.0) < 0.00001)):
		v_available = "UNLOCKED"
	else:
		v_available = "Press F to Buy!"
	(GM.f_draw_sprite(593.0, 0.0, GM.add(48.0, v_wee), 170.0))
	(GM.f_draw_sprite(466.0, 13.0, GM.add(48.0, v_wee), 170.0))
	(GM.f_draw_text(GM.add(92.0, v_wee), 185.0, ("Laser - $9,000 - " + (GM.f_string(v_available)))))
	if ((absf(GM.G["j4var17"] - 1.0) < 0.00001)):
		v_available = "UNLOCKED"
	else:
		v_available = "Press G to Buy!"
	(GM.f_draw_sprite(593.0, 0.0, GM.add(48.0, v_wee), 220.0))
	(GM.f_draw_sprite(466.0, 12.0, GM.add(48.0, v_wee), 220.0))
	(GM.f_draw_text(GM.add(92.0, v_wee), 235.0, ("Shotgun - $25,000 - " + (GM.f_string(v_available)))))
	if ((absf(GM.G["j4var19"] - 1.0) < 0.00001)):
		v_available = "UNLOCKED"
	else:
		v_available = "Press H to Buy!"
	(GM.f_draw_sprite(593.0, 0.0, GM.add(48.0, v_wee), 270.0))
	(GM.f_draw_sprite(466.0, 14.0, GM.add(48.0, v_wee), 270.0))
	(GM.f_draw_text(GM.add(92.0, v_wee), 285.0, ("Bazooka 3 - $25,000 - " + (GM.f_string(v_available)))))
func ev_keypress_72():
	if (((absf(GM.G["j4var19"] - 0.0) < 0.00001) and (GM.G["j4var11"] >= 25000.0))):
		(GM.f_sound_play(224.0))
		GM.G["j4var11"] = GM.G["j4var11"] - 25000.0
		GM.G["j4var19"] = 1.0
func ev_keypress_71():
	if (((absf(GM.G["j4var17"] - 0.0) < 0.00001) and (GM.G["j4var11"] >= 25000.0))):
		(GM.f_sound_play(224.0))
		GM.G["j4var11"] = GM.G["j4var11"] - 25000.0
		GM.G["j4var17"] = 1.0
func ev_keypress_70():
	if (((absf(GM.G["j4var18"] - 0.0) < 0.00001) and (GM.G["j4var11"] >= 9000.0))):
		(GM.f_sound_play(224.0))
		GM.G["j4var11"] = GM.G["j4var11"] - 9000.0
		GM.G["j4var18"] = 1.0
func ev_keypress_69():
	if (((absf(GM.G["j4var23"] - 0.0) < 0.00001) and (GM.G["j4var11"] >= 3000.0))):
		(GM.f_sound_play(224.0))
		GM.G["j4var11"] = GM.G["j4var11"] - 3000.0
		GM.G["j4var23"] = 1.0
func ev_keypress_68():
	if (((absf(GM.G["j4var4"] - 0.0) < 0.00001) and (GM.G["j4var11"] >= 9000.0))):
		(GM.f_sound_play(224.0))
		GM.G["j4var11"] = GM.G["j4var11"] - 9000.0
		GM.G["j4var4"] = 1.0
func ev_keypress_67():
	if (((absf(GM.G["j4var3"] - 0.0) < 0.00001) and (GM.G["j4var11"] >= 7000.0))):
		(GM.f_sound_play(224.0))
		GM.G["j4var11"] = GM.G["j4var11"] - 7000.0
		GM.G["j4var3"] = 1.0
func ev_keypress_66():
	if (((absf(GM.G["j4var2"] - 0.0) < 0.00001) and (GM.G["j4var11"] >= 5000.0))):
		(GM.f_sound_play(224.0))
		GM.G["j4var11"] = GM.G["j4var11"] - 5000.0
		GM.G["j4var2"] = 1.0
func ev_keypress_65():
	if (((absf(GM.G["j4var1"] - 0.0) < 0.00001) and (GM.G["j4var11"] >= 3000.0))):
		(GM.f_sound_play(224.0))
		GM.G["j4var11"] = GM.G["j4var11"] - 3000.0
		GM.G["j4var1"] = 1.0
func ev_keypress_13():
	alarm[int(0.0)] = 1.0
