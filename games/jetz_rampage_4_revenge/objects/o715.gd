extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_electric = 0.0
var v_weezing = 0.0
var v_woot = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
func ev_create():
	(GM.f_sound_play(147.0))
	image_speed = 0.4
func ev_alarm_0():
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 722.0))
	(GM.f_instance_create(x, y, 498.0))
	for _r409 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	for _r410 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	for _r411 in range(int((6.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 717.0))
	if not (((absf(sprite_index - 738.0) < 0.00001))):
		v_weezing = (GM.f_instance_create(x, y, 721.0))
		if (((absf(sprite_index - 731.0) < 0.00001) or (absf(sprite_index - 735.0) < 0.00001))):
			GM.vsetb(v_weezing, "sprite_index", 736.0)
		if (((absf(sprite_index - 754.0) < 0.00001) or (absf(sprite_index - 755.0) < 0.00001))):
			GM.vsetb(v_weezing, "sprite_index", 759.0)
		if (((absf(sprite_index - 761.0) < 0.00001) or (absf(sprite_index - 762.0) < 0.00001))):
			GM.vsetb(v_weezing, "sprite_index", 760.0)
		if (((absf(sprite_index - 763.0) < 0.00001) or (absf(sprite_index - 775.0) < 0.00001))):
			GM.vsetb(v_weezing, "sprite_index", 772.0)
		if (((absf(sprite_index - 961.0) < 0.00001) or (absf(sprite_index - 962.0) < 0.00001))):
			GM.vsetb(v_weezing, "sprite_index", 946.0)
		if (((absf(sprite_index - 800.0) < 0.00001) or (absf(sprite_index - 801.0) < 0.00001))):
			GM.vsetb(v_weezing, "sprite_index", 809.0)
		GM.vsetb(v_weezing, "depth", depth)
	(GM.f_instance_create(x, y, 497.0))
	(GM.f_instance_destroy(self))
func ev_step():
	if ((absf(v_electric - 1.0) < 0.00001)):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 618.0))
	if ((absf(v_electric - 2.0) < 0.00001)):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 734.0))
	if ((absf(v_electric - 3.0) < 0.00001)):
		v_woot = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 490.0))
		v_woot2 = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 735.0))
		v_woot3 = (GM.f_instance_create(((x + (sprite_width / 2.0)) - 1.0), ((y + (sprite_height / 2.0)) - 10.0), 736.0))
		GM.vsetb(v_woot, "hspeed", GM.vb(v_woot, "hspeed") + hspeed)
		GM.vsetb(v_woot, "vspeed", GM.vb(v_woot, "vspeed") + vspeed)
		GM.vsetb(v_woot2, "hspeed", GM.vb(v_woot2, "hspeed") + hspeed)
		GM.vsetb(v_woot2, "vspeed", GM.vb(v_woot2, "vspeed") + vspeed)
		GM.vsetb(v_woot3, "hspeed", GM.vb(v_woot3, "hspeed") + hspeed)
		GM.vsetb(v_woot3, "vspeed", GM.vb(v_woot3, "vspeed") + vspeed)
	if ((absf(v_electric - 4.0) < 0.00001)):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 488.0))
func ev_col_603():
	vspeed = 0.0
