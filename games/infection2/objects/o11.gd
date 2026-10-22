extends "res://games/infection2/scripts.gd"
func ev_create():
	gravity = 0.4
	gravity_direction = 270.0
func ev_col_1():
	vspeed = 0.0
func ev_col_0():
	if ((GM.vget(self.other, "v_weapon3number") < 2.0)):
		GM.vset(self.other, "v_weapon3number", GM.vget(self.other, "v_weapon3number") + 1.0)
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite(21.0, 0.0, x, y))
