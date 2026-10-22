extends "res://games/bounty_hunter_sx/scripts.gd"
var v_copper1 = 0.0
var v_diamond1 = 0.0
var v_gold1 = 0.0
var v_lead1 = 0.0
var v_silver1 = 0.0
var v_xx = 0.0
func ev_create():
	v_diamond1 = 0.0
	v_gold1 = 0.0
	v_silver1 = 0.0
	v_copper1 = 0.0
	v_lead1 = 0.0
	if ((absf(GM.G["goodluck"] - 0.0) < 0.00001)):
		v_xx = (GM.f_round((GM.f_random(5.0))))
		if ((absf(v_xx - 1.0) < 0.00001)):
			v_diamond1 = 1.0
			sprite_index = 1063.0
		else:
			if ((absf(v_xx - 2.0) < 0.00001)):
				v_gold1 = 1.0
				sprite_index = 1062.0
			else:
				if ((absf(v_xx - 3.0) < 0.00001)):
					v_silver1 = 1.0
					sprite_index = 1061.0
				else:
					if ((absf(v_xx - 4.0) < 0.00001)):
						v_copper1 = 1.0
						sprite_index = 1060.0
					else:
						if ((absf(v_xx - 5.0) < 0.00001)):
							v_lead1 = 1.0
							sprite_index = 1059.0
	else:
		v_xx = (GM.f_round((GM.f_random(7.0))))
		if ((absf(v_xx - 1.0) < 0.00001)):
			v_diamond1 = 1.0
			sprite_index = 1063.0
		else:
			if ((absf(v_xx - 2.0) < 0.00001)):
				v_diamond1 = 1.0
				sprite_index = 1063.0
			else:
				if ((absf(v_xx - 3.0) < 0.00001)):
					v_gold1 = 1.0
					sprite_index = 1062.0
				else:
					if ((absf(v_xx - 4.0) < 0.00001)):
						v_gold1 = 1.0
						sprite_index = 1062.0
					else:
						if ((absf(v_xx - 5.0) < 0.00001)):
							v_silver1 = 1.0
							sprite_index = 1061.0
						else:
							if ((absf(v_xx - 6.0) < 0.00001)):
								v_copper1 = 1.0
								sprite_index = 1060.0
							else:
								if ((absf(v_xx - 7.0) < 0.00001)):
									v_lead1 = 1.0
									sprite_index = 1059.0
func ev_col_1139():
	(GM.f_sound_play(302.0))
	(GM.f_instance_destroy(self))
func ev_col_1131():
	(GM.f_sound_play(302.0))
	(GM.f_instance_destroy(self))
func ev_col_1130():
	(GM.f_sound_play(302.0))
	(GM.f_instance_destroy(self))
func ev_col_1091():
	(GM.f_sound_play(302.0))
	(GM.f_instance_destroy(self))
func ev_col_1090():
	(GM.f_sound_play(302.0))
	(GM.f_instance_destroy(self))
func ev_col_1085():
	(GM.f_sound_play(302.0))
	(GM.f_instance_destroy(self))
func ev_col_1084():
	(GM.f_sound_play(302.0))
	(GM.f_instance_destroy(self))
func ev_col_1080():
	(GM.f_sound_play(302.0))
	(GM.f_instance_destroy(self))
func ev_col_1079():
	(GM.f_sound_play(302.0))
	(GM.f_instance_destroy(self))
func ev_col_482():
	if ((absf(sprite_index - 1063.0) < 0.00001)):
		GM.G["diamonds"] = GM.G["diamonds"] + 1.0
	if ((absf(sprite_index - 1062.0) < 0.00001)):
		GM.G["golds"] = GM.G["golds"] + 1.0
	if ((absf(sprite_index - 1061.0) < 0.00001)):
		GM.G["silvers"] = GM.G["silvers"] + 1.0
	if ((absf(sprite_index - 1060.0) < 0.00001)):
		GM.G["coppers"] = GM.G["coppers"] + 1.0
	if ((absf(sprite_index - 1059.0) < 0.00001)):
		GM.G["leads"] = GM.G["leads"] + 1.0
	(GM.f_sound_play(302.0))
	(GM.f_instance_destroy(self))
