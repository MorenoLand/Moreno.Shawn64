extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_delete = 0.0
var v_mypower = 0.0
var v_onelectric = 0.0
var v_onfire = 0.0
var v_pam = 0.0
var v_persond = 0.0
var v_persontype = 0.0
var v_woot = 0.0
var v_wow = 0.0
var v_wows = 0.0
func ev_create():
	v_pam = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.view_xview[0] + 400.0), (GM.view_yview[0] + 300.0)))
	(GM.f_motion_add(self, ((v_pam - 25.0) + (GM.f_random(50.0))), (5.0 + (GM.f_random(4.0)))))
	v_delete = 0.0
	alarm[int(0.0)] = 15.0
	v_persontype = (GM.f_round((GM.f_random(3.0))))
	if ((absf(v_persontype - 0.0) < 0.00001)):
		v_persond = 1.0
	if ((absf(v_persontype - 1.0) < 0.00001)):
		v_persond = 6.0
	if ((absf(v_persontype - 2.0) < 0.00001)):
		v_persond = 7.0
	if ((absf(v_persontype - 3.0) < 0.00001)):
		v_persond = 8.0
	v_mypower = 2.0
	v_onfire = 0.0
	v_onelectric = 0.0
func ev_alarm_0():
	v_delete = 1.0
func ev_step():
	if ((absf(v_delete - 1.0) < 0.00001)):
		if not ((((self.script_view_check(self)))) >= 0.5):
			(GM.f_instance_destroy(self))
	if ((y > 900.0)):
		if ((hspeed > 0.0)):
			direction = direction + 3.0
		if ((hspeed < 0.0)):
			direction = direction - 3.0
	if ((speed < 10.0)):
		speed = speed + 0.05
	if ((speed > 9.0)):
		speed = 9.0
	if ((hspeed > 0.0)):
		v_wow = (GM.f_instance_create((x + 2.0), (y + 39.0), 749.0))
	else:
		v_wow = (GM.f_instance_create((x + 29.0), (y + 39.0), 749.0))
	GM.vsetb(v_wow, "vspeed", GM.vb(v_wow, "vspeed") + vspeed)
	GM.vsetb(v_wow, "hspeed", GM.vb(v_wow, "hspeed") + (hspeed / 2.0))
func ev_col_791():
	(self.script_personscream())
	self.ev_user(0.0)
func ev_col_656():
	(self.script_personscream())
	self.ev_user(0.0)
func ev_col_502():
	v_mypower = v_mypower - 1.0
	(self.script_personscream())
	if ((v_mypower < 1.0)):
		self.ev_user(0.0)
	else:
		(GM.f_motion_add(self, GM.vb(self.other, "direction"), 3.0))
		(GM.f_sound_play(151.0))
	for _w432 in GM.with_list((self.other), self):
		if _w432._dead:
			continue
		_w432.other = self
		(GM.f_instance_destroy(_w432))
func ev_col_494():
	v_onelectric = 1.0
	(self.script_personscream())
	self.ev_user(0.0)
func ev_col_491():
	v_onfire = 1.0
	(self.script_personscream())
	self.ev_user(0.0)
func ev_other_10():
	if ((hspeed > 0.0)):
		v_wows = (GM.f_instance_create(x, (y + 28.0), 751.0))
	else:
		v_wows = (GM.f_instance_create((x + 24.0), (y + 28.0), 751.0))
	GM.vsetb(v_wows, "hspeed", GM.vb(v_wows, "hspeed") + hspeed)
	GM.vsetb(v_wows, "vspeed", GM.vb(v_wows, "vspeed") + vspeed)
	GM.vsetb(v_wows, "speed", GM.vb(v_wows, "speed") - (GM.f_random(1.0)))
	if ((hspeed > 0.0)):
		GM.vset(v_wows, "v_image_single", 0.0)
	else:
		GM.vset(v_wows, "v_image_single", 1.0)
	v_woot = (GM.f_instance_create(x, y, 711.0))
	if ((absf(v_persond - 1.0) < 0.00001)):
		GM.vsetb(v_woot, "sprite_index", 504.0)
	if ((absf(v_persond - 6.0) < 0.00001)):
		GM.vsetb(v_woot, "sprite_index", 683.0)
	if ((absf(v_persond - 7.0) < 0.00001)):
		GM.vsetb(v_woot, "sprite_index", 688.0)
	if ((absf(v_persond - 8.0) < 0.00001)):
		GM.vsetb(v_woot, "sprite_index", 692.0)
	GM.vset(v_woot, "v_persond", v_persond)
	GM.vsetb(v_woot, "vspeed", vspeed)
	GM.vsetb(v_woot, "hspeed", hspeed)
	if ((absf(v_onfire - 1.0) < 0.00001)):
		GM.vset(v_woot, "v_onfire", 1.0)
	if ((absf(v_onelectric - 1.0) < 0.00001)):
		GM.vset(v_woot, "v_onelectric", 1.0)
	for _w433 in GM.with_list((v_woot), self):
		if _w433._dead:
			continue
		_w433.other = self
		GM.vset(_w433, "v_mypower", (-1.0))
		_w433.ev_user(0.0)
		_w433.ev_user(1.0)
	(GM.f_instance_destroy(self))
	return
func ev_draw():
	if ((absf(v_persond - 1.0) < 0.00001)):
		if ((hspeed > 0.0)):
			(GM.f_draw_sprite(776.0, (hspeed / 2.0), x, y))
		else:
			(GM.f_draw_sprite(779.0, ((-hspeed) / 2.0), x, y))
	if ((absf(v_persond - 6.0) < 0.00001)):
		if ((hspeed > 0.0)):
			(GM.f_draw_sprite(780.0, (hspeed / 2.0), x, y))
		else:
			(GM.f_draw_sprite(781.0, ((-hspeed) / 2.0), x, y))
	if ((absf(v_persond - 7.0) < 0.00001)):
		if ((hspeed > 0.0)):
			(GM.f_draw_sprite(782.0, (hspeed / 2.0), x, y))
		else:
			(GM.f_draw_sprite(783.0, ((-hspeed) / 2.0), x, y))
	if ((absf(v_persond - 8.0) < 0.00001)):
		if ((hspeed > 0.0)):
			(GM.f_draw_sprite(784.0, (hspeed / 2.0), x, y))
		else:
			(GM.f_draw_sprite(785.0, ((-hspeed) / 2.0), x, y))
