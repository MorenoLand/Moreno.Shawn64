extends "res://games/fwm/scripts.gd"
var v_open = 0.0
func ev_create():
	v_open = 0.0
func ev_mouse_4():
	for _w17 in GM.with_list((18.0), self):
		if _w17._dead:
			continue
		_w17.other = self
		GM.vset(_w17, "v_open", 0.0)
		GM.vset(_w17, "v_open", (GM.f_get_open_filename("Save files|*.sav", "")))
		(GM.f_game_load(GM.vget(_w17, "v_open")))
