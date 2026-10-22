extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_mypower = 0.0
var v_shizzed = 0.0
func ev_create():
	GM.G["yellow"] = GM.G["yellow"] + 1.0
	(self.script_copzapin())
func ev_other_7():
	v_shizzed = (GM.f_instance_create(x, y, 732.0))
	GM.vset(v_shizzed, "v_mypower", v_mypower)
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite(765.0, (-1.0), x, y))
	(GM.f_draw_sprite(756.0, 2.0, (x + 5.0), y))
