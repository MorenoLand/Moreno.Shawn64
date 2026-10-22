extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_alive = 0.0
var v_bounce = 0.0
var v_mypower = 0.0
var v_wee = 0.0
var v_wow = 0.0
var v_xxx1 = 0.0
var v_xxx2 = 0.0
var v_yyy1 = 0.0
var v_yyy2 = 0.0
func ev_create():
	if ((((GM.f_sound_isplaying(227.0))) >= 0.5 or ((GM.f_sound_isplaying(228.0))) >= 0.5)):
		(GM.f_sound_stop(227.0))
		(GM.f_sound_stop(228.0))
		(GM.f_sound_play(252.0))
		(GM.f_sound_loop(229.0))
	v_bounce = y
	(GM.f_instance_create((x - 150.0), y, 948.0))
	(GM.f_instance_create((x + 150.0), y, 949.0))
	(GM.f_instance_create(x, y, 950.0))
	(GM.f_instance_create(x, y, 951.0))
	(GM.f_instance_create(x, y, 953.0))
	(GM.f_instance_create(x, y, 954.0))
	(GM.f_instance_create(x, y, 955.0))
	v_mypower = 100.0
	alarm[int(0.0)] = 400.0
	for _w556 in GM.with_list((674.0), self):
		if _w556._dead:
			continue
		_w556.other = self
		(GM.f_instance_destroy(_w556))
	for _w557 in GM.with_list((675.0), self):
		if _w557._dead:
			continue
		_w557.other = self
		(GM.f_instance_destroy(_w557))
	for _w558 in GM.with_list((669.0), self):
		if _w558._dead:
			continue
		_w558.other = self
		(GM.f_instance_destroy(_w558))
	for _w559 in GM.with_list((676.0), self):
		if _w559._dead:
			continue
		_w559.other = self
		(GM.f_instance_destroy(_w559))
	for _w560 in GM.with_list((677.0), self):
		if _w560._dead:
			continue
		_w560.other = self
		(GM.f_instance_destroy(_w560))
	for _w561 in GM.with_list((984.0), self):
		if _w561._dead:
			continue
		_w561.other = self
		(GM.f_instance_destroy(_w561))
	for _w562 in GM.with_list((787.0), self):
		if _w562._dead:
			continue
		_w562.other = self
		(GM.f_instance_destroy(_w562))
	for _w563 in GM.with_list((814.0), self):
		if _w563._dead:
			continue
		_w563.other = self
		(GM.f_instance_destroy(_w563))
	for _w564 in GM.with_list((798.0), self):
		if _w564._dead:
			continue
		_w564.other = self
		(GM.f_instance_destroy(_w564))
	for _w565 in GM.with_list((989.0), self):
		if _w565._dead:
			continue
		_w565.other = self
		(GM.f_instance_destroy(_w565))
	for _w566 in GM.with_list((997.0), self):
		if _w566._dead:
			continue
		_w566.other = self
		(GM.f_instance_destroy(_w566))
	for _w567 in GM.with_list((988.0), self):
		if _w567._dead:
			continue
		_w567.other = self
		(GM.f_instance_destroy(_w567))
	for _w568 in GM.with_list((999.0), self):
		if _w568._dead:
			continue
		_w568.other = self
		(GM.f_instance_destroy(_w568))
	for _w569 in GM.with_list((1004.0), self):
		if _w569._dead:
			continue
		_w569.other = self
		(GM.f_instance_destroy(_w569))
	for _w570 in GM.with_list((1007.0), self):
		if _w570._dead:
			continue
		_w570.other = self
		(GM.f_instance_destroy(_w570))
	for _w571 in GM.with_list((1029.0), self):
		if _w571._dead:
			continue
		_w571.other = self
		(GM.f_instance_destroy(_w571))
	for _w572 in GM.with_list((1030.0), self):
		if _w572._dead:
			continue
		_w572.other = self
		(GM.f_instance_destroy(_w572))
	for _w573 in GM.with_list((1033.0), self):
		if _w573._dead:
			continue
		_w573.other = self
		(GM.f_instance_destroy(_w573))
	for _w574 in GM.with_list((1000.0), self):
		if _w574._dead:
			continue
		_w574.other = self
		(GM.f_instance_destroy(_w574))
	for _w575 in GM.with_list((1005.0), self):
		if _w575._dead:
			continue
		_w575.other = self
		(GM.f_instance_destroy(_w575))
	for _w576 in GM.with_list((1008.0), self):
		if _w576._dead:
			continue
		_w576.other = self
		(GM.f_instance_destroy(_w576))
	for _w577 in GM.with_list((1032.0), self):
		if _w577._dead:
			continue
		_w577.other = self
		(GM.f_instance_destroy(_w577))
	for _w578 in GM.with_list((1031.0), self):
		if _w578._dead:
			continue
		_w578.other = self
		(GM.f_instance_destroy(_w578))
	for _w579 in GM.with_list((1034.0), self):
		if _w579._dead:
			continue
		_w579.other = self
		(GM.f_instance_destroy(_w579))
