extends "res://games/jetz_rampage_4_revenge/objects/o506.gd"
func ev_create():
	if (((absf(y - 980.0) < 0.00001) and (absf(GM.room - 1.0) < 0.00001))):
		sprite_index = 641.0
	v_hitme = 1.0
	v_image_single = 0.0
	depth = depth + (((0.99 * y)) / 1200.0)
