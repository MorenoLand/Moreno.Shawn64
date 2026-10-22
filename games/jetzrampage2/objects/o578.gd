extends "res://games/jetzrampage2/scripts.gd"
var v_image_single = 0.0
func ev_create():
	v_image_single = 0.0
	(GM.f_action_move(self, "000100000", 15.0, 0.0))
func ev_step():
	if ((((GM.f_random(25.0)) < 1.0))):
		if (((x > GM.view_xview[0]))):
			if (((x < (GM.view_xview[0] + 800.0)))):
				(GM.f_sound_play(191.0))
	if (((y > (GM.room_height - 10.0)))):
		(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 481.0))
		for _w293 in GM.with_list((516.0), self):
			if _w293._dead:
				continue
			_w293.other = self
			(GM.f_instance_create((_w293.x + 0.0), (_w293.y + 0.0), 547.0))
		(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 481.0))
		for _w294 in GM.with_list((67.0), self):
			if _w294._dead:
				continue
			_w294.other = self
			GM.vset(_w294, "v_currentmoney", GM.vget(_w294, "v_currentmoney") + 100.0)
		(GM.f_sound_play(88.0))
		for _w295 in GM.with_list((516.0), self):
			if _w295._dead:
				continue
			_w295.other = self
			(GM.f_instance_destroy(_w295))
		for _w296 in GM.with_list((250.0), self):
			if _w296._dead:
				continue
			_w296.other = self
			(GM.f_instance_destroy(_w296))
		(GM.f_instance_destroy(self))
func ev_col_493():
	x = xstart
	y = ystart
func ev_col_103():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 579.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 233.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
