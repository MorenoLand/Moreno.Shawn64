extends "res://games/mini_golf_pro/scripts.gd"
var v_blahz = 0.0
var v_coll = 0.0
var v_gogo = 0.0
var v_ham = 0.0
var v_implayer = 0.0
var v_jumping = 0.0
var v_mass = 0.0
var v_out = 0.0
var v_ramp1 = 0.0
var v_ramp2 = 0.0
var v_scaleme = 0.0
var v_upspeed = 0.0
var v_wee = 0.0
var v_what = 0.0
var v_yam = 0.0
func ev_create():
	v_coll = 0.0
	v_implayer = 10.0
	v_gogo = 1.0
	v_mass = 1.0
	v_wee = 0.0
	v_ramp1 = 1.0
	v_ramp2 = 1.0
	friction = 0.1
	v_scaleme = 1.0
	v_ham = 90.0
	v_jumping = 0.0
	v_upspeed = 0.1
	v_yam = 1.0
	v_out = 1.0
	v_blahz = 0.0
func ev_alarm_4():
	(GM.f_sound_stop(15.0))
func ev_alarm_3():
	(GM.f_instance_activate_all())
func ev_alarm_2():
	v_ramp1 = 1.0
	v_ramp2 = 1.0
func ev_stepend():
	v_wee = GM.add(v_wee, speed)
	if ((speed > 25.0)):
		speed = 25.0
func ev_col_315():
	(GM.f_motion_add(self, ((GM.f_point_direction(x, y, GM.vb(self.other, "x"), GM.vb(self.other, "y"))) - 180.0), (15.0 + (GM.f_random(5.0)))))
func ev_col_314():
	(GM.f_mplay_message_send_guaranteed(0.0, 603.0, (((GM.f_string(GM.vb(self.other, "x"))) + "|") + (GM.f_string(GM.vb(self.other, "y"))))))
	(self.script_sound_plays(56.0))
	for _w48 in GM.with_list((self.other), self):
		if _w48._dead:
			continue
		_w48.other = self
		(GM.f_instance_destroy(_w48))
