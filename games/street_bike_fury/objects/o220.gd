extends "res://games/street_bike_fury/scripts.gd"
var v_levelset = 0.0
var v_set = 0.0
var v_upset = 0.0
var v_upval = 0.0
func ev_create():
	x = (GM.room_width / 2.0)
	v_upset = 17.0
	v_upval = 0.0
	v_levelset = 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "Intro - Warming up")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "Wave 1 - Bar Escape")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "--Stunt Challenge 1--")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "Wave 2 - Badass")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "--Stunt Challenge 2--")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "Wave 3 - Flatland")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "CUTSCENE - Gangs are BAD")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "Wave 4 - Grenades HURT")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "--Stunt Challenge 3--")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "Wave 5 - Cut you up")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "CUTSCENE - Crossing the river")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "Wave 6 - Water Rider")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "Wave 7 - Homing In")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "--Stunt Challenge 4--")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "Wave 8 - Train Trouble")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "CUTSCENE - Escape to the border")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "Wave 9 - Construction")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "--Stunt Challenge 5--")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "Wave 10 - Home Stretch")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "Wave 11 - Break Free")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "--Stunt Challenge 6--")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "Wave 12 - Ultimate")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "CUTSCENE - Gang go BANG")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "PLAY ARCADE MODE")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
	v_set = (GM.f_instance_create(x, (y + v_upval), 221.0))
	GM.vset(v_set, "v_texxt", "PLAY FREE RUN MODE")
	v_upval = v_upval + v_upset
	GM.vset(v_set, "v_levelset", v_levelset)
	v_levelset = v_levelset + 1.0
