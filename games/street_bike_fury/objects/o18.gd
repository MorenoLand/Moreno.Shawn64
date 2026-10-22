extends "res://games/street_bike_fury/scripts.gd"
var v_clickedon = 0.0
var v_hasweapon2 = 0.0
var v_hasweapon3 = 0.0
var v_hasweapon4 = 0.0
var v_powerups = 0.0
var v_rotate = 0.0
var v_setalpha = 0.0
var v_songartist = ""
var v_songname = ""
var v_songon = 0.0
var v_temp = 0.0
var v_tracks = 0.0
func ev_create():
	GM.G["bombs"] = 5.0
	alarm[int(0.0)] = (90.0 + (GM.f_random(90.0)))
	alarm[int(1.0)] = (40.0 + (GM.f_random(40.0)))
	v_tracks = 0.0
	v_songartist = ""
	v_songname = ""
	v_songon = 0.0
	self.ev_user(0.0)
	v_setalpha = 0.0
	GM.health = 100.0
	v_powerups = 0.0
	(GM.f_sound_play(72.0))
	(GM.f_sound_stop(73.0))
	v_rotate = 0.0
	v_hasweapon2 = 1.0
	v_hasweapon3 = 1.0
	v_hasweapon4 = 1.0
	v_clickedon = 0.0
func ev_alarm_4():
	v_clickedon = 0.0
func ev_alarm_3():
	if ((absf(v_tracks - 1.0) < 0.00001)):
		v_setalpha = v_setalpha + 0.02
		if ((v_setalpha > 1.0)):
			alarm[int(2.0)] = 100.0
		else:
			alarm[int(3.0)] = 1.0
func ev_alarm_2():
	if ((absf(v_tracks - 1.0) < 0.00001)):
		v_setalpha = v_setalpha - 0.02
		if ((v_setalpha < 0.0)):
			v_tracks = 0.0
		alarm[int(2.0)] = 1.0
func ev_alarm_1():
	alarm[int(1.0)] = (40.0 + (GM.f_random(40.0)))
	(GM.f_instance_create(0.0, 0.0, 61.0))
	v_temp = (GM.f_floor((GM.f_random(2.0))))
	if (GM.eq(v_temp, 0.0)):
		(GM.f_instance_create(0.0, 0.0, 107.0))
	(self.script_wavesmake())
	GM.G["distance"] = (((((GM.vb(0.0, "x") - 450.0)) * 0.5592105)) / 63360.0)
func ev_alarm_0():
	(GM.f_instance_create(x, y, 60.0))
	alarm[int(0.0)] = (90.0 + (GM.f_random(90.0)))
func ev_step():
	if (((not (((GM.f_sound_isplaying(97.0))) >= 0.5) and not (((GM.f_sound_isplaying(25.0))) >= 0.5)) and not (((GM.f_sound_isplaying(33.0))) >= 0.5))):
		self.ev_user(0.0)
	v_rotate = v_rotate + 1.0
func ev_other_11():
	v_setalpha = 0.0
	if ((absf(GM.G["music"] - 1.0) < 0.00001)):
		if ((absf(v_songon - 0.0) < 0.00001)):
			v_songartist = "Staind"
			v_songname = "TAKE IT"
			(GM.f_sound_play(25.0))
		else:
			if ((absf(v_songon - 1.0) < 0.00001)):
				v_songartist = "Stand"
				v_songname = "For You"
				(GM.f_sound_play(97.0))
			else:
				if ((absf(v_songon - 2.0) < 0.00001)):
					v_songartist = "Stand"
					v_songname = "Me"
					(GM.f_sound_play(33.0))
	v_songon = v_songon + 1.0
	if ((absf(v_songon - 3.0) < 0.00001)):
		v_songon = 0.0
	v_tracks = 1.0
func ev_other_10():
	v_setalpha = 0.0
	v_tracks = 1.0
	self.ev_user(1.0)
	alarm[int(3.0)] = 1.0
