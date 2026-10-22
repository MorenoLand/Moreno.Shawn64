extends "res://games/jetzrampage/scripts.gd"
func ev_draw():
	(GM.f_action_draw_font("System", 0.0, 0.0, 0.0))
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_text(388.0, 183.0, ("PTS: " + (GM.f_string(GM.G["poop"])))))
func ev_keypress_57():
	if (((GM.G["poop"] > 99.0))):
		await GM.f_show_message("HandBeam Skin - crimax")
		(GM.f_sound_play(14.0))
		GM.G["poop"] = GM.G["poop"] + (-100.0)
	else:
		(GM.f_sound_play(72.0))
func ev_keypress_56():
	if (((GM.G["poop"] > 9999.0))):
		await GM.f_show_message("1000 pts -  haha its s64000 but you dont need it ;)")
		(GM.f_sound_play(14.0))
		GM.G["poop"] = GM.G["poop"] + (-10000.0)
	else:
		(GM.f_sound_play(72.0))
func ev_keypress_55():
	if (((GM.G["poop"] > 4999.0))):
		await GM.f_show_message("100 bombs - grnad")
		(GM.f_sound_play(14.0))
		GM.G["poop"] = GM.G["poop"] + (-5000.0)
	else:
		(GM.f_sound_play(72.0))
func ev_keypress_54():
	if (((GM.G["poop"] > 999.0))):
		await GM.f_show_message("Full Damage - grany")
		(GM.f_sound_play(14.0))
		GM.G["poop"] = GM.G["poop"] + (-1000.0)
	else:
		(GM.f_sound_play(72.0))
func ev_keypress_53():
	if (((GM.G["poop"] > 599.0))):
		await GM.f_show_message("Electric Gun - elctrc")
		(GM.f_sound_play(14.0))
		GM.G["poop"] = GM.G["poop"] + (-600.0)
	else:
		(GM.f_sound_play(72.0))
func ev_keypress_52():
	if (((GM.G["poop"] > 399.0))):
		await GM.f_show_message("Flame Thrower - FLMS")
		(GM.f_sound_play(14.0))
		GM.G["poop"] = GM.G["poop"] + (-400.0)
	else:
		(GM.f_sound_play(72.0))
func ev_keypress_51():
	if (((GM.G["poop"] > 199.0))):
		await GM.f_show_message("SuperSoaker - wtrgn")
		(GM.f_sound_play(14.0))
		GM.G["poop"] = GM.G["poop"] + (-200.0)
	else:
		(GM.f_sound_play(72.0))
func ev_keypress_50():
	if (((absf(GM.G["lick2"] - 0.0) < 0.00001))):
		if (((GM.G["poop"] > 399.0))):
			await GM.f_show_message("Level 3 unlocked")
			(GM.f_sound_play(14.0))
			GM.G["poop"] = GM.G["poop"] + (-400.0)
			GM.G["lick2"] = 1.0
		else:
			(GM.f_sound_play(72.0))
func ev_keypress_49():
	if (((absf(GM.G["lick1"] - 0.0) < 0.00001))):
		if (((GM.G["poop"] > 199.0))):
			await GM.f_show_message("Level 2 unlocked")
			(GM.f_sound_play(14.0))
			GM.G["poop"] = GM.G["poop"] + (-200.0)
			GM.G["lick1"] = 1.0
		else:
			(GM.f_sound_play(72.0))
