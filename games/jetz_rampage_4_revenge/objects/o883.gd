extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_onelectric = 0.0
var v_onfire = 0.0
var v_persond = 0.0
var v_sett = 0.0
var v_wow = 0.0
func ev_create():
	v_wow = (GM.f_floor((GM.f_random(3.999))))
	if (GM.eq(v_wow, 0.0)):
		v_persond = 2.0
		sprite_index = 910.0
	if (GM.eq(v_wow, 1.0)):
		v_persond = 3.0
		sprite_index = 911.0
	if (GM.eq(v_wow, 2.0)):
		v_persond = 4.0
		sprite_index = 912.0
	if (GM.eq(v_wow, 3.0)):
		v_persond = 9.0
		sprite_index = 909.0
	alarm[int(0.0)] = (1.0 + (GM.f_random(150.0)))
	v_onfire = 0.0
	v_onelectric = 0.0
func ev_alarm_0():
	depth = (-6.0)
	v_sett = (GM.f_instance_create(x, y, 643.0))
	GM.vset(v_sett, "v_spurt", 0.0)
	GM.vsetb(v_sett, "image_single", 0.0)
	if ((absf(v_onfire - 1.0) < 0.00001)):
		GM.vset(v_sett, "v_onfire", 1.0)
	else:
		GM.vset(v_sett, "v_onfire", 0.0)
	if ((absf(v_onelectric - 1.0) < 0.00001)):
		GM.vset(v_sett, "v_onelectric", 1.0)
	else:
		GM.vset(v_sett, "v_onelectric", 0.0)
	GM.vsetb(v_sett, "vspeed", GM.vb(v_sett, "vspeed") + vspeed)
	GM.vset(v_sett, "v_grrr", "203020230")
	GM.vsetb(v_sett, "depth", depth)
	if ((absf(v_persond - 2.0) < 0.00001)):
		GM.vsetb(v_sett, "sprite_index", 963.0)
	if ((absf(v_persond - 3.0) < 0.00001)):
		GM.vsetb(v_sett, "sprite_index", 964.0)
	if ((absf(v_persond - 4.0) < 0.00001)):
		GM.vsetb(v_sett, "sprite_index", 965.0)
	if ((absf(v_persond - 9.0) < 0.00001)):
		GM.vsetb(v_sett, "sprite_index", 966.0)
	v_sett = (GM.f_instance_create((x + 13.0), (y + 20.0), 644.0))
	GM.vsetb(v_sett, "depth", (depth + 1.0))
	GM.vset(v_sett, "v_grrr", "203020230")
	GM.vsetb(v_sett, "vspeed", (vspeed - 1.0))
	if ((absf(v_persond - 2.0) < 0.00001)):
		GM.vsetb(v_sett, "sprite_index", 640.0)
	if ((absf(v_persond - 3.0) < 0.00001)):
		GM.vsetb(v_sett, "sprite_index", 656.0)
	if ((absf(v_persond - 4.0) < 0.00001)):
		GM.vsetb(v_sett, "sprite_index", 662.0)
	if ((absf(v_persond - 9.0) < 0.00001)):
		GM.vsetb(v_sett, "sprite_index", 701.0)
	v_sett = (GM.f_instance_create((x + 4.0), (y + 15.0), 645.0))
	GM.vsetb(v_sett, "hspeed", GM.vb(v_sett, "hspeed") + hspeed)
	GM.vsetb(v_sett, "vspeed", GM.vb(v_sett, "vspeed") + vspeed)
	GM.vset(v_sett, "v_grrr", "203020230")
	GM.vsetb(v_sett, "depth", (depth + 2.0))
	GM.vsetb(v_sett, "image_single", 0.0)
	v_sett = (GM.f_instance_create((x + 25.0), (y + 15.0), 645.0))
	GM.vsetb(v_sett, "hspeed", GM.vb(v_sett, "hspeed") + hspeed)
	GM.vsetb(v_sett, "vspeed", GM.vb(v_sett, "vspeed") + (vspeed - 1.0))
	GM.vsetb(v_sett, "depth", (depth + 2.0))
	GM.vset(v_sett, "v_grrr", "203020230")
	GM.vsetb(v_sett, "image_single", 1.0)
	v_sett = (GM.f_instance_create((x + 4.0), (y + 33.0), 646.0))
	GM.vsetb(v_sett, "hspeed", GM.vb(v_sett, "hspeed") + hspeed)
	GM.vsetb(v_sett, "vspeed", GM.vb(v_sett, "vspeed") + (vspeed - 1.0))
	GM.vsetb(v_sett, "image_single", 0.0)
	GM.vset(v_sett, "v_grrr", "203020230")
	GM.vsetb(v_sett, "depth", (depth + 2.0))
	v_sett = (GM.f_instance_create((x + 25.0), (y + 33.0), 646.0))
	GM.vsetb(v_sett, "hspeed", GM.vb(v_sett, "hspeed") + hspeed)
	GM.vsetb(v_sett, "vspeed", GM.vb(v_sett, "vspeed") + vspeed)
	GM.vsetb(v_sett, "image_single", 1.0)
	GM.vset(v_sett, "v_grrr", "203020230")
	GM.vsetb(v_sett, "depth", (depth + 2.0))
	(GM.f_instance_destroy(self))
func ev_step():
	if ((((GM.f_random(25.0)) < 1.0))):
		(self.script_personscream())
