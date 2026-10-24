extends "res://games/galaxy_arcade_2/scripts.gd"
var v_wowee = 0.0
func ev_create():
	v_wowee = 0.0
func ev_step():
	(self.script_script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_0():
	v_wowee = (GM.f_get_save_filename("Save files|*.sav", ""))
	(GM.f_game_save(GM.add(v_wowee, ".sav")))
