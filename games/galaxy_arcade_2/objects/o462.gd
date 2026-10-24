extends "res://games/galaxy_arcade_2/scripts.gd"
var v_open = 0.0
func ev_create():
	v_open = 0.0
func ev_step():
	(self.script_script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_4():
	v_open = 0.0
	v_open = (GM.f_get_open_filename("Save files|*.sav", ""))
	(GM.f_game_load(v_open))
