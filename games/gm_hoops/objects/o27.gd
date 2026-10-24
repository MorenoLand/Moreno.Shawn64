extends "res://games/gm_hoops/scripts.gd"
func ev_step():
	(self.script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_4():
	(GM.f_game_restart())
