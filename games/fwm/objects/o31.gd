extends "res://games/fwm/scripts.gd"
var v_wowee = 0.0
func ev_create():
	v_wowee = 0.0
func ev_mouse_4():
	for _w16 in GM.with_list((18.0), self):
		if _w16._dead:
			continue
		_w16.other = self
		GM.vset(_w16, "v_wowee", (GM.f_get_save_filename("Save files|*.sav", "")))
		(GM.f_game_save(GM.add(GM.vget(_w16, "v_wowee"), ".sav")))
