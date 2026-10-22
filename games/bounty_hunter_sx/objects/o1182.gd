extends "res://games/bounty_hunter_sx/objects/o1177.gd"
var v_poo = 0.0
func ev_create():
	(GM.f_motion_add(self, GM.vget(482.0, "v_my_direction"), 20.0))
	v_poo = (direction / 11.25)
	(GM.f_motion_add(self, GM.vb(482.0, "direction"), GM.vb(482.0, "speed")))
	(GM.f_sound_play(314.0))
	alarm[int(0.0)] = 125.0
func ev_step():
	pass
func ev_draw():
	(GM.f_draw_sprite(1115.0, v_poo, (x + 0.0), (y + 0.0)))