func ev_col_235():
	(self.script_collisionss(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_col_213():
	(GM.f_sound_play(0.0))
	if GM.truth(((GM.f_instance_place(self, (x - 20.0), y, 213.0)))):
		hspeed = GM.vb(self.other, "hspeed")
		x = x + 1.0
	if GM.truth(((GM.f_instance_place(self, (x + 20.0), y, 213.0)))):
		hspeed = GM.vb(self.other, "hspeed")
		x = x - 1.0
	if GM.truth(((GM.f_instance_place(self, x, (y - 20.0), 213.0)))):
		vspeed = ((-vspeed) / 1.05)
	if GM.truth(((GM.f_instance_place(self, x, (y + 20.0), 213.0)))):
		vspeed = ((-vspeed) / 1.05)
	if ((vspeed > (-15.0))):
		vspeed = vspeed - 1.0
func ev_col_204():
	(GM.f_mplay_message_send_guaranteed(0.0, 603.0, (((GM.f_string(GM.vb(self.other, "x"))) + "|") + (GM.f_string(GM.vb(self.other, "y"))))))
	(GM.f_motion_add(self, ((direction - 45.0) + (GM.f_random(90.0))), (GM.f_random(5.0))))
	(self.script_sound_plays(19.0))
func ev_col_181():
	(GM.f_motion_add(self, ((GM.f_point_direction(x, y, GM.vb(self.other, "x"), GM.vb(self.other, "y"))) + 90.0), 0.2))
func ev_col_178():
	(GM.f_motion_add(self, ((GM.f_point_direction(x, y, GM.vb(self.other, "x"), GM.vb(self.other, "y"))) - 90.0), 0.2))
func ev_col_159():
	y = y + 1.0
	speed = 0.0
func ev_col_158():
	y = y + 1.0
	speed = 0.0
func ev_col_156():
	(GM.f_motion_add(self, 270.0, 0.4))
func ev_col_153():
	(GM.f_motion_add(self, 270.0, 0.4))
func ev_col_150():
	(GM.f_mplay_message_send_guaranteed(0.0, 603.0, (((GM.f_string((GM.vb(self.other, "x") + 20.0))) + "|") + (GM.f_string((GM.vb(self.other, "y") + 20.0))))))
	(GM.f_motion_add(self, ((GM.f_point_direction(x, y, (GM.vb(self.other, "x") + (GM.vb(self.other, "sprite_width") / 2.0)), (GM.vb(self.other, "y") + (GM.vb(self.other, "sprite_height") / 2.0)))) - 180.0), (15.0 + (GM.f_random(5.0)))))
	(self.script_sound_plays(19.0))
	for _w49 in GM.with_list((self.other), self):
		if _w49._dead:
			continue
		_w49.other = self
		(GM.f_instance_destroy(_w49))
func ev_col_146():
	if ((speed < 30.0)):
		direction = ((GM.f_point_direction(x, y, GM.vb(self.other, "x"), GM.vb(self.other, "y"))) + 120.0)
	speed = ((11.8668832 * (GM.f_point_distance(x, y, GM.vb(self.other, "x"), GM.vb(self.other, "y")))) / 170.0)
	x = x + (hspeed / 5.0)
	y = y + (vspeed / 5.0)
	(GM.f_sound_play(18.0))
func ev_col_140():
	(GM.f_motion_add(self, 0.0, 0.4))
	if not ((((GM.f_sound_isplaying(15.0)))) >= 0.5):
		(GM.f_sound_loop(15.0))
	alarm[int(4.0)] = 2.0
func ev_col_139():
	(GM.f_motion_add(self, 270.0, 0.4))
func ev_col_136():
	if ((absf(depth - (-1.0)) < 0.00001)):
		x = xprevious
		y = yprevious
		hspeed = (-hspeed)
		speed = (speed / 1.05)
		(self.script_sound_plays(0.0))
func ev_col_135():
	if ((absf(depth - (-1215752199.0)) < 0.00001)):
		x = xprevious
		y = yprevious
		vspeed = (-vspeed)
		speed = (speed / 1.05)
		(self.script_sound_plays(0.0))
func ev_col_131():
	(GM.f_motion_add(self, 270.0, 0.4))
func ev_col_122():
	(GM.f_motion_add(self, 90.0, 0.4))
	if not ((((GM.f_sound_isplaying(15.0)))) >= 0.5):
		(GM.f_sound_loop(15.0))
	alarm[int(4.0)] = 2.0
func ev_col_121():
	(GM.f_motion_add(self, 270.0, 0.4))
	if not ((((GM.f_sound_isplaying(15.0)))) >= 0.5):
		(GM.f_sound_loop(15.0))
	alarm[int(4.0)] = 2.0
func ev_col_120():
	(GM.f_motion_add(self, 180.0, 0.4))
	if not ((((GM.f_sound_isplaying(15.0)))) >= 0.5):
		(GM.f_sound_loop(15.0))
	alarm[int(4.0)] = 2.0
func ev_col_82():
	if ((absf(v_ramp1 - 1.0) < 0.00001)):
		if ((hspeed < 0.0)):
			direction = (((-((180.0 - direction)))) + 135.0)
		else:
			direction = ((-((315.0 - direction))))
		v_ramp1 = 0.0
	alarm[int(2.0)] = 2.0
func ev_col_81():
	if ((absf(v_ramp1 - 1.0) < 0.00001)):
		if ((hspeed < 0.0)):
			direction = (((-((135.0 - direction)))) + 180.0)
		else:
			direction = (((-((-direction)))) - 45.0)
		v_ramp1 = 0.0
	alarm[int(2.0)] = 2.0
func ev_col_72():
	(GM.f_motion_add(self, 225.0, 0.2))
func ev_col_71():
	if (GM.eq(v_what, 1.0)):
		x = GM.G["p1xxx"]
		y = GM.G["p1yyy"]
	if (GM.eq(v_what, 2.0)):
		x = GM.G["p2xxx"]
		y = GM.G["p2yyy"]
	if (GM.eq(v_what, 3.0)):
		x = GM.G["p3xxx"]
		y = GM.G["p3yyy"]
	if (GM.eq(v_what, 4.0)):
		x = GM.G["p4xxx"]
		y = GM.G["p4yyy"]
	if (GM.eq(v_what, 5.0)):
		x = GM.G["p5xxx"]
		y = GM.G["p5yyy"]
	speed = 0.0
	(GM.f_sound_play(12.0))
func ev_col_65():
	(GM.f_motion_add(self, 270.0, 0.3))
func ev_col_59():
	if ((absf(v_ramp2 - 1.0) < 0.00001)):
		if ((hspeed < 0.0)):
			direction = (((-((225.0 - direction)))) + 180.0)
		else:
			if (((direction > 0.0) and (direction < 90.0))):
				direction = (((-((0.0 - direction)))) + 45.0)
			else:
				direction = (((360.0 - ((0.0 - direction)))) + 45.0)
		v_ramp2 = 0.0
	alarm[int(2.0)] = 2.0
func ev_col_58():
	if ((absf(v_ramp1 - 1.0) < 0.00001)):
		if ((hspeed < 0.0)):
			direction = (((-((180.0 - direction)))) + 225.0)
		else:
			direction = ((-((45.0 - direction))))
		v_ramp1 = 0.0
	alarm[int(2.0)] = 2.0
func ev_col_42():
	if ((((y > 660.0) and (direction > 0.0)) and (direction < 180.0))):
		(self.script_sound_plays(6.0))
		vspeed = (-vspeed)
func ev_col_39():
	speed = speed + 0.3
func ev_col_35():
	speed = speed + 0.3
func ev_col_3():
	(GM.f_move_bounce_solid(self, 1.0))
	speed = (speed / 1.05)
func ev_col_0():
	if (((GM.eq(GM.G["yourplayer"], GM.G["personsturn"]) or (absf(GM.G["online"] - 0.0) < 0.00001)))):
		(self.script_collisionss(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	(GM.f_draw_sprite_ext(190.0, 30.0, x, y, v_yam, v_yam, v_wee, 16777215.0, 1.0))
	(GM.f_draw_sprite_ext(61.0, 0.0, x, y, v_yam, v_yam, 0.0, 16777215.0, 1.0))
