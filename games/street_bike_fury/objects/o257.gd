extends "res://games/street_bike_fury/scripts.gd"
var v_playername = ""
var v_step = 0.0
func ev_create():
	GM.G["total"] = 0.0
	GM.G["distance"] = (GM.f_round((GM.G["distance"] * 1000.0)))
	alarm[int(0.0)] = 40.0
	v_step = 0.0
	(GM.f_sound_stop_all())
	(GM.f_instance_deactivate_all(self, 1.0))
	GM.room_speed = 40.0
	(GM.f_sound_play(82.0))
	GM.G["stunts"] = (GM.G["stunts"] * 2.0)
func ev_alarm_1():
	(GM.f_sound_stop(82.0))
	if ((absf((await GM.f_show_question("Do you want to submit your score Online?")) - 1.0) < 0.00001)):
		v_playername = (await GM.f_get_string("Enter your name (10 char limit):", ""))
		v_playername = (GM.f_string_copy(v_playername, 0.0, 10.0))
		(self.script_submit_score(("" + (GM.f_string(GM.G["total"]))), ("" + (GM.f_string(v_playername))), "10"))
	if ((GM.G["total"] > GM.G["highscore"])):
		(GM.f_registry_write_real("omlet_score1", GM.G["total"]))
		GM.G["highscore"] = GM.G["total"]
	(GM.f_sound_stop(82.0))
	(GM.f_game_restart())
func ev_alarm_0():
	if ((v_step < 9.0)):
		v_step = v_step + 1.0
		alarm[int(0.0)] = 50.0
		if ((v_step < 8.0)):
			(GM.f_sound_play(6.0))
		if ((absf(v_step - 8.0) < 0.00001)):
			(GM.f_sound_loop(81.0))
		if ((absf(v_step - 9.0) < 0.00001)):
			alarm[int(1.0)] = 320.0
			GM.G["total"] = ((((((GM.G["baddies"] + GM.G["scenery"]) + GM.G["people"]) + GM.G["distance"]) + GM.G["shortcuts"]) + GM.G["stunts"]) + GM.G["crashes"])
			(GM.f_sound_stop(81.0))
			(GM.f_sound_play(29.0))
func ev_draw():
	(GM.f_draw_sprite(199.0, 0.0, 400.0, (GM.view_yview[0] + 110.0)))
	(GM.f_draw_set_font(4.0))
	(GM.f_draw_set_halign(1.0))
	(GM.f_draw_set_color(16777215.0))
	if ((v_step >= 1.0)):
		(GM.f_draw_text(400.0, 240.0, ("Baddies Busted: " + (GM.f_string(GM.G["baddies"])))))
	if ((v_step >= 2.0)):
		(GM.f_draw_text(400.0, 270.0, ("Scenery Smashed: " + (GM.f_string(GM.G["scenery"])))))
	if ((v_step >= 3.0)):
		(GM.f_draw_text(400.0, 300.0, ("Pedestrians Crushed: " + (GM.f_string(GM.G["people"])))))
	if ((v_step >= 4.0)):
		(GM.f_draw_text(400.0, 330.0, ("Distance Bonus: " + (GM.f_string(GM.G["distance"])))))
	if ((v_step >= 5.0)):
		(GM.f_draw_text(400.0, 360.0, ("Shortcut Bonus: " + (GM.f_string(GM.G["shortcuts"])))))
	if ((v_step >= 6.0)):
		(GM.f_draw_text(400.0, 390.0, ("Stunt Bonus: " + (GM.f_string(GM.G["stunts"])))))
	(GM.f_draw_set_color(255.0))
	if ((v_step >= 7.0)):
		(GM.f_draw_text(400.0, 420.0, ("Penalties: " + (GM.f_string(GM.G["crashes"])))))
	(GM.f_draw_set_color(65535.0))
	if ((absf(v_step - 8.0) < 0.00001)):
		(GM.f_draw_text(400.0, 460.0, ("FINAL SCORE: " + (GM.f_string((GM.f_round((GM.f_random(10000.0)))))))))
	if ((absf(v_step - 9.0) < 0.00001)):
		(GM.f_draw_text(400.0, 460.0, ("FINAL SCORE: " + (GM.f_string(GM.G["total"])))))
	(GM.f_draw_set_halign(0.0))
