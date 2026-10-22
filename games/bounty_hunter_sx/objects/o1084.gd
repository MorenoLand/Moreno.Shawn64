extends "res://games/bounty_hunter_sx/scripts.gd"
var v_image_single = 0.0
var v_my_direction = 0.0
var v_my_missiles = 0.0
var v_myhealth = 0.0
var v_myhealths = 0.0
var v_mysheild = 0.0
var v_shoot = 0.0
func ev_create():
	v_my_missiles = 5.0
	v_my_direction = 0.0
	v_shoot = 1.0
	if ((absf(speed - 0.0) < 0.00001)):
		direction = (GM.f_random(360.0))
		speed = (5.0 + (GM.f_random(10.0)))
	if ((((GM.f_random(3.0)) < 1.0))):
		v_myhealth = 100.0
		v_mysheild = 3.0
		v_myhealths = 100.0
	else:
		if ((((GM.f_random(2.0)) < 1.0))):
			v_myhealth = 80.0
			v_mysheild = 2.0
			v_myhealths = 80.0
		else:
			v_myhealth = 60.0
			v_mysheild = 1.0
			v_myhealths = 60.0
func ev_step():
	if (((absf((GM.f_instance_number(1232.0)) - 0.0) < 0.00001))):
		if ((((GM.f_distance_to_object(self, 482.0)) < 400.0))):
			if (((absf((GM.f_instance_number(1085.0)) - 0.0) < 0.00001))):
				if ((((GM.f_random(25.0)) < 1.0))):
					if (((absf((GM.f_instance_number(1210.0)) - 0.0) < 0.00001))):
						(GM.f_instance_change(self, 1085.0, 0.0))
func ev_col_1219():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_1087():
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(GM.room_height))
func ev_col_489():
	(GM.f_instance_change(self, 1085.0, 0.0))
func ev_other_1():
	(self.script_outside_bounce(0.0, 0.0, 0.0, 0.0, 0.0))
	v_image_single = (direction / 11.25)
func ev_draw():
	(GM.f_draw_sprite(1066.0, (direction / 11.25), (x + 0.0), (y + 0.0)))
	(GM.f_draw_sprite(1087.0, (-1.0), (((x / 66.6) + GM.view_xview[0]) + 874.0), (((y / 66.6) + GM.view_yview[0]) + 618.0)))
