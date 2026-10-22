extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_shiit = 0.0
var v_shizzed = 0.0
func ev_create():
	(GM.f_motion_set(self, 80.0, 15.0))
	gravity_direction = 270.0
	gravity = 0.7
	v_shizzed = 1.0
	v_shiit = 1100.0
func ev_step():
	v_shizzed = GM.add(v_shizzed, 0.01)
	v_shiit = v_shiit + 5.0
func ev_other_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite_scaled(613.0, (-1.0), x, y, v_shizzed))
	(GM.f_draw_sprite_scaled(235.0, (-1.0), x, v_shiit, v_shizzed))
