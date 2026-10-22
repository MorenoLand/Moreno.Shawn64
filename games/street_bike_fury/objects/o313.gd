extends "res://games/street_bike_fury/scripts.gd"
var v_scale = 0.0
var v_trans = 0.0
func ev_create():
	v_scale = (0.2 + (GM.f_random(0.8)))
	v_trans = 1.0
func ev_step():
	v_trans = v_trans - 0.03
	if ((v_trans < 0.2)):
		(GM.f_instance_destroy(self))
	if ((v_scale > 0.0)):
		v_scale = v_scale - 0.03
func ev_col_0():
	if ((absf(GM.vb(self.other, "depth") - (-18.0)) < 0.00001)):
		if ((absf(GM.vget(self.other, "v_die") - 0.0) < 0.00001)):
			(self.script_addtrick("KILL HIM BEFORE YOU BURN!", 0.0, 0.0))
			for _w139 in GM.with_list((312.0), self):
				if _w139._dead:
					continue
				_w139.other = self
				GM.vset(_w139, "v_flametime", GM.vget(_w139, "v_flametime") - 0.13)
				alarm[int(10.0)] = 80.0
				if ((GM.vget(_w139, "v_flametime") < 0.0)):
					for _w140 in GM.with_list((0.0), _w139):
						if _w140._dead:
							continue
						_w140.other = _w139
						GM.vset(_w140, "v_this", (GM.f_floor((GM.f_random(2.0)))))
						if (GM.eq(GM.vget(_w140, "v_this"), 0.0)):
							GM.vset(_w140, "v_this", (GM.f_instance_create(_w140.x, _w140.y, 97.0)))
							GM.vsetb(GM.vget(_w140, "v_this"), "hspeed", ((GM.vb(_w140.other, "hspeed") - 10.0) + (GM.f_random(20.0))))
							GM.vsetb(GM.vget(_w140, "v_this"), "vspeed", ((GM.vb(_w140.other, "vspeed") - 10.0) + (GM.f_random(20.0))))
						GM.vset(_w140, "v_damaged", (-1.0))
						alarm[int(10.0)] = 20.0
						GM.health = GM.health - 0.1
			(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_set_blend_mode(1.0))
	(GM.f_draw_sprite_ext(80.0, 0.0, x, y, v_scale, v_scale, 0.0, 255.0, v_trans))
	(GM.f_draw_set_blend_mode(0.0))
