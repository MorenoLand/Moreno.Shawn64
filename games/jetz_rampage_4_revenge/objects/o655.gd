extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_hitornot = 0.0
func ev_create():
	gravity_direction = 270.0
	gravity = 0.5
	(GM.f_sound_play(152.0))
	if ((absf(GM.vget(7.0, "v_guyright") - 1.0) < 0.00001)):
		direction = 55.0
	else:
		direction = 125.0
	speed = 5.0
	v_hitornot = 0.0
	(GM.f_motion_add(self, GM.vb(7.0, "direction"), GM.vb(7.0, "speed")))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 490.0))
func ev_col_953():
	self.ev_user(0.0)
func ev_col_951():
	self.ev_user(0.0)
func ev_col_950():
	self.ev_user(0.0)
func ev_col_949():
	self.ev_user(0.0)
func ev_col_948():
	self.ev_user(0.0)
func ev_col_946():
	self.ev_user(0.0)
func ev_col_929():
	self.ev_user(0.0)
func ev_col_925():
	self.ev_user(0.0)
func ev_col_907():
	self.ev_user(0.0)
func ev_col_898():
	self.ev_user(0.0)
func ev_col_838():
	self.ev_user(0.0)
func ev_col_822():
	self.ev_user(0.0)
func ev_col_770():
	self.ev_user(0.0)
func ev_col_758():
	self.ev_user(0.0)
func ev_col_757():
	self.ev_user(0.0)
func ev_col_748():
	self.ev_user(0.0)
func ev_col_741():
	self.ev_user(0.0)
func ev_col_732():
	self.ev_user(0.0)
func ev_col_731():
	self.ev_user(0.0)
func ev_col_730():
	self.ev_user(0.0)
func ev_col_725():
	self.ev_user(0.0)
func ev_col_713():
	self.ev_user(0.0)
func ev_col_712():
	self.ev_user(0.0)
func ev_col_705():
	self.ev_user(0.0)
func ev_col_704():
	self.ev_user(0.0)
func ev_col_621():
	self.ev_user(0.0)
func ev_col_603():
	self.ev_user(0.0)
func ev_col_598():
	self.ev_user(0.0)
func ev_col_592():
	self.ev_user(0.0)
func ev_col_591():
	self.ev_user(0.0)
func ev_col_590():
	self.ev_user(0.0)
func ev_col_585():
	self.ev_user(0.0)
func ev_col_563():
	self.ev_user(0.0)
func ev_col_554():
	self.ev_user(0.0)
func ev_col_553():
	self.ev_user(0.0)
func ev_col_544():
	self.ev_user(0.0)
func ev_col_531():
	self.ev_user(0.0)
func ev_col_522():
	self.ev_user(0.0)
func ev_col_506():
	if ((v_hitornot > 50.0)):
		self.ev_user(0.0)
func ev_other_10():
	(GM.f_instance_create(0.0, 0.0, 678.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 498.0))
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 545.0))
	(GM.f_sound_play(154.0))
	for _r282 in range(int((5.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 657.0))
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 659.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
