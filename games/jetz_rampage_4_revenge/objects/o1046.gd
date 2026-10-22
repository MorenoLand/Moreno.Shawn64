extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_stage = 0.0
func ev_create():
	GM.G["warning"] = 0.0
	GM.vset(7.0, "v_myhealth", 100.0)
	if ((((GM.f_sound_isplaying(227.0))) >= 0.5 or ((GM.f_sound_isplaying(228.0))) >= 0.5)):
		(GM.f_sound_stop(227.0))
		(GM.f_sound_stop(228.0))
		(GM.f_sound_play(252.0))
		(GM.f_sound_loop(229.0))
	v_stage = 1.0
func ev_destroy():
	GM.vsetb(7.0, "friction", 0.1)
func ev_step():
	if ((absf(v_stage - 1.0) < 0.00001)):
		GM.vset(7.0, "v_movenow", 0.0)
		for _w706 in GM.with_list((7.0), self):
			if _w706._dead:
				continue
			_w706.other = self
			if ((_w706.hspeed > 0.0)):
				GM.vset(_w706, "v_guyright", 1.0)
				GM.vset(_w706, "v_guyleft", 0.0)
			else:
				GM.vset(_w706, "v_guyleft", 1.0)
				GM.vset(_w706, "v_guyright", 0.0)
			(GM.f_motion_add(_w706, (GM.f_point_direction(_w706.x, _w706.y, 1840.0, 900.0)), 0.7))
			if ((_w706.speed > 16.0)):
				_w706.speed = 16.0
			if (((GM.f_distance_to_point(_w706, 1840.0, 900.0)) < 20.0)):
				_w706.friction = 2.0
				GM.vset(_w706, "v_guyright", 1.0)
				GM.vset(_w706, "v_guyleft", 0.0)
				(GM.f_instance_create(1960.0, 25.0, 894.0))
				GM.vset(1046.0, "v_stage", 2.0)
