extends "res://games/bounty_hunter_sx/scripts.gd"
var v_poo = 0.0
func ev_create():
	if (((absf((GM.f_instance_number(1080.0)) - 1.0) < 0.00001))):
		direction = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(482.0, "x") + (GM.vb(482.0, "sprite_width") / 2.0)), (GM.vb(482.0, "y") + (GM.vb(482.0, "sprite_height") / 2.0))))
		speed = 20.0
		(GM.f_motion_add(self, GM.vb(1080.0, "direction"), GM.vb(1080.0, "speed")))
	v_poo = (direction / 5.0)
	alarm[int(0.0)] = 20.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_1219():
	(GM.f_sound_play(328.0))
	(GM.f_instance_destroy(self))
func ev_col_1207():
	(GM.f_sound_play(304.0))
	GM.G["fuel"] = GM.G["fuel"] - 5.0
	GM.health = GM.health + 5.0
	(GM.f_instance_destroy(self))
func ev_col_490():
	for _w67 in GM.with_list((self.other), self):
		if _w67._dead:
			continue
		_w67.other = self
		GM.vset(_w67, "v_mypower", GM.vget(_w67, "v_mypower") + (-1.0))
	(GM.f_instance_destroy(self))
func ev_col_487():
	for _w68 in GM.with_list((self.other), self):
		if _w68._dead:
			continue
		_w68.other = self
		GM.vset(_w68, "v_mypower", GM.vget(_w68, "v_mypower") + (-1.0))
	(GM.f_instance_destroy(self))
func ev_col_486():
	for _w69 in GM.with_list((self.other), self):
		if _w69._dead:
			continue
		_w69.other = self
		GM.vset(_w69, "v_mypower", GM.vget(_w69, "v_mypower") + (-1.0))
	(GM.f_instance_destroy(self))
func ev_col_482():
	if (((absf((GM.f_instance_number(1208.0)) - 0.0) < 0.00001))):
		(GM.f_instance_destroy(self))
	else:
		v_poo = (direction / 5.0)
		(GM.f_sound_play(328.0))
		(GM.f_move_bounce_solid(self, 0.0))
		(GM.f_instance_change(self, 489.0, 0.0))
func ev_other_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite(487.0, v_poo, (x + 0.0), (y + 0.0)))