func ev_alarm_0():
	alarm[int(0.0)] = 75.0
	if (((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
		v_xxx1 = (((x + sprite_width) - 45.0) - 27.0)
		v_yyy1 = (y + 128.0)
		v_xxx2 = (((x + sprite_width) - 4.0) - 27.0)
		v_yyy2 = (y + 126.0)
	else:
		v_xxx1 = (x + 45.0)
		v_yyy1 = (y + 128.0)
		v_xxx2 = (x + 4.0)
		v_yyy2 = (y + 126.0)
	v_wee = (GM.f_instance_create((v_xxx1 + 13.0), (v_yyy1 + 13.0), 956.0))
	GM.vsetb(v_wee, "direction", (((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)))) - 10.0) + (GM.f_random(20.0))))
	GM.vsetb(v_wee, "speed", (20.0 + (GM.f_random(20.0))))
	v_wee = (GM.f_instance_create((v_xxx2 + 13.0), (v_yyy2 + 13.0), 956.0))
	GM.vsetb(v_wee, "direction", (((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)))) - 10.0) + (GM.f_random(20.0))))
	GM.vsetb(v_wee, "speed", (20.0 + (GM.f_random(20.0))))
func ev_step():
	x = ((((GM.vb(948.0, "x") + (GM.vb(948.0, "sprite_width") / 2.0))) + ((((((GM.vb(949.0, "x") + (GM.vb(949.0, "sprite_width") / 2.0))) - ((GM.vb(948.0, "x") + (GM.vb(948.0, "sprite_width") / 2.0))))) / 2.0))) - (sprite_width / 2.0))
	if ((y > v_bounce)):
		vspeed = 0.0
	if ((y < v_bounce)):
		vspeed = vspeed + 0.3
func ev_col_965():
	pass
func ev_col_656():
	v_wee = (GM.f_floor((GM.f_random(10.9999))))
	if (GM.eq(v_wee, 0.0)):
		for _w580 in GM.with_list((946.0), self):
			if _w580._dead:
				continue
			_w580.other = self
			_w580.ev_user(0.0)
func ev_col_502():
	for _w581 in GM.with_list((946.0), self):
		if _w581._dead:
			continue
		_w581.other = self
		_w581.ev_user(0.0)
