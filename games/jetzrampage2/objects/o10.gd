extends "res://games/jetzrampage2/scripts.gd"
var v_alive = 0.0
func ev_create():
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 25.0), ((y + (sprite_height / 2.0)) - 25.0), 510.0))
	alarm[int(0.0)] = 20.0
	if (((hspeed > 0.0))):
		(GM.f_action_move(self, "000001000", (GM.vb(0.0, "hspeed") + 12.0), 0.0))
		vspeed = GM.vb(0.0, "vspeed")
		for _r24 in range(int((20.0))):
			(GM.f_instance_create((x + 1.0), (y + 1.0), 11.0))
	else:
		(GM.f_action_move(self, "000100000", ((-GM.vb(0.0, "hspeed")) + 12.0), 0.0))
		vspeed = GM.vb(0.0, "vspeed")
		for _r25 in range(int((20.0))):
			(GM.f_instance_create((x + 1.0), (y + 1.0), 14.0))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_543():
	if (((absf(v_alive - 1.0) < 0.00001))):
		if (((absf(GM.vget(0.0, "v_crimax") - 1.0) < 0.00001))):
			(GM.f_sound_play(84.0))
			(GM.f_instance_create((x + (-16.0)), (y + (-16.0)), 1902.0))
		(GM.f_instance_create((x + (-100.0)), (y + (-100.0)), 243.0))
		(GM.f_sound_play(30.0))
		(GM.f_instance_destroy(self))
func ev_col_479():
	if (((absf(v_alive - 1.0) < 0.00001))):
		if (((absf(GM.vget(0.0, "v_crimax") - 1.0) < 0.00001))):
			(GM.f_sound_play(84.0))
			(GM.f_instance_create((x + (-16.0)), (y + (-16.0)), 1902.0))
		(GM.f_instance_create((x + (-100.0)), (y + (-100.0)), 243.0))
		(GM.f_sound_play(177.0))
		(GM.f_instance_destroy(self))
func ev_col_477():
	if (((absf(GM.vget(0.0, "v_crimax") - 1.0) < 0.00001))):
		(GM.f_sound_play(84.0))
		(GM.f_instance_create((x + (-16.0)), (y + (-16.0)), 1902.0))
	(GM.f_instance_destroy(self))
func ev_col_432():
	if (((absf(GM.vget(0.0, "v_crimax") - 1.0) < 0.00001))):
		(GM.f_sound_play(84.0))
		(GM.f_instance_create((x + (-16.0)), (y + (-16.0)), 1902.0))
	(GM.f_instance_destroy(self))
func ev_col_430():
	if (((absf(v_alive - 1.0) < 0.00001))):
		if (((absf(GM.vget(0.0, "v_crimax") - 1.0) < 0.00001))):
			(GM.f_sound_play(84.0))
			(GM.f_instance_create((x + (-16.0)), (y + (-16.0)), 1902.0))
		(GM.f_instance_create((x + (-100.0)), (y + (-100.0)), 243.0))
		(GM.f_sound_play(30.0))
		(GM.f_instance_destroy(self))
func ev_col_219():
	if (((absf(GM.vget(0.0, "v_crimax") - 1.0) < 0.00001))):
		(GM.f_sound_play(84.0))
		(GM.f_instance_create((x + (-16.0)), (y + (-16.0)), 1902.0))
	(GM.f_instance_destroy(self))
func ev_col_185():
	if (((absf(v_alive - 1.0) < 0.00001))):
		if (((absf(GM.vget(0.0, "v_crimax") - 1.0) < 0.00001))):
			(GM.f_sound_play(84.0))
			(GM.f_instance_create((x + (-16.0)), (y + (-16.0)), 1902.0))
		(GM.f_sound_play(30.0))
		(GM.f_instance_destroy(self))
func ev_col_120():
	if (((absf(GM.vget(0.0, "v_crimax") - 1.0) < 0.00001))):
		(GM.f_sound_play(84.0))
		(GM.f_instance_create((x + (-16.0)), (y + (-16.0)), 1902.0))
	(GM.f_instance_destroy(self))
func ev_col_115():
	if (((absf(GM.vget(0.0, "v_crimax") - 1.0) < 0.00001))):
		(GM.f_sound_play(84.0))
		(GM.f_instance_create((x + (-16.0)), (y + (-16.0)), 1902.0))
	(GM.f_instance_create((x + (-100.0)), (y + (-100.0)), 243.0))
	(GM.f_instance_destroy(self))
func ev_col_114():
	if (((absf(GM.vget(0.0, "v_crimax") - 1.0) < 0.00001))):
		(GM.f_sound_play(84.0))
		(GM.f_instance_create((x + (-16.0)), (y + (-16.0)), 1902.0))
	(GM.f_instance_create((x + (-100.0)), (y + (-100.0)), 243.0))
	(GM.f_instance_destroy(self))
func ev_col_99():
	if (((absf(v_alive - 1.0) < 0.00001))):
		if (((absf(GM.vget(0.0, "v_crimax") - 1.0) < 0.00001))):
			(GM.f_sound_play(84.0))
			(GM.f_instance_create((x + (-16.0)), (y + (-16.0)), 1902.0))
		(GM.f_instance_create((x + (-100.0)), (y + (-100.0)), 243.0))
		(GM.f_sound_play(30.0))
		(GM.f_instance_destroy(self))
func ev_col_94():
	if (((absf(GM.vget(0.0, "v_crimax") - 1.0) < 0.00001))):
		(GM.f_sound_play(84.0))
		(GM.f_instance_create((x + (-16.0)), (y + (-16.0)), 1902.0))
	(GM.f_sound_play(33.0))
	(GM.f_instance_create((x + (-30.0)), (y + 0.0), 107.0))
	(GM.f_instance_destroy(self))
func ev_col_92():
	if (((absf(v_alive - 1.0) < 0.00001))):
		if (((absf(GM.vget(0.0, "v_crimax") - 1.0) < 0.00001))):
			(GM.f_sound_play(84.0))
			(GM.f_instance_create((x + (-16.0)), (y + (-16.0)), 1902.0))
		(GM.f_instance_create((x + (-100.0)), (y + (-100.0)), 243.0))
		(GM.f_sound_play(30.0))
		(GM.f_instance_destroy(self))
func ev_col_85():
	if (((absf(GM.vget(0.0, "v_crimax") - 1.0) < 0.00001))):
		(GM.f_sound_play(84.0))
		(GM.f_instance_create((x + (-16.0)), (y + (-16.0)), 1902.0))
	(GM.f_instance_create((x + (-100.0)), (y + (-100.0)), 243.0))
	(GM.f_instance_destroy(self))
func ev_col_80():
	if (((absf(v_alive - 1.0) < 0.00001))):
		if (((absf(GM.vget(0.0, "v_crimax") - 1.0) < 0.00001))):
			(GM.f_sound_play(84.0))
			(GM.f_instance_create((x + (-16.0)), (y + (-16.0)), 1902.0))
		(GM.f_instance_create((x + (-100.0)), (y + (-100.0)), 243.0))
		(GM.f_sound_play(30.0))
		(GM.f_instance_destroy(self))
func ev_col_71():
	if (((absf(GM.vget(0.0, "v_crimax") - 1.0) < 0.00001))):
		(GM.f_sound_play(84.0))
		(GM.f_instance_create((x + (-16.0)), (y + (-16.0)), 1902.0))
	(GM.f_instance_destroy(self))
func ev_col_16():
	(GM.f_sound_play(11.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
