extends "res://games/svsj/scripts.gd"
var v_rool = 0.0
func ev_create():
	v_rool = (GM.f_round((GM.f_random(3.0))))
	speed = 5.0
	if ((absf(v_rool - 0.0) < 0.00001)):
		sprite_index = 4.0
	if ((absf(v_rool - 1.0) < 0.00001)):
		sprite_index = 7.0
	if ((absf(v_rool - 2.0) < 0.00001)):
		(GM.f_instance_create(x, y, 17.0))
		(GM.f_instance_destroy(self))
	if ((absf(v_rool - 3.0) < 0.00001)):
		sprite_index = 11.0
	direction = 270.0
func ev_col_15():
	if ((((GM.f_random(2.0)) < 1.0))):
		if ((absf(sprite_index - 10.0) < 0.00001)):
			GM.G["p2score"] = GM.G["p2score"] - 1.0
			(GM.f_sound_play(9.0))
			(GM.f_sound_play(12.0))
		else:
			v_rool = (GM.f_round((GM.f_random(3.0))))
			if ((absf(v_rool - 0.0) < 0.00001)):
				(GM.f_sound_play(0.0))
			if ((absf(v_rool - 1.0) < 0.00001)):
				(GM.f_sound_play(3.0))
			if ((absf(v_rool - 2.0) < 0.00001)):
				(GM.f_sound_play(1.0))
			if ((absf(v_rool - 3.0) < 0.00001)):
				(GM.f_sound_play(2.0))
			(GM.f_sound_play(9.0))
			GM.G["p2score"] = GM.G["p2score"] + 1.0
		GM.vb(self.other, "alarm")[int(1.0)] = 2.0
		GM.vb(self.other, "alarm")[int(3.0)] = 10.0
		GM.vset(self.other, "v_talking", 1.0)
		(GM.f_instance_destroy(self))
func ev_col_4():
	(GM.f_sound_play(10.0))
	(GM.f_instance_destroy(self))
func ev_col_1():
	if ((((GM.f_random(2.0)) < 1.0))):
		if ((absf(sprite_index - 10.0) < 0.00001)):
			GM.G["p2score"] = GM.G["p2score"] - 1.0
			(GM.f_sound_play(9.0))
			(GM.f_sound_play(12.0))
		else:
			v_rool = (GM.f_round((GM.f_random(3.0))))
			if ((absf(v_rool - 0.0) < 0.00001)):
				(GM.f_sound_play(0.0))
			if ((absf(v_rool - 1.0) < 0.00001)):
				(GM.f_sound_play(3.0))
			if ((absf(v_rool - 2.0) < 0.00001)):
				(GM.f_sound_play(1.0))
			if ((absf(v_rool - 3.0) < 0.00001)):
				(GM.f_sound_play(2.0))
			(GM.f_sound_play(9.0))
			GM.G["p2score"] = GM.G["p2score"] + 1.0
		GM.vb(self.other, "alarm")[int(1.0)] = 2.0
		GM.vb(self.other, "alarm")[int(3.0)] = 10.0
		GM.vset(self.other, "v_talking", 1.0)
		(GM.f_instance_destroy(self))
func ev_col_0():
	if ((((GM.f_random(2.0)) < 1.0))):
		if ((absf(sprite_index - 10.0) < 0.00001)):
			GM.G["p1score"] = GM.G["p1score"] - 1.0
			(GM.f_sound_play(9.0))
			(GM.f_sound_play(13.0))
		else:
			v_rool = (GM.f_round((GM.f_random(3.0))))
			if ((absf(v_rool - 0.0) < 0.00001)):
				(GM.f_sound_play(6.0))
			if ((absf(v_rool - 1.0) < 0.00001)):
				(GM.f_sound_play(7.0))
			if ((absf(v_rool - 2.0) < 0.00001)):
				(GM.f_sound_play(4.0))
			if ((absf(v_rool - 3.0) < 0.00001)):
				(GM.f_sound_play(5.0))
			(GM.f_sound_play(9.0))
			GM.G["p1score"] = GM.G["p1score"] + 1.0
		GM.vb(self.other, "alarm")[int(1.0)] = 2.0
		GM.vb(self.other, "alarm")[int(3.0)] = 10.0
		GM.vset(self.other, "v_talking", 1.0)
		(GM.f_instance_destroy(self))
