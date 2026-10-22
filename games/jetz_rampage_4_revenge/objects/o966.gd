extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	(GM.f_sound_loop(244.0))
	depth = (GM.vb(7.0, "depth") - 1.0)
	gravity = 0.3
func ev_destroy():
	(GM.f_sound_stop(244.0))
func ev_step():
	if ((speed > 25.0)):
		speed = 25.0
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 490.0))
	(GM.f_motion_add(self, (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)))), ((GM.f_distance_to_object(self, 7.0)) / 100.0)))
func ev_col_929():
	self.ev_user(1.0)
func ev_col_925():
	self.ev_user(1.0)
func ev_col_898():
	self.ev_user(1.0)
func ev_col_822():
	if ((speed > 20.0)):
		self.ev_user(1.0)
func ev_col_770():
	if ((speed > 10.0)):
		self.ev_user(1.0)
func ev_col_757():
	self.ev_user(1.0)
func ev_col_741():
	self.ev_user(1.0)
func ev_col_732():
	self.ev_user(1.0)
func ev_col_731():
	self.ev_user(1.0)
func ev_col_725():
	self.ev_user(1.0)
func ev_col_713():
	if ((speed > 10.0)):
		self.ev_user(1.0)
func ev_col_705():
	self.ev_user(1.0)
func ev_col_592():
	self.ev_user(1.0)
func ev_col_563():
	self.ev_user(1.0)
func ev_col_551():
	if (((hspeed > 4.0) or (hspeed < (-4.0)))):
		self.ev_user(0.0)
		(GM.f_instance_create(x, y, 498.0))
	hspeed = 0.0
func ev_col_522():
	if ((speed > 20.0)):
		self.ev_user(1.0)
func ev_col_489():
	if ((vspeed > 4.0)):
		self.ev_user(0.0)
		(GM.f_instance_create(x, y, 498.0))
	vspeed = 0.0
func ev_other_11():
	if ((absf(GM.vb(self.other, "gravity") - 0.0) < 0.00001)):
		self.ev_user(0.0)
		if ((speed > 5.0)):
			(GM.f_instance_create(x, y, 498.0))
		speed = (speed / 5.0)
func ev_other_10():
	for _r624 in range(int((5.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 618.0))
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 659.0))
func ev_draw():
	(GM.f_draw_sprite(982.0, (-1.0), (x + 0.0), (y + 0.0)))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_line((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0))))
