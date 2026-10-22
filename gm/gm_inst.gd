extends RefCounted

var id = 0.0
var object_index = 0.0
var x = 0.0
var y = 0.0
var xprevious = 0.0
var yprevious = 0.0
var xstart = 0.0
var ystart = 0.0
var _hs = 0.0
var _vs = 0.0
var _sp = 0.0
var _dir = 0.0
var friction = 0.0
var gravity = 0.0
var gravity_direction = 270.0
var sprite_index = -1.0
var image_index = 0.0
var image_speed = 1.0
var image_xscale = 1.0
var image_yscale = 1.0
var image_angle = 0.0
var image_alpha = 1.0
var image_blend = 16777215.0
var visible = 1.0
var solid = 0.0
var depth = 0.0
var persistent = 0.0
var mask_index = -1.0
var path_index = -1.0
var path_position = 0.0
var path_speed = 0.0
var timeline_index = -1.0
var timeline_position = 0.0
var timeline_speed = 1.0
var timeline_running = 0.0
var timeline_loop = 0.0
var alarm = [-1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0]
var other = null
var _dead = false
var _qstamp = 0
var _active = true
var _v = {}

var hspeed:
	get:
		return _hs
	set(v):
		_hs = v
		_from_hv()

var vspeed:
	get:
		return _vs
	set(v):
		_vs = v
		_from_hv()

var speed:
	get:
		return _sp
	set(v):
		_sp = v
		_from_sd()

var direction:
	get:
		return _dir
	set(v):
		_dir = fposmod(v, 360.0)
		_from_sd()

var sprite_width:
	get:
		return GM.sprite_dim(sprite_index, 0) * image_xscale

var sprite_height:
	get:
		return GM.sprite_dim(sprite_index, 1) * image_yscale

var sprite_xoffset:
	get:
		return GM.sprite_dim(sprite_index, 2)

var sprite_yoffset:
	get:
		return GM.sprite_dim(sprite_index, 3)

var image_number:
	get:
		return GM.sprite_dim(sprite_index, 4)

var bbox_left:
	get:
		return GM.inst_bbox(self, x, y)[0]

var bbox_top:
	get:
		return GM.inst_bbox(self, x, y)[1]

var bbox_right:
	get:
		return GM.inst_bbox(self, x, y)[2] - 1.0

var bbox_bottom:
	get:
		return GM.inst_bbox(self, x, y)[3] - 1.0


func _from_hv():
	_sp = sqrt(_hs * _hs + _vs * _vs)
	if _sp > 0.0:
		_dir = fposmod(rad_to_deg(atan2(-_vs, _hs)), 360.0)


func _from_sd():
	var r = deg_to_rad(_dir)
	_hs = cos(r) * _sp
	_vs = -sin(r) * _sp


func ev_user(n):
	var m = "ev_other_%d" % (int(n) + 10)
	if has_method(m):
		call(m)
	return 0.0
