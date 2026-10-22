extends "res://games/street_bike_fury/scripts.gd"
var v_set = 0.0
func ev_create():
	for _r68 in range(int((200.0))):
		v_set = (GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 30.0) + (GM.f_random(110.0))), 72.0))
		GM.vsetb(v_set, "direction", (GM.f_random(360.0)))
		GM.vsetb(v_set, "speed", (1.0 + (GM.f_random(13.0))))
	for _r69 in range(int((10.0))):
		v_set = (GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 30.0) + (GM.f_random(110.0))), 249.0))
	(GM.f_instance_create(x, y, 138.0))
	for _r70 in range(int((15.0))):
		(GM.f_effect_create_above(4.0, (x + (GM.f_random(sprite_width))), ((y + 30.0) + (GM.f_random(110.0))), 2.0, 8421504.0))
