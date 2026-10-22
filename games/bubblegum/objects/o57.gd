extends "res://games/bubblegum/scripts.gd"
var v_psound = 0.0
func ev_create():
	v_psound = 1.0
func ev_step():
	(self.script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
