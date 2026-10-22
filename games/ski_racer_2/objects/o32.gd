extends "res://games/ski_racer_2/scripts.gd"
func ev_step():
	if (((y < (GM.view_yview[0] - sprite_height)))):
		(GM.f_instance_destroy(self))
func ev_col_66():
	if ((absf(sprite_index - 29.0) < 0.00001)):
		GM.G["score2"] = GM.G["score2"] + 100.0
	if ((absf(sprite_index - 30.0) < 0.00001)):
		GM.G["score2"] = GM.G["score2"] + 50.0
	if ((absf(sprite_index - 31.0) < 0.00001)):
		GM.G["score2"] = GM.G["score2"] + 25.0
	(GM.f_sound_play(12.0))
	(GM.f_instance_destroy(self))
func ev_col_51():
	(GM.f_instance_destroy(self))
func ev_col_47():
	(GM.f_instance_destroy(self))
func ev_col_32():
	(GM.f_instance_destroy(self))
func ev_col_31():
	(GM.f_instance_destroy(self))
func ev_col_30():
	(GM.f_instance_destroy(self))
func ev_col_27():
	(GM.f_instance_destroy(self))
func ev_col_22():
	(GM.f_instance_destroy(self))
func ev_col_19():
	(GM.f_instance_destroy(self))
func ev_col_18():
	(GM.f_instance_destroy(self))
func ev_col_6():
	(GM.f_instance_destroy(self))
func ev_col_0():
	if ((absf(sprite_index - 29.0) < 0.00001)):
		GM.score = GM.score + 100.0
	if ((absf(sprite_index - 30.0) < 0.00001)):
		GM.score = GM.score + 50.0
	if ((absf(sprite_index - 31.0) < 0.00001)):
		GM.score = GM.score + 25.0
	(GM.f_sound_play(12.0))
	(GM.f_instance_destroy(self))
