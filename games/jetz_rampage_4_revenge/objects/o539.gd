extends "res://games/jetz_rampage_4_revenge/objects/o531.gd"
var v_Infected_City = 0.0
var v_o_c3_b12 = 0.0
var v_o_c3_b8 = 0.0
var v_o_c3_b9 = 0.0
func ev_col_717():
	self.ev_user(6.0)
	for _w810 in GM.with_list((self.other), self):
		if _w810._dead:
			continue
		_w810.other = self
		(GM.f_instance_destroy(_w810))
func ev_col_618():
	self.ev_user(5.0)
func ev_col_494():
	self.ev_user(5.0)
func ev_col_491():
	self.ev_user(6.0)
func ev_other_16():
	if ((absf(GM.room - 1.0) < 0.00001)):
		if (((GM.f_place_meeting(self, x, y, 522.0)))) >= 0.5:
			self.ev_user(4.0)
	if ((absf(GM.room - 16.0) < 0.00001)):
		if (((GM.f_place_meeting(self, x, y, 822.0)))) >= 0.5:
			self.ev_user(4.0)
	if (GM.eq(GM.room, v_Infected_City)):
		if (((GM.f_place_meeting(self, x, y, v_o_c3_b12)))) >= 0.5:
			self.ev_user(4.0)
func ev_other_15():
	if ((absf(GM.room - 1.0) < 0.00001)):
		if (((GM.f_place_meeting(self, x, y, 522.0)))) >= 0.5:
			self.ev_user(3.0)
	if ((absf(GM.room - 16.0) < 0.00001)):
		if (((GM.f_place_meeting(self, x, y, 822.0)))) >= 0.5:
			self.ev_user(3.0)
	if (GM.eq(GM.room, v_Infected_City)):
		if (((GM.f_place_meeting(self, x, y, v_o_c3_b12)))) >= 0.5:
			self.ev_user(3.0)
func ev_other_11():
	v_wee = 0.0
	if ((absf(GM.room - 1.0) < 0.00001)):
		if (((GM.f_place_meeting(self, x, y, 522.0)))) >= 0.5:
			if not ((((GM.f_place_meeting(self, x, y, 521.0)))) >= 0.5):
				if not ((((GM.f_place_meeting(self, x, y, 525.0)))) >= 0.5):
					v_wee = 1.0
					self.ev_user(2.0)
	if ((absf(GM.room - 16.0) < 0.00001)):
		if (((GM.f_place_meeting(self, x, y, 822.0)))) >= 0.5:
			if not ((((GM.f_place_meeting(self, x, y, 818.0)))) >= 0.5):
				if not ((((GM.f_place_meeting(self, x, y, 820.0)))) >= 0.5):
					v_wee = 1.0
					self.ev_user(2.0)
	if (GM.eq(GM.room, v_Infected_City)):
		if (((GM.f_place_meeting(self, x, y, v_o_c3_b12)))) >= 0.5:
			if not ((((GM.f_place_meeting(self, x, y, v_o_c3_b8)))) >= 0.5):
				if not ((((GM.f_place_meeting(self, x, y, v_o_c3_b9)))) >= 0.5):
					v_wee = 1.0
					self.ev_user(2.0)
	if (GM.eq(v_wee, 0.0)):
		v_bridge = 0.0
		self.ev_user(2.0)
