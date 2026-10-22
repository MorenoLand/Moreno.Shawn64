extends "res://games/jetz_rampage_4_revenge/objects/o1160.gd"
func ev_col_1143():
	if ((GM.vget(self.other, "v_myhealth") < 95.0)):
		(GM.f_sound_play(224.0))
		GM.vset(self.other, "v_myhealth", GM.vget(self.other, "v_myhealth") + 10.0)
		(GM.f_instance_create(0.0, 0.0, 1159.0))
		(GM.f_instance_destroy(self))
func ev_col_979():
	if ((GM.vget(self.other, "v_myhealth") < 95.0)):
		(GM.f_sound_play(224.0))
		GM.vset(self.other, "v_myhealth", GM.vget(self.other, "v_myhealth") + 10.0)
		(GM.f_instance_create(0.0, 0.0, 1159.0))
		(GM.f_instance_destroy(self))
