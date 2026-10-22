extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	for _r246 in range(int((5.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 618.0))
	(self.script_adddamage())
