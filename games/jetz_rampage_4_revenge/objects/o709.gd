extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wee = 0.0
func ev_create():
	(GM.f_action_move(self, "000000010", 4.0, 0.0))
func ev_step():
	depth = depth + 0.07
func ev_col_753():
	if ((y < (GM.vb(self.other, "y") + 30.0))):
		if (((GM.vb(self.other, "x") + (GM.vb(self.other, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
			v_wee = (GM.f_instance_create(GM.vb(self.other, "x"), GM.vb(self.other, "y"), 605.0))
			if ((absf(GM.room - 1.0) < 0.00001)):
				GM.vset(v_wee, "v_image_single", 0.0)
			if ((absf(GM.room - 16.0) < 0.00001)):
				GM.vset(v_wee, "v_image_single", 2.0)
			GM.vb(v_wee, "alarm")[int(1.0)] = 25.0
		else:
			v_wee = (GM.f_instance_create(GM.vb(self.other, "x"), GM.vb(self.other, "y"), 605.0))
			if ((absf(GM.room - 1.0) < 0.00001)):
				GM.vset(v_wee, "v_image_single", 1.0)
			if ((absf(GM.room - 16.0) < 0.00001)):
				GM.vset(v_wee, "v_image_single", 3.0)
			GM.vb(v_wee, "alarm")[int(1.0)] = 25.0
		if (((self.script_view_check(self)))) >= 0.5:
			(GM.f_sound_play(173.0))
		(GM.f_instance_destroy(self))
func ev_col_518():
	if ((y < (GM.vb(self.other, "y") + 30.0))):
		if (((GM.vb(self.other, "x") + (GM.vb(self.other, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
			v_wee = (GM.f_instance_create(GM.vb(self.other, "x"), GM.vb(self.other, "y"), 605.0))
			if ((absf(GM.room - 1.0) < 0.00001)):
				GM.vset(v_wee, "v_image_single", 0.0)
			if ((absf(GM.room - 16.0) < 0.00001)):
				GM.vset(v_wee, "v_image_single", 2.0)
			GM.vb(v_wee, "alarm")[int(1.0)] = 25.0
		else:
			v_wee = (GM.f_instance_create(GM.vb(self.other, "x"), GM.vb(self.other, "y"), 605.0))
			if ((absf(GM.room - 1.0) < 0.00001)):
				GM.vset(v_wee, "v_image_single", 1.0)
			if ((absf(GM.room - 16.0) < 0.00001)):
				GM.vset(v_wee, "v_image_single", 3.0)
			GM.vb(v_wee, "alarm")[int(1.0)] = 25.0
		if (((self.script_view_check(self)))) >= 0.5:
			(GM.f_sound_play(173.0))
		(GM.f_instance_destroy(self))
