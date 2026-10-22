extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_persond = 0.0
var v_wee = 0.0
var v_wee2 = 0.0
func ev_create():
	hspeed = 0.5
	while true:
		x = x - ((GM.f_random(10.0)) + 30.0)
		if ((absf((GM.f_place_meeting(self, x, y, 581.0)) - 0.0) < 0.00001)):
			break
	image_speed = (0.1 + (GM.f_random(0.1)))
	v_persond = (GM.f_round((GM.f_random(12.0))))
	if ((absf(v_persond - 0.0) < 0.00001)):
		sprite_index = 504.0
	if ((absf(v_persond - 1.0) < 0.00001)):
		sprite_index = 627.0
	if ((absf(v_persond - 2.0) < 0.00001)):
		sprite_index = 636.0
	if ((absf(v_persond - 3.0) < 0.00001)):
		sprite_index = 654.0
	if ((absf(v_persond - 4.0) < 0.00001)):
		sprite_index = 659.0
	if ((absf(v_persond - 5.0) < 0.00001)):
		sprite_index = 717.0
	if ((absf(v_persond - 6.0) < 0.00001)):
		sprite_index = 683.0
	if ((absf(v_persond - 7.0) < 0.00001)):
		sprite_index = 688.0
	if ((absf(v_persond - 8.0) < 0.00001)):
		sprite_index = 692.0
	if ((absf(v_persond - 9.0) < 0.00001)):
		sprite_index = 697.0
	if ((absf(v_persond - 10.0) < 0.00001)):
		sprite_index = 702.0
	if ((absf(v_persond - 11.0) < 0.00001)):
		sprite_index = 707.0
	if ((absf(v_persond - 12.0) < 0.00001)):
		sprite_index = 712.0
func ev_col_772():
	v_wee = (GM.f_instance_create(x, 1080.0, 689.0))
	GM.vsetb(v_wee, "sprite_index", sprite_index)
	GM.vset(v_wee, "v_persond", v_persond)
	(GM.f_instance_destroy(self))
func ev_col_753():
	if ((((GM.f_random(20.0)) < 1.0))):
		if ((x > (GM.vb(self.other, "x") - 10.0))):
			GM.vset(606.0, "v_image_single", 1.0)
			GM.vb(606.0, "alarm")[int(0.0)] = 3.0
			(GM.f_instance_destroy(self))
			if (((GM.vb(self.other, "x") + (GM.vb(self.other, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
				v_wee2 = (GM.f_instance_create(GM.vb(self.other, "x"), y, 709.0))
			else:
				v_wee2 = (GM.f_instance_create((GM.vb(self.other, "x") + 40.0), y, 709.0))
			GM.vsetb(v_wee2, "depth", depth)
			GM.vsetb(v_wee2, "sprite_index", sprite_index)
func ev_col_545():
	v_wee = (GM.f_instance_create(x, 1080.0, 689.0))
	GM.vsetb(v_wee, "sprite_index", sprite_index)
	GM.vset(v_wee, "v_persond", v_persond)
	(GM.f_instance_destroy(self))
func ev_col_502():
	v_wee = (GM.f_instance_create(x, 1080.0, 689.0))
	GM.vsetb(v_wee, "sprite_index", sprite_index)
	GM.vset(v_wee, "v_persond", v_persond)
	(GM.f_instance_destroy(self))
func ev_col_491():
	v_wee = (GM.f_instance_create(x, 1080.0, 689.0))
	GM.vsetb(v_wee, "sprite_index", sprite_index)
	GM.vset(v_wee, "v_persond", v_persond)
	(GM.f_instance_destroy(self))
