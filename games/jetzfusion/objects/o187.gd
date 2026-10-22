extends "res://games/jetzfusion/scripts.gd"
var v_view_left = 0.0
var v_view_width = 0.0
var v_xxx = 0.0
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(179.0)) - 1.0) < 0.00001))):
			if (((absf((GM.f_instance_number(188.0)) - 0.0) < 0.00001))):
				(self.script_missionscript(0.0, 0.0, 0.0, 0.0, 0.0))
				for _w237 in GM.with_list((7.0), self):
					if _w237._dead:
						continue
					_w237.other = self
					(GM.f_instance_create((_w237.x + 0.0), (_w237.y + (-40.0)), 248.0))
				(GM.f_sound_play(48.0))
				GM.G["money"] = GM.G["money"] + 400.0
				for _w238 in GM.with_list((170.0), self):
					if _w238._dead:
						continue
					_w238.other = self
					(GM.f_instance_destroy(_w238))
				for _w239 in GM.with_list((179.0), self):
					if _w239._dead:
						continue
					_w239.other = self
					(GM.f_instance_destroy(_w239))
				(GM.f_instance_destroy(self))
			(GM.f_sound_play(19.0))
			for _w240 in GM.with_list((179.0), self):
				if _w240._dead:
					continue
				_w240.other = self
				(GM.f_instance_destroy(_w240))
		else:
			if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
				for _w241 in GM.with_list((49.0), self):
					if _w241._dead:
						continue
					_w241.other = self
					GM.vset(_w241, "v_mytext", "Stenners:  Oh man!  All the drug dealers have been busted leaving tons of bags of crack all over the sidewalk!  Get me 5 of them in 40 seconds for $400!  PRESS ENTER")
					alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 183.0))
				(GM.f_sound_play(44.0))
				for _r242 in range(int((5.0))):
					while true:
						v_xxx = (GM.f_random(GM.room_width))
						if (((v_xxx < (GM.aget(v_view_left, 0.0) - 40.0)) or (v_xxx > GM.add(GM.aget(v_view_left, 0.0), GM.aget(v_view_width, 0.0))))):
							break
					(GM.f_instance_create(v_xxx, (-30.0), 188.0))
