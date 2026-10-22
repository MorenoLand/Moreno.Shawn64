extends "res://games/mini_golf_pro/scripts.gd"
var v_wee = 0.0
func ev_create():
	v_wee = 0.0
func ev_col_301():
	for _r29 in range(int((100.0))):
		(GM.f_instance_create(((x - 12.0) + (GM.f_random(24.0))), ((y - 12.0) + (GM.f_random(24.0))), 312.0))
	(GM.f_instance_create((x - 45.0), (y - 45.0), 207.0))
	(self.script_sound_plays(19.0))
	(GM.f_instance_destroy(self))
func ev_col_235():
	for _r30 in range(int((100.0))):
		(GM.f_instance_create(((x - 12.0) + (GM.f_random(24.0))), ((y - 12.0) + (GM.f_random(24.0))), 312.0))
	(GM.f_instance_create((x - 45.0), (y - 45.0), 207.0))
	(GM.f_instance_destroy(self))
func ev_col_0():
	if ((GM.eq(GM.G["yourplayer"], GM.vget(self.other, "v_implayer")) or (absf(GM.G["online"] - 0.0) < 0.00001))):
		for _r31 in range(int((100.0))):
			(GM.f_instance_create(((x - 12.0) + (GM.f_random(24.0))), ((y - 12.0) + (GM.f_random(24.0))), 312.0))
		(GM.f_instance_create((x - 45.0), (y - 45.0), 207.0))
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite_ext(144.0, (-1.0), x, y, 1.0, 1.0, 0.0, 16777215.0, 1.0))
