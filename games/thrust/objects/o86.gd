extends "res://games/thrust/scripts.gd"
func ev_step():
	GM.vsetb(0.0, "gravity", 0.0)
	GM.vset(0.0, "v_rotationspeed", 8.0)
