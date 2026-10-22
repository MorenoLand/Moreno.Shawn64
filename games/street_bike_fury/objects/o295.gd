extends "res://games/street_bike_fury/objects/o197.gd"
var v_levelset = 0.0
var v_offsetx = 0.0
var v_offsety = 0.0
var v_swing2 = 0.0
func ev_create():
	v_onfire = 0.0
	v_swing = 0.0
	v_surfaceout1 = (3.0 * GM.G["gspeed"])
	v_surfaceout2 = (5.0 * GM.G["gspeed"])
	v_die = 0.0
	v_about = 0.0
	depth = (-18.1)
	v_rot1 = 0.0
	v_rot2 = 0.0
	v_dir = 0.0
	v_shotready = 1.0
	gravity = (0.4 * GM.G["gspeed"])
	gravity_direction = 270.0
	v_rotate = 0.0
	v_go = 0.0
	v_rate = 0.0
	v_wheelspeed = 0.0
	v_maxspeed = 30.0
	v_maxpower = 5.0
	v_mypower = v_maxpower
	v_tilt = 0.0
	v_swing2 = 0.0
	alarm[int(5.0)] = 20.0
	y = 50000.0
	x = 450.0
	v_offsetx = (x - 505.0)
	v_offsety = (y - 1295.0)
	GM.view_xview[0] = 100.0
	(self.script_room_set(v_offsetx, v_offsety, 64.0))
	v_offsetx = (v_offsetx + 6240.0)
	v_levelset = 2.0
	GM.G["makewaternow"] = 10000000.0
	GM.G["levelmin"] = 0.0
	GM.G["levelrange"] = 11.0
	GM.G["level"] = 1.0
	GM.G["arcademode"] = 1.0
	GM.G["levelcycle"] = 0.0
	GM.G["stagemode"] = 0.0
func ev_alarm_9():
	v_swing2 = 0.0
func ev_alarm_8():
	v_swing = 0.0
func ev_alarm_5():
	pass
func ev_stepend():
	image_angle = v_rotate
	(self.script_createroom())
	GM.view_yview[0] = (((y - (GM.view_hview[0] / 2.0)) - 50.0) - (vspeed * 3.0))
	GM.background_y[int(2.0)] = ((GM.view_yview[0] + GM.view_hview[0]) - 410.0)
	GM.background_y[int(0.0)] = GM.view_yview[0]
	GM.background_hspeed[int(2.0)] = (hspeed / 1.08)
	GM.view_xview[0] = (x - (GM.view_wview[0] / 2.0))
	GM.background_hspeed[int(0.0)] = (hspeed / 1.01)
func ev_step():
	if ((absf(v_tilt - 0.0) < 0.00001)):
		if ((v_rotate < 90.0)):
			if (((v_rotate - v_surfaceout1) > 0.0)):
				v_rotate = v_rotate - v_surfaceout1
			else:
				v_rotate = 0.0
		if ((v_rotate > 270.0)):
			if (((v_rotate + v_surfaceout1) < 360.0)):
				v_rotate = v_rotate + v_surfaceout1
			else:
				v_rotate = 0.0
	if (((v_tilt > 6.0) and (v_tilt < 90.0))):
		if (((v_rotate < 90.0) and (v_rotate > v_tilt))):
			if (((v_rotate - v_surfaceout2) > (0.0 + v_tilt))):
				v_rotate = v_rotate - v_surfaceout2
			else:
				v_rotate = v_tilt
		if (((v_rotate > 270.0) or (v_rotate < v_tilt))):
			if ((((v_rotate + v_surfaceout2) < v_tilt) or (v_rotate > 270.0))):
				v_rotate = v_rotate + v_surfaceout2
			else:
				v_rotate = v_tilt
	if (((v_tilt > 270.0) and (v_tilt < 355.0))):
		if (((v_rotate < 90.0) or (v_rotate > v_tilt))):
			if ((((v_rotate - v_surfaceout1) < 90.0) or ((v_rotate - v_surfaceout1) > v_tilt))):
				v_rotate = v_rotate - v_surfaceout1
			else:
				v_rotate = v_tilt
		if (((v_rotate > 270.0) and (v_rotate < v_tilt))):
			if (((v_rotate + v_surfaceout1) < v_tilt)):
				v_rotate = v_rotate + v_surfaceout1
			else:
				v_rotate = v_tilt
	v_rotate = v_rotate + v_rate
	if ((v_rotate > 360.0)):
		v_rotate = 0.0
	if ((v_rotate < 0.0)):
		v_rotate = 360.0
	v_rot1 = v_rot1 - hspeed
	(GM.f_motion_add(self, 0.0, 0.5))
	if ((hspeed > 35.0)):
		hspeed = 35.0
	if ((hspeed < (-35.0))):
		hspeed = (-35.0)
	GM.G["levelcycle"] = 0.0
func ev_other_15():
	if ((vspeed > 0.0)):
		vspeed = (vspeed / 1.5)
		while (((GM.f_place_meeting(self, x, y, self.other)))) >= 0.5:
			y = y - 2.0
func ev_other_12():
	pass
func ev_draw():
	v_temp3 = v_dir
	(GM.f_texture_set_interpolation(1.0))
	(GM.f_draw_sprite_ext(168.0, 0.0, (x + (GM.f_lengthdir_x(26.0, (v_rotate + 95.0)))), (y + (GM.f_lengthdir_y(26.0, (v_rotate + 95.0)))), 1.0, 1.0, v_rotate, 16777215.0, 1.0))
	(GM.f_draw_sprite_ext(166.0, 0.0, (x + (GM.f_lengthdir_x(35.0, (v_rotate + 199.0)))), (y + (GM.f_lengthdir_y(35.0, (v_rotate + 199.0)))), 1.0, 1.0, (v_rot1 + v_rotate), 16777215.0, 1.0))
	(GM.f_draw_sprite_ext(166.0, 0.0, (x + (GM.f_lengthdir_x(50.0, (v_rotate - 15.0)))), (y + (GM.f_lengthdir_y(50.0, (v_rotate - 15.0)))), 1.0, 1.0, (v_rot1 + v_rotate), 16777215.0, 1.0))
	(GM.f_draw_sprite_ext(0.0, 0.0, x, y, 1.0, 1.0, v_rotate, 16777215.0, 1.0))
	v_set1 = (x + (GM.f_lengthdir_x(25.0, (v_rotate + 95.0))))
	v_set2 = (y + (GM.f_lengthdir_y(25.0, (v_rotate + 95.0))))
	v_set3 = 0.0
	(GM.f_draw_sprite_ext(163.0, 0.0, (x + (GM.f_lengthdir_x(15.0, (v_rotate + 80.0)))), (y + (GM.f_lengthdir_y(15.0, (v_rotate + 80.0)))), 1.0, 1.0, v_rotate, 16777215.0, 1.0))
	(GM.f_draw_sprite_ext(164.0, 0.0, (x + (GM.f_lengthdir_x(40.0, (v_rotate + 78.0)))), (y + (GM.f_lengthdir_y(40.0, (v_rotate + 78.0)))), 1.0, 1.0, v_rotate, 16777215.0, 1.0))
	(GM.f_draw_sprite_ext(175.0, (0.0 + v_swing), v_set1, v_set2, 1.0, 1.0, 0.0, 16777215.0, 1.0))
	(GM.f_texture_set_interpolation(0.0))
