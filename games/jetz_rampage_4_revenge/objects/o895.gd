extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_shiit = 0.0
var v_shizzed = 0.0
func ev_create():
	speed = speed + (12.0 + (GM.f_random(5.0)))
	gravity_direction = 270.0
	gravity = 0.8
	(self.script_adddamage())
	v_shizzed = 1.0
	v_shiit = (y + sprite_height)
func ev_step():
	if ((speed > 1.0)):
		image_speed = (speed / 20.0)
	else:
		image_speed = 0.0
	v_shizzed = GM.add(v_shizzed, 0.03)
	v_shiit = v_shiit + 8.0
func ev_other_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite_scaled(919.0, (-1.0), x, y, v_shizzed))
	(GM.f_draw_sprite_scaled(235.0, (-1.0), x, v_shiit, v_shizzed))
