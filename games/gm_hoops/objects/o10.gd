extends "res://games/gm_hoops/scripts.gd"
func ev_step():
	(GM.f_move_towards_point(self, (GM.vb(8.0, "x") + 24.0), (GM.vb(8.0, "y") + 24.0), ((GM.f_distance_to_point(self, (GM.vb(8.0, "x") + 24.0), (GM.vb(8.0, "y") + 24.0))) / 2.0)))
