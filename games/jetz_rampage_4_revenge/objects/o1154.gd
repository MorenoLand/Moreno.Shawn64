extends "res://games/jetz_rampage_4_revenge/objects/o1160.gd"
func ev_col_1143():
	if ((absf(GM.vget(self.other, "v_have3") - 0.0) < 0.00001)):
		(GM.f_sound_play(224.0))
		GM.vset(self.other, "v_have3", 1.0)
		(GM.f_instance_destroy(self))
func ev_col_979():
	if ((absf(GM.vget(self.other, "v_have3") - 0.0) < 0.00001)):
		(GM.f_sound_play(224.0))
		GM.vset(self.other, "v_have3", 1.0)
		(GM.f_instance_destroy(self))
