extends "res://games/street_bike_fury/scripts.gd"
var v_wee = 0.0
func ev_create():
	v_wee = (GM.f_instance_create(x, y, 157.0))
	GM.vset(v_wee, "v_maketext", "Click Here - Shotgun (45 Credits)")
	v_wee = (GM.f_instance_create(x, (y + 20.0), 157.0))
	GM.vset(v_wee, "v_maketext", "Click Here - Bazooka (45 Credits)")
	v_wee = (GM.f_instance_create(x, (y + 40.0), 157.0))
	GM.vset(v_wee, "v_maketext", "Click Here - Weapon 3 (45 Credits)")
	v_wee = (GM.f_instance_create(x, (y + 60.0), 157.0))
	GM.vset(v_wee, "v_maketext", "Click Here - Weapon 4 (45 Credits)")
	v_wee = (GM.f_instance_create(x, (y + 80.0), 157.0))
	GM.vset(v_wee, "v_maketext", "Click Here - Weapon 5 (45 Credits)")
	v_wee = (GM.f_instance_create(x, (y + 100.0), 157.0))
	GM.vset(v_wee, "v_maketext", "Click Here - Hold 2 Turbos (25 Credits)")
	v_wee = (GM.f_instance_create(x, (y + 140.0), 157.0))
	GM.vset(v_wee, "v_maketext", "Click Here - Hold 3 Turbos (45 Credits)")
	v_wee = (GM.f_instance_create(x, (y + 160.0), 157.0))
	GM.vset(v_wee, "v_maketext", "Click Here - Turbo Upgrade (45 Credits)")
	v_wee = (GM.f_instance_create(x, (y + 180.0), 157.0))
	GM.vset(v_wee, "v_maketext", "Click Here - Armor Upgrade (45 Credits)")
func ev_draw():
	(GM.f_draw_sprite(31.0, 0.0, GM.mouse_x, GM.mouse_y))
func ev_keypress_27():
	(GM.f_room_goto(15.0))
