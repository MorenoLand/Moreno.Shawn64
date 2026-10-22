extends "res://games/street_bike_fury/scripts.gd"
var v_mypower = 0.0
var v_set = 0.0
var v_temp1 = 0.0
var v_wee = 0.0
func ev_create():
	image_speed = 0.0
	image_index = 0.0
	v_mypower = 15.0
	alarm[int(1.0)] = (20.0 + (GM.f_random(30.0)))
func ev_alarm_1():
	v_set = (GM.f_instance_create(x, y, 241.0))
	GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + hspeed)
	GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + vspeed)
	for _w94 in GM.with_list((v_set), self):
		if _w94._dead:
			continue
		_w94.other = self
		(GM.f_motion_add(_w94, 90.0, 10.0))
	alarm[int(1.0)] = (20.0 + (GM.f_random(30.0)))
	image_index = 1.0
	alarm[int(0.0)] = 10.0
func ev_alarm_0():
	image_index = 0.0
func ev_step():
	hspeed = GM.vb(207.0, "hspeed")
	vspeed = GM.vb(207.0, "vspeed")
func ev_col_262():
	self.ev_user(0.0)
func ev_col_20():
	v_mypower = v_mypower - 1.0
	if ((v_mypower < 0.0)):
		self.ev_user(0.0)
func ev_other_10():
	v_temp1 = (GM.f_floor((GM.f_random(2.999999))))
	if ((absf(v_temp1 - 0.0) < 0.00001)):
		(self.script_addmessage("Baddy Boom +100", 255.0, 100.0))
	if ((absf(v_temp1 - 1.0) < 0.00001)):
		(self.script_addmessage("Gang go Bang! +100", 255.0, 100.0))
	if ((absf(v_temp1 - 2.0) < 0.00001)):
		(self.script_addmessage("DEAD GUY! +100", 255.0, 100.0))
	GM.G["baddies"] = GM.G["baddies"] + 100.0
	gravity = 0.4
	v_wee = (GM.f_instance_create(x, y, 204.0))
	GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + hspeed)
	GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + vspeed)
	GM.vsetb(v_wee, "depth", depth)
	for _w95 in GM.with_list((v_wee), self):
		if _w95._dead:
			continue
		_w95.other = self
		(GM.f_motion_add(_w95, (GM.f_random(360.0)), (2.0 + (GM.f_random(2.0)))))
	(GM.f_instance_create(x, y, 224.0))
	(self.script_addmessage("HELI RIDER DIE!! +10", 65535.0, 10.0))
	(GM.f_instance_destroy(self))
