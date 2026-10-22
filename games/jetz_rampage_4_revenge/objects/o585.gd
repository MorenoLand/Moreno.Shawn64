extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_fluh = 0.0
var v_weezzz = 0.0
var v_wowzz = 0.0
func ev_col_656():
	for _r183 in range(int((25.0))):
		v_wowzz = (GM.f_instance_create(((x + (sprite_width / 2.0)) - 2.5), ((y + (sprite_height / 2.0)) - 2.5), 599.0))
		GM.vsetb(v_wowzz, "direction", (GM.f_random(360.0)))
	v_weezzz = (GM.f_instance_create(x, (y - 8.0), 614.0))
	v_fluh = GM.vget(self.other, "v_wooper")
	GM.vsetb(v_weezzz, "direction", ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0))
	GM.vsetb(v_weezzz, "speed", GM.vb(v_weezzz, "speed") + (3.0 + (GM.f_random(3.0))))
	(GM.f_instance_destroy(self))
	(GM.f_sound_play(135.0))
func ev_col_502():
	for _r184 in range(int((25.0))):
		v_wowzz = (GM.f_instance_create(((x + (sprite_width / 2.0)) - 2.5), ((y + (sprite_height / 2.0)) - 2.5), 599.0))
		GM.vsetb(v_wowzz, "direction", (GM.f_random(360.0)))
	v_weezzz = (GM.f_instance_create(x, (y - 8.0), 614.0))
	if ((GM.vb(self.other, "hspeed") > 0.0)):
		GM.vsetb(v_weezzz, "direction", (20.0 + (GM.f_random(40.0))))
	if ((GM.vb(self.other, "hspeed") < 0.0)):
		GM.vsetb(v_weezzz, "direction", (160.0 - (GM.f_random(40.0))))
	(GM.f_instance_destroy(self))
	(GM.f_sound_play(135.0))
	for _w185 in GM.with_list((self.other), self):
		if _w185._dead:
			continue
		_w185.other = self
		(GM.f_instance_destroy(_w185))
func ev_col_491():
	for _r186 in range(int((25.0))):
		v_wowzz = (GM.f_instance_create(((x + (sprite_width / 2.0)) - 2.5), ((y + (sprite_height / 2.0)) - 2.5), 599.0))
		GM.vsetb(v_wowzz, "direction", (GM.f_random(360.0)))
	v_weezzz = (GM.f_instance_create(x, (y - 8.0), 614.0))
	if ((GM.vb(self.other, "hspeed") > 0.0)):
		GM.vsetb(v_weezzz, "direction", (20.0 + (GM.f_random(40.0))))
	if ((GM.vb(self.other, "hspeed") < 0.0)):
		GM.vsetb(v_weezzz, "direction", (160.0 - (GM.f_random(40.0))))
	(GM.f_instance_destroy(self))
	(GM.f_sound_play(135.0))
	for _w187 in GM.with_list((self.other), self):
		if _w187._dead:
			continue
		_w187.other = self
		(GM.f_instance_destroy(_w187))
