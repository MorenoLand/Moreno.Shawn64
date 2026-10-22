extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_shit = 0.0
var v_wee = 0.0
func ev_create():
	v_shit = 290.0
	y = (GM.vb(946.0, "y") + v_shit)
func ev_step():
	if (((GM.f_instance_number(946.0)) > 0.0)):
		x = (((GM.vb(949.0, "x") + (GM.vb(949.0, "sprite_width") / 2.0))) - (sprite_width / 2.0))
		if (((x + (sprite_width / 2.0)) > (GM.vb(946.0, "x") + (GM.vb(946.0, "sprite_width") / 2.0)))):
			v_shit = (340.0 - (((((x + (sprite_width / 2.0))) - ((GM.vb(946.0, "x") + (GM.vb(946.0, "sprite_width") / 2.0))))) / 2.0))
		if (((x + (sprite_width / 2.0)) < (GM.vb(946.0, "x") + (GM.vb(946.0, "sprite_width") / 2.0)))):
			v_shit = (340.0 + (((((x + (sprite_width / 2.0))) - ((GM.vb(946.0, "x") + (GM.vb(946.0, "sprite_width") / 2.0))))) / 2.0))
		y = (GM.vb(946.0, "y") + v_shit)
func ev_col_965():
	pass
func ev_col_656():
	v_wee = (GM.f_floor((GM.f_random(10.9999))))
	if (GM.eq(v_wee, 0.0)):
		for _w599 in GM.with_list((946.0), self):
			if _w599._dead:
				continue
			_w599.other = self
			_w599.ev_user(0.0)
func ev_col_502():
	for _w600 in GM.with_list((946.0), self):
		if _w600._dead:
			continue
		_w600.other = self
		_w600.ev_user(0.0)
func ev_col_489():
	(self.script_bosscrash())