func ev_draw():
	(GM.f_draw_healthbar((GM.view_xview[0] + 17.0), (GM.view_yview[0] + 17.0), (GM.view_xview[0] + 154.0), (GM.view_yview[0] + 41.0), GM.health, 0.0, 255.0, 16711680.0, 0.0, 0.0, 0.0))
	(GM.f_draw_healthbar((GM.view_xview[0] + 166.0), (GM.view_yview[0] + 17.0), (GM.view_xview[0] + 303.0), (GM.view_yview[0] + 41.0), GM.G["flipmeter"], 0.0, 16777215.0, 32768.0, 0.0, 0.0, 0.0))
	(GM.f_texture_set_interpolation(1.0))
	(GM.f_draw_sprite(129.0, 0.0, (GM.view_xview[0] + 628.0), (GM.view_yview[0] + 439.0)))
	(GM.f_draw_sprite(130.0, 0.0, (GM.view_xview[0] + 15.0), (GM.view_yview[0] + 15.0)))
	(GM.f_draw_sprite_ext(62.0, 0.0, (GM.view_xview[0] + 723.0), (GM.view_yview[0] + 534.0), 1.0, 1.0, (50.0 - (((GM.vb(0.0, "hspeed") / GM.G["gspeed"])) * 6.5)), 16777215.0, 1.0))
	(GM.f_texture_set_interpolation(0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_set_font(4.0))
	(GM.f_draw_text((GM.view_xview[0] + 16.0), (GM.view_yview[0] + 83.0), ("Miles: " + (GM.f_string(GM.G["distance"])))))
	(GM.f_draw_text((GM.view_xview[0] + 16.0), (GM.view_yview[0] + 105.0), ("Score: " + (GM.f_string(GM.score)))))
	(GM.f_draw_text((GM.view_xview[0] + 16.0), (GM.view_yview[0] + 125.0), ("High Score: " + (GM.f_string(GM.G["highscore"])))))
	(GM.f_draw_text((GM.view_xview[0] + 16.0), (GM.view_yview[0] + 147.0), ("Rockets: " + (GM.f_string(GM.G["bombs"])))))
	if ((absf(v_tracks - 1.0) < 0.00001)):
		(GM.f_draw_sprite_ext(71.0, 0.0, (GM.view_xview[0] + 15.0), (GM.view_yview[0] + 506.0), 1.0, 1.0, 0.0, 16777215.0, v_setalpha))
		(GM.f_draw_set_color(255.0))
		(GM.f_draw_set_halign(1.0))
		(GM.f_draw_set_alpha(v_setalpha))
		(GM.f_draw_set_font(0.0))
		(GM.f_draw_text((GM.view_xview[0] + 97.0), (GM.view_yview[0] + 531.0), "Now Playing:"))
		(GM.f_draw_text((GM.view_xview[0] + 97.0), (GM.view_yview[0] + 551.0), (("(" + (GM.f_string(v_songartist))) + ")")))
		(GM.f_draw_text((GM.view_xview[0] + 97.0), (GM.view_yview[0] + 571.0), ("" + (GM.f_string(v_songname)))))
		(GM.f_draw_set_halign(0.0))
		(GM.f_draw_set_alpha(1.0))
	if ((v_powerups >= 1.0)):
		(GM.f_draw_sprite(128.0, 0.0, (GM.view_xview[0] + 15.0), (GM.view_yview[0] + 46.0)))
	if ((v_powerups >= 2.0)):
		(GM.f_draw_sprite(128.0, 0.0, (GM.view_xview[0] + 71.0), (GM.view_yview[0] + 46.0)))
	if ((v_powerups >= 3.0)):
		(GM.f_draw_sprite(128.0, 0.0, (GM.view_xview[0] + 123.0), (GM.view_yview[0] + 46.0)))
	(GM.f_draw_sprite_ext(31.0, 0.0, GM.mouse_x, GM.mouse_y, 1.0, 1.0, v_rotate, 16777215.0, 1.0))