func ev_other_11():
	v_alive = 0.0
	(GM.f_sound_play(146.0))
	(GM.f_sound_play(154.0))
	for _w582 in GM.with_list((948.0), self):
		if _w582._dead:
			continue
		_w582.other = self
		(_w582.script_waydirection4())
	for _w583 in GM.with_list((949.0), self):
		if _w583._dead:
			continue
		_w583.other = self
		(_w583.script_waydirection4())
	for _w584 in GM.with_list((950.0), self):
		if _w584._dead:
			continue
		_w584.other = self
		(_w584.script_waydirection4())
	for _w585 in GM.with_list((951.0), self):
		if _w585._dead:
			continue
		_w585.other = self
		(_w585.script_waydirection4())
	for _w586 in GM.with_list((953.0), self):
		if _w586._dead:
			continue
		_w586.other = self
		(GM.f_instance_destroy(_w586))
	(GM.f_instance_create(x, y, 957.0))
	for _w587 in GM.with_list((957.0), self):
		if _w587._dead:
			continue
		_w587.other = self
		(_w587.script_waydirection4())
	(GM.f_instance_create((x + 10.0), (y + 236.0), 958.0))
	for _w588 in GM.with_list((958.0), self):
		if _w588._dead:
			continue
		_w588.other = self
		(_w588.script_waydirection4())
	for _w589 in GM.with_list((954.0), self):
		if _w589._dead:
			continue
		_w589.other = self
		(GM.f_instance_destroy(_w589))
	for _w590 in GM.with_list((955.0), self):
		if _w590._dead:
			continue
		_w590.other = self
		(GM.f_instance_destroy(_w590))
	(GM.f_instance_destroy(self))
func ev_other_10():
	v_mypower = v_mypower - 0.1
	(GM.f_sound_play(144.0))
	if ((v_mypower < 0.1)):
		self.ev_user(1.0)
func ev_draw():
	if (((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
		GM.vsetb(954.0, "x", (((x + sprite_width) - 45.0) - 27.0))
		GM.vsetb(954.0, "y", (y + 128.0))
		GM.vsetb(955.0, "x", (((x + sprite_width) - 4.0) - 27.0))
		GM.vsetb(955.0, "y", (y + 126.0))
		v_wow = 1.0
	else:
		GM.vsetb(954.0, "x", (x + 45.0))
		GM.vsetb(954.0, "y", (y + 128.0))
		GM.vsetb(955.0, "x", (x + 4.0))
		GM.vsetb(955.0, "y", (y + 126.0))
		v_wow = 0.0
	(GM.f_draw_sprite(972.0, v_wow, GM.vb(951.0, "x"), GM.vb(951.0, "y")))
	(GM.f_draw_sprite(974.0, v_wow, (GM.f_mean((x + 105.0), (GM.vb(949.0, "x") + (GM.vb(949.0, "sprite_width") / 2.0)))), (GM.f_mean((y + 333.0), (GM.vb(949.0, "y") + (GM.vb(949.0, "sprite_height") / 2.0))))))
	(GM.f_draw_sprite(969.0, v_wow, GM.vb(949.0, "x"), GM.vb(949.0, "y")))
	(GM.f_draw_sprite(970.0, v_wow, (x + 10.0), (y + 236.0)))
	GM.vsetb(953.0, "x", (x + 10.0))
	GM.vsetb(953.0, "y", (y + 236.0))
	(GM.f_draw_sprite(973.0, v_wow, (GM.f_mean((x + 105.0), (GM.vb(948.0, "x") + (GM.vb(948.0, "sprite_width") / 2.0)))), (GM.f_mean((y + 333.0), (GM.vb(948.0, "y") + (GM.vb(948.0, "sprite_height") / 2.0))))))
	(GM.f_draw_sprite(968.0, v_wow, GM.vb(948.0, "x"), GM.vb(948.0, "y")))
	(GM.f_draw_sprite(967.0, v_wow, x, y))
	(GM.f_draw_sprite(974.0, v_wow, (GM.f_mean((x + 105.0), (GM.vb(950.0, "x") + (GM.vb(950.0, "sprite_width") / 2.0)))), (GM.f_mean((y + 333.0), (GM.vb(950.0, "y") + (GM.vb(950.0, "sprite_height") / 2.0))))))
	(GM.f_draw_sprite(971.0, v_wow, GM.vb(950.0, "x"), GM.vb(950.0, "y")))
