extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_mypower = 0.0
var v_woot = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
var v_wow = 0.0
var v_wowza = 0.0
func ev_create():
	if ((absf((GM.f_instance_number(746.0)) - 0.0) < 0.00001)):
		(GM.f_instance_create((GM.vb(7.0, "x") + 4.0), (GM.vb(7.0, "y") + 4.0), 746.0))
	v_mypower = 5.0
func ev_destroy():
	if ((absf((GM.f_instance_number(741.0)) - 1.0) < 0.00001)):
		for _w429 in GM.with_list((746.0), self):
			if _w429._dead:
				continue
			_w429.other = self
			(GM.f_instance_destroy(_w429))
func ev_step():
	v_wow = (GM.f_floor((GM.f_random(100.999))))
	if (GM.eq(v_wow, 0.0)):
		if ((absf((GM.f_instance_number(747.0)) - 0.0) < 0.00001)):
			(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 743.0))
			(GM.f_sound_play(206.0))
			(GM.f_instance_create(x, y, 497.0))
			GM.vsetb(746.0, "visible", 0.0)
			for _w430 in GM.with_list((746.0), self):
				if _w430._dead:
					continue
				_w430.other = self
				GM.vset(_w430, "v_weehoo", (GM.f_instance_create(_w430.x, _w430.y, 747.0)))
				GM.vsetb(GM.vget(_w430, "v_weehoo"), "vspeed", GM.vb(GM.vget(_w430, "v_weehoo"), "vspeed") + GM.vb(7.0, "vspeed"))
				GM.vsetb(GM.vget(_w430, "v_weehoo"), "hspeed", GM.vb(GM.vget(_w430, "v_weehoo"), "hspeed") + GM.vb(7.0, "hspeed"))
func ev_col_656():
	(GM.f_sound_play(198.0))
	v_mypower = v_mypower - 1.0
	if ((v_mypower < 0.0)):
		v_wowza = (GM.f_instance_create(x, y, 715.0))
		if (((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
			GM.vsetb(v_wowza, "sprite_index", 763.0)
		else:
			GM.vsetb(v_wowza, "sprite_index", 775.0)
		GM.vsetb(v_wowza, "hspeed", hspeed)
		GM.vset(v_wowza, "v_electric", 1.0)
		GM.vsetb(v_wowza, "vspeed", vspeed)
		GM.vsetb(v_wowza, "depth", depth)
		GM.vb(v_wowza, "alarm")[int(0.0)] = 15.0
		self.ev_user(0.0)
		(GM.f_instance_destroy(self))
func ev_col_502():
	(GM.f_sound_play(198.0))
	v_mypower = v_mypower - 1.0
	if ((v_mypower < 0.0)):
		v_wowza = (GM.f_instance_create(x, y, 715.0))
		if (((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
			GM.vsetb(v_wowza, "sprite_index", 763.0)
		else:
			GM.vsetb(v_wowza, "sprite_index", 775.0)
		GM.vsetb(v_wowza, "hspeed", hspeed)
		GM.vset(v_wowza, "v_electric", 1.0)
		GM.vsetb(v_wowza, "vspeed", vspeed)
		GM.vsetb(v_wowza, "depth", depth)
		GM.vb(v_wowza, "alarm")[int(0.0)] = 15.0
		self.ev_user(0.0)
		(GM.f_instance_destroy(self))
func ev_col_491():
	v_woot = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 490.0))
	v_woot2 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 905.0))
	v_woot3 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 906.0))
	GM.vsetb(v_woot, "depth", depth)
	GM.vsetb(v_woot2, "depth", depth)
	GM.vsetb(v_woot3, "depth", depth)
	v_mypower = v_mypower - 0.05
	if ((v_mypower < 0.0)):
		v_wowza = (GM.f_instance_create(x, y, 715.0))
		if (((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
			GM.vsetb(v_wowza, "sprite_index", 763.0)
		else:
			GM.vsetb(v_wowza, "sprite_index", 775.0)
		GM.vsetb(v_wowza, "hspeed", hspeed)
		GM.vset(v_wowza, "v_electric", 1.0)
		GM.vsetb(v_wowza, "vspeed", vspeed)
		GM.vsetb(v_wowza, "depth", depth)
		GM.vb(v_wowza, "alarm")[int(0.0)] = 15.0
		self.ev_user(0.0)
		(GM.f_instance_destroy(self))
func ev_other_15():
	(self.script_copdestroy())
func ev_other_10():
	GM.G["silver"] = GM.G["silver"] - 1.0
func ev_draw():
	if (((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
		(GM.f_draw_sprite(773.0, (-1.0), x, y))
	else:
		(GM.f_draw_sprite(764.0, (-1.0), x, y))
	(GM.f_draw_sprite(766.0, ((((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_width") / 2.0)))) + 90.0)) / 10.0), (x + 20.0), (y + 40.0)))
