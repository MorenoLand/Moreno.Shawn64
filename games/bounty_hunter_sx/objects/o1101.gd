extends "res://games/bounty_hunter_sx/scripts.gd"
var v_image_single = 0.0
var v_my_direction = 0.0
var v_shoot = 0.0
func ev_create():
	v_my_direction = 0.0
	v_shoot = 1.0
	v_image_single = (direction / 11.25)
	if ((absf(speed - 0.0) < 0.00001)):
		direction = (GM.f_random(360.0))
		speed = (5.0 + (GM.f_random(10.0)))
	GM.G["music"] = 1.0
func ev_alarm_0():
	v_shoot = 1.0
func ev_step():
	for _r104 in range(int((5.0))):
		(GM.f_instance_create((x + 25.0), (y + 25.0), 1102.0))
	v_my_direction = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.mouse_x, GM.mouse_y))
	(GM.f_motion_add(self, v_my_direction, 0.5))
	speed = (GM.f_min(speed, 10.0))
	v_image_single = (GM.f_floor(((fmod(((v_my_direction + 5.625)), 360.0)) / 11.25)))
func ev_other_1():
	(self.script_outside_bounce(0.0, 0.0, 0.0, 0.0, 0.0))
