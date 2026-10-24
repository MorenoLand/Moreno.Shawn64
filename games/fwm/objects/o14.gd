extends "res://games/fwm/scripts.gd"
var v_particalcolor = 0.0
var v_particalcolor2 = 0.0
var v_particalcolor3 = 0.0
var v_wow = 0.0
func ev_create():
	image_speed = GM.vget(1.0, "v_particaltime")
	gravity_direction = 270.0
	gravity = GM.vget(1.0, "v_particalgravity")
	v_wow = 0.0
	if ((((GM.f_random(3.0)) < 1.0))):
		if (((absf(v_particalcolor - 4.0) < 0.00001))):
			if ((((GM.f_random(3.0)) < 1.0))):
				sprite_index = 25.0
				image_speed = 1.0
			else:
				if ((((GM.f_random(2.0)) < 1.0))):
					sprite_index = 26.0
					image_speed = 1.0
				else:
					sprite_index = 27.0
					image_speed = 1.0
		if (((absf(v_particalcolor - 3.0) < 0.00001))):
			if ((((GM.f_random(3.0)) < 1.0))):
				sprite_index = 22.0
				image_speed = 1.0
			else:
				if ((((GM.f_random(2.0)) < 1.0))):
					sprite_index = 23.0
					image_speed = 1.0
				else:
					sprite_index = 24.0
					image_speed = 1.0
		if (((absf(v_particalcolor - 2.0) < 0.00001))):
			if ((((GM.f_random(3.0)) < 1.0))):
				sprite_index = 19.0
				image_speed = 1.0
			else:
				if ((((GM.f_random(2.0)) < 1.0))):
					sprite_index = 20.0
					image_speed = 1.0
				else:
					sprite_index = 21.0
					image_speed = 1.0
		if (((absf(v_particalcolor - 1.0) < 0.00001))):
			if ((((GM.f_random(3.0)) < 1.0))):
				sprite_index = 16.0
				image_speed = 1.0
			else:
				if ((((GM.f_random(2.0)) < 1.0))):
					sprite_index = 17.0
					image_speed = 1.0
				else:
					sprite_index = 18.0
					image_speed = 1.0
		if (((absf(v_particalcolor - 0.0) < 0.00001))):
			if ((((GM.f_random(3.0)) < 1.0))):
				sprite_index = 11.0
				image_speed = 1.0
			else:
				if ((((GM.f_random(2.0)) < 1.0))):
					sprite_index = 12.0
					image_speed = 1.0
				else:
					sprite_index = 13.0
					image_speed = 1.0
	else:
		if ((((GM.f_random(2.0)) < 1.0))):
			if (((absf(v_particalcolor2 - 4.0) < 0.00001))):
				if ((((GM.f_random(3.0)) < 1.0))):
					sprite_index = 25.0
					image_speed = 1.0
				else:
					if ((((GM.f_random(2.0)) < 1.0))):
						sprite_index = 26.0
						image_speed = 1.0
					else:
						sprite_index = 27.0
						image_speed = 1.0
			if (((absf(v_particalcolor2 - 3.0) < 0.00001))):
				if ((((GM.f_random(3.0)) < 1.0))):
					sprite_index = 22.0
					image_speed = 1.0
				else:
					if ((((GM.f_random(2.0)) < 1.0))):
						sprite_index = 23.0
						image_speed = 1.0
					else:
						sprite_index = 24.0
						image_speed = 1.0
			if (((absf(v_particalcolor2 - 2.0) < 0.00001))):
				if ((((GM.f_random(3.0)) < 1.0))):
					sprite_index = 19.0
					image_speed = 1.0
				else:
					if ((((GM.f_random(2.0)) < 1.0))):
						sprite_index = 20.0
						image_speed = 1.0
					else:
						sprite_index = 21.0
						image_speed = 1.0
			if (((absf(v_particalcolor2 - 1.0) < 0.00001))):
				if ((((GM.f_random(3.0)) < 1.0))):
					sprite_index = 16.0
					image_speed = 1.0
				else:
					if ((((GM.f_random(2.0)) < 1.0))):
						sprite_index = 17.0
						image_speed = 1.0
					else:
						sprite_index = 18.0
						image_speed = 1.0
			if (((absf(v_particalcolor2 - 0.0) < 0.00001))):
				if ((((GM.f_random(3.0)) < 1.0))):
					sprite_index = 11.0
					image_speed = 1.0
				else:
					if ((((GM.f_random(2.0)) < 1.0))):
						sprite_index = 12.0
						image_speed = 1.0
					else:
						sprite_index = 13.0
						image_speed = 1.0
		else:
			if (((absf(v_particalcolor3 - 4.0) < 0.00001))):
				if ((((GM.f_random(3.0)) < 1.0))):
					sprite_index = 25.0
					image_speed = 1.0
				else:
					if ((((GM.f_random(2.0)) < 1.0))):
						sprite_index = 26.0
						image_speed = 1.0
					else:
						sprite_index = 27.0
						image_speed = 1.0
			if (((absf(v_particalcolor3 - 3.0) < 0.00001))):
				if ((((GM.f_random(3.0)) < 1.0))):
					sprite_index = 22.0
					image_speed = 1.0
				else:
					if ((((GM.f_random(2.0)) < 1.0))):
						sprite_index = 23.0
						image_speed = 1.0
					else:
						sprite_index = 24.0
						image_speed = 1.0
			if (((absf(v_particalcolor3 - 2.0) < 0.00001))):
				if ((((GM.f_random(3.0)) < 1.0))):
					sprite_index = 19.0
					image_speed = 1.0
				else:
					if ((((GM.f_random(2.0)) < 1.0))):
						sprite_index = 20.0
						image_speed = 1.0
					else:
						sprite_index = 21.0
						image_speed = 1.0
			if (((absf(v_particalcolor3 - 1.0) < 0.00001))):
				if ((((GM.f_random(3.0)) < 1.0))):
					sprite_index = 16.0
					image_speed = 1.0
				else:
					if ((((GM.f_random(2.0)) < 1.0))):
						sprite_index = 17.0
						image_speed = 1.0
					else:
						sprite_index = 18.0
						image_speed = 1.0
			if (((absf(v_particalcolor3 - 0.0) < 0.00001))):
				if ((((GM.f_random(3.0)) < 1.0))):
					sprite_index = 11.0
					image_speed = 1.0
				else:
					if ((((GM.f_random(2.0)) < 1.0))):
						sprite_index = 12.0
						image_speed = 1.0
					else:
						sprite_index = 13.0
						image_speed = 1.0
	(GM.f_motion_set(self, (GM.f_random(360.0)), (GM.f_random(GM.vget(1.0, "v_particalspeed")))))
	(GM.f_motion_set(self, (GM.f_random(360.0)), (GM.f_random(GM.vget(1.0, "v_particalspeed")))))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_33():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_other_7():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
