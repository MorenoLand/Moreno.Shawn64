extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_rate = 0.0
func ev_create():
	image_single = 4.0
	v_rate = 10.0
	(GM.f_sound_play(230.0))
func ev_step():
	if ((((self.script_view_check(self))))) >= 0.5:
		for _r240 in range(int((v_rate))):
			(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 612.0))
		v_rate = v_rate - 0.2
		if ((v_rate < 0.0)):
			(GM.f_instance_create(x, y, 884.0))
			(GM.f_instance_destroy(self))
