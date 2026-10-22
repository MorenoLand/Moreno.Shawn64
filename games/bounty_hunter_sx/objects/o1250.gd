extends "res://games/bounty_hunter_sx/objects/o1082.gd"
func ev_create():
	(GM.f_motion_set(self, GM.vget(1232.0, "v_wee"), 20.0))
	v_poo = (direction / 5.0)
	(GM.f_motion_add(self, GM.vb(1232.0, "direction"), GM.vb(1232.0, "speed")))
	(GM.f_move_outside_all(self, (GM.vget(1232.0, "v_wee") - 90.0), 60.0))
	(GM.f_move_outside_all(self, GM.vget(1232.0, "v_wee"), 26.0))
func ev_draw():
	(GM.f_draw_sprite(1054.0, v_poo, (x + 0.0), (y + 0.0)))