func ev_keypress_37():
	if (((absf(v_particalcolor - 4.0) < 0.00001))):
		if ((((GM.f_random(3.0)) < 1.0))):
			sprite_index = 25.0
			image_speed = 1.0
		else:
			if ((((GM.f_random(2.0)) < 1.0))):
				sprite_index = 26.0
				image_speed = 1.0
			else:
				sprite_index = 27.0
				image_speed = 1.0
	if (((absf(v_particalcolor - 3.0) < 0.00001))):
		if ((((GM.f_random(3.0)) < 1.0))):
			sprite_index = 22.0
			image_speed = 1.0
		else:
			if ((((GM.f_random(2.0)) < 1.0))):
				sprite_index = 23.0
				image_speed = 1.0
			else:
				sprite_index = 24.0
				image_speed = 1.0
	if (((absf(v_particalcolor - 2.0) < 0.00001))):
		if ((((GM.f_random(3.0)) < 1.0))):
			sprite_index = 19.0
			image_speed = 1.0
		else:
			if ((((GM.f_random(2.0)) < 1.0))):
				sprite_index = 20.0
				image_speed = 1.0
			else:
				sprite_index = 21.0
				image_speed = 1.0
	if (((absf(v_particalcolor - 1.0) < 0.00001))):
		if ((((GM.f_random(3.0)) < 1.0))):
			sprite_index = 16.0
			image_speed = 1.0
		else:
			if ((((GM.f_random(2.0)) < 1.0))):
				sprite_index = 17.0
				image_speed = 1.0
			else:
				sprite_index = 18.0
				image_speed = 1.0
	if (((absf(v_particalcolor - 0.0) < 0.00001))):
		if ((((GM.f_random(3.0)) < 1.0))):
			sprite_index = 11.0
			image_speed = 1.0
		else:
			if ((((GM.f_random(2.0)) < 1.0))):
				sprite_index = 12.0
				image_speed = 1.0
			else:
				sprite_index = 13.0
				image_speed = 1.0
