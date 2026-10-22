extends "res://games/street_bike_fury/objects/o89.gd"
func ev_create():
	hspeed = GM.vb(0.0, "hspeed")
	v_die = 0.0
	v_rot1 = 0.0
	v_rot2 = 0.0
	v_dir = 0.0
	gravity = 0.2
	gravity_direction = 270.0
	v_rotate = 0.0
	v_shocks = 0.0
	v_go = 0.0
	v_rate = 0.0
	v_wheelspeed = 0.0
	v_maxspeed = 25.0
	v_mypower = 10.0
func ev_step():
	if ((hspeed > 1.0)):
		hspeed = hspeed - 0.05
	else:
		hspeed = 0.0
	image_angle = image_angle - hspeed
func ev_col_0():
	self.ev_user(9.0)
func ev_other_19():
	(GM.f_sound_play(77.0))
	for _r154 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 93.0))
	if ((absf(GM.vget(18.0, "v_hasweapon2") - 0.0) < 0.00001)):
		GM.vset(18.0, "v_hasweapon2", 1.0)
		(self.script_addmessage("SHOTGUN POWERUP", 32768.0, 3.0))
	else:
		if ((absf(GM.vget(18.0, "v_hasweapon3") - 0.0) < 0.00001)):
			GM.vset(18.0, "v_hasweapon3", 1.0)
			(self.script_addmessage("SHOCK GUN POWERUP", 32768.0, 3.0))
		else:
			if ((absf(GM.vget(18.0, "v_hasweapon4") - 0.0) < 0.00001)):
				GM.vset(18.0, "v_hasweapon4", 1.0)
				(self.script_addmessage("BAZOOKA POWERUP", 32768.0, 3.0))
	(GM.f_sound_play(43.0))
	(GM.f_instance_destroy(self))
func ev_other_12():
	pass
func ev_draw():
	(GM.f_texture_set_interpolation(1.0))
	(GM.f_draw_sprite_ext(195.0, 0.0, x, y, 1.0, 1.0, image_angle, 16777215.0, 1.0))
	(GM.f_texture_set_interpolation(0.0))
