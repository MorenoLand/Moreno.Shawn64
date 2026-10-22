extends "res://games/jetzfusion/scripts.gd"
var v_attack = 0.0
var v_mypower = 0.0
var v_poom = 0.0
var v_walkright = 0.0
func ev_create():
	(GM.f_instance_create(x, 0.0, 114.0))
	if (((absf((GM.f_instance_number(7.0)) - 0.0) < 0.00001))):
		v_poom = (GM.f_round((GM.f_random(1.0))))
		if ((absf(v_poom - 0.0) < 0.00001)):
			v_walkright = 0.0
			(GM.f_motion_add(self, 180.0, (3.0 + (GM.f_random(2.0)))))
		if ((absf(v_poom - 1.0) < 0.00001)):
			v_walkright = 1.0
			(GM.f_motion_add(self, 0.0, (3.0 + (GM.f_random(2.0)))))
	else:
		if ((GM.vb(7.0, "x") < x)):
			v_walkright = 0.0
			(GM.f_motion_add(self, 180.0, (3.0 + (GM.f_random(2.0)))))
		if ((GM.vb(7.0, "x") > x)):
			v_walkright = 1.0
			(GM.f_motion_add(self, 0.0, (3.0 + (GM.f_random(2.0)))))
	v_mypower = 6.0
	v_attack = 0.0
	image_speed = 0.5
func ev_step():
	if (((absf((GM.f_instance_number(7.0)) - 1.0) < 0.00001))):
		if (((GM.G["damage"] > 37.5))):
			if (((GM.G["saylevel"] > 0.0))):
				if (((x < (GM.vb(7.0, "x") + 300.0)))):
					if (((x > (GM.vb(7.0, "x") - 300.0)))):
						if (((absf(v_attack - 0.0) < 0.00001))):
							(GM.f_action_move(self, "000010000", 0.0, 0.0))
							v_attack = 1.0
	if (((absf(v_attack - 1.0) < 0.00001))):
		if ((GM.vb(7.0, "x") < x)):
			v_walkright = 0.0
		if ((GM.vb(7.0, "x") > x)):
			v_walkright = 1.0
		if ((((GM.f_random(25.0)) < 1.0))):
			if ((((GM.f_instance_number(54.0)) < 2.0))):
				(GM.f_instance_create((x + 10.0), (y + 30.0), 54.0))
		if (((x < (GM.vb(7.0, "x") - 320.0)))):
			if ((GM.vb(7.0, "x") < x)):
				v_walkright = 0.0
				(GM.f_motion_add(self, 180.0, (3.0 + (GM.f_random(2.0)))))
			if ((GM.vb(7.0, "x") > x)):
				v_walkright = 1.0
				(GM.f_motion_add(self, 0.0, (3.0 + (GM.f_random(2.0)))))
			v_attack = 0.0
		if (((x > (GM.vb(7.0, "x") + 320.0)))):
			if ((GM.vb(7.0, "x") < x)):
				v_walkright = 0.0
				(GM.f_motion_add(self, 180.0, (3.0 + (GM.f_random(2.0)))))
			if ((GM.vb(7.0, "x") > x)):
				v_walkright = 1.0
				(GM.f_motion_add(self, 0.0, (3.0 + (GM.f_random(2.0)))))
			v_attack = 0.0
func ev_col_166():
	(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
	v_attack = 1.0
	v_mypower = v_mypower + (-0.2)
	(GM.f_sound_play(28.0))
	if (((v_mypower < 1.0))):
		if (((absf(v_walkright - 1.0) < 0.00001))):
			(GM.f_instance_create((x + 0.0), (y + 0.0), 126.0))
		else:
			(GM.f_instance_create((x + 0.0), (y + 0.0), 124.0))
		(GM.f_instance_destroy(self))
func ev_col_53():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
	v_attack = 1.0
	v_mypower = v_mypower + (-1.0)
	(GM.f_sound_play(34.0))
	if (((v_mypower < 1.0))):
		if (((absf(v_walkright - 1.0) < 0.00001))):
			(GM.f_instance_create((x + 0.0), (y + 0.0), 126.0))
		else:
			(GM.f_instance_create((x + 0.0), (y + 0.0), 124.0))
		(GM.f_instance_destroy(self))
func ev_col_14():
	if (((absf(v_walkright - 1.0) < 0.00001))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 126.0))
	else:
		(GM.f_instance_create((x + 0.0), (y + 0.0), 124.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(self.script_Outside_Wrap(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	if ((absf(v_attack - 1.0) < 0.00001)):
		if ((GM.vb(7.0, "x") > x)):
			(GM.f_draw_sprite(169.0, ((GM.f_point_direction((x + 20.0), (y + 20.0), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)))) / 10.0), x, y))
			(GM.f_draw_sprite(171.0, 1.0, x, y))
			(GM.f_draw_sprite(165.0, ((GM.f_point_direction((x + 20.0), (y + 30.0), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)))) / 10.0), (x - 2.0), (y + 18.0)))
		else:
			(GM.f_draw_sprite(170.0, ((GM.f_point_direction((x + 20.0), (y + 20.0), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)))) / 10.0), x, y))
			(GM.f_draw_sprite(172.0, 1.0, x, y))
			(GM.f_draw_sprite(166.0, ((GM.f_point_direction((x + 20.0), (y + 30.0), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)))) / 10.0), (x - 2.0), (y + 18.0)))
	else:
		if ((absf(v_walkright - 1.0) < 0.00001)):
			(GM.f_draw_sprite(163.0, (-1.0), x, y))
		else:
			(GM.f_draw_sprite(164.0, (-1.0), x, y))
