extends "res://games/svsj/scripts.gd"
func ev_create():
	speed = 6.0
	direction = 270.0
func ev_col_15():
	if ((((GM.f_random(2.0)) < 1.0))):
		GM.G["p2score"] = GM.G["p2score"] - 1.0
		(GM.f_sound_play(9.0))
		(GM.f_sound_play(12.0))
		GM.vb(self.other, "alarm")[int(1.0)] = 2.0
		GM.vb(self.other, "alarm")[int(3.0)] = 10.0
		GM.vset(self.other, "v_talking", 1.0)
		(GM.f_sound_play(16.0))
		(GM.f_instance_destroy(self))
func ev_col_4():
	(GM.f_sound_play(10.0))
	(GM.f_instance_destroy(self))
	(GM.f_sound_play(16.0))
func ev_col_1():
	if ((((GM.f_random(2.0)) < 1.0))):
		GM.G["p2score"] = GM.G["p2score"] - 1.0
		(GM.f_sound_play(9.0))
		(GM.f_sound_play(12.0))
		GM.vb(self.other, "alarm")[int(1.0)] = 2.0
		GM.vb(self.other, "alarm")[int(3.0)] = 10.0
		GM.vset(self.other, "v_talking", 1.0)
		(GM.f_sound_play(16.0))
		(GM.f_instance_destroy(self))
func ev_col_0():
	if ((((GM.f_random(2.0)) < 1.0))):
		GM.G["p1score"] = GM.G["p1score"] - 1.0
		(GM.f_sound_play(9.0))
		(GM.f_sound_play(13.0))
		GM.vb(self.other, "alarm")[int(1.0)] = 2.0
		GM.vb(self.other, "alarm")[int(3.0)] = 10.0
		GM.vset(self.other, "v_talking", 1.0)
		(GM.f_sound_play(16.0))
		(GM.f_instance_destroy(self))
