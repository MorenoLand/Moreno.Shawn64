extends Node

var rng := RandomNumberGenerator.new()
var ds_next := 1
var ds_store := {}


func f_abs(v):
	return absf(v)


func f_sign(v):
	return signf(v)


func f_sqrt(v):
	return sqrt(v)


func f_sqr(v):
	return v * v


func f_power(a, b):
	return pow(a, b)


func f_exp(v):
	return exp(v)


func f_ln(v):
	return log(v)


func f_log2(v):
	return log(v) / log(2.0)


func f_log10(v):
	return log(v) / log(10.0)


func f_logn(n, v):
	return log(v) / log(n)


func f_tan(v):
	return tan(v)


func f_arcsin(v):
	return asin(v)


func f_arccos(v):
	return acos(v)


func f_arctan(v):
	return atan(v)


func f_arctan2(y, x):
	return atan2(y, x)


func f_degtorad(v):
	return deg_to_rad(v)


func f_radtodeg(v):
	return rad_to_deg(v)


func f_ceil(v):
	return ceilf(v)


func f_frac(v):
	return v - float(int(v))


func f_clamp(v, lo, hi):
	return clampf(v, lo, hi)


func f_lerp(a, b, t):
	return a + (b - a) * t


func _args(a, b, c, d, e, f, g, h):
	var out := []
	for v in [a, b, c, d, e, f, g, h]:
		if v != null:
			out.append(v)
	return out


func f_min(a, b = null, c = null, d = null, e = null, f = null, g = null, h = null):
	var l = _args(a, b, c, d, e, f, g, h)
	var m = l[0]
	for v in l:
		if v < m:
			m = v
	return m


func f_max(a, b = null, c = null, d = null, e = null, f = null, g = null, h = null):
	var l = _args(a, b, c, d, e, f, g, h)
	var m = l[0]
	for v in l:
		if v > m:
			m = v
	return m


func f_mean(a, b = null, c = null, d = null, e = null, f = null, g = null, h = null):
	var l = _args(a, b, c, d, e, f, g, h)
	var t = 0.0
	for v in l:
		t += v
	return t / l.size()


func f_median(a, b = null, c = null, d = null, e = null, f = null, g = null, h = null):
	var l = _args(a, b, c, d, e, f, g, h)
	l.sort()
	return l[l.size() / 2]


func f_choose(a, b = null, c = null, d = null, e = null, f = null, g = null, h = null):
	var l = _args(a, b, c, d, e, f, g, h)
	return l[rng.randi() % l.size()]


func f_irandom(n):
	return float(rng.randi() % int(n + 1.0))


func f_irandom_range(a, b):
	return float(int(a) + rng.randi() % int(b - a + 1.0))


func f_random_range(a, b):
	return a + rng.randf() * (b - a)


func f_randomize():
	rng.randomize()
	return 0.0


func f_random_set_seed(s):
	rng.seed = int(s)
	return 0.0


func f_point_distance(x1, y1, x2, y2):
	return sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1))


func f_real(v):
	if v is String:
		return float(v) if v.is_valid_float() else 0.0
	return float(v)


func f_is_real(v):
	return 0.0 if v is String else 1.0


func f_is_string(v):
	return 1.0 if v is String else 0.0


func f_chr(v):
	return char(int(v))


func f_string_upper(s):
	s = str(s)
	return s.to_upper()


func f_string_lower(s):
	s = str(s)
	return s.to_lower()


func f_string_pos(sub, s):
	sub = str(sub)
	s = str(s)
	s = str(s)
	return float(s.find(sub) + 1)


func f_string_repeat(s, n):
	s = str(s)
	return s.repeat(int(n))


func f_string_count(sub, s):
	sub = str(sub)
	s = str(s)
	s = str(s)
	return float(s.count(sub))


func f_string_replace(s, a, b):
	s = str(s)
	a = str(a)
	b = str(b)
	s = str(s)
	var i = s.find(a)
	if i < 0:
		return s
	return s.substr(0, i) + b + s.substr(i + a.length())


func f_string_replace_all(s, a, b):
	s = str(s)
	a = str(a)
	b = str(b)
	s = str(s)
	return s.replace(a, b)


func f_string_delete(s, i, n):
	s = str(s)
	var p = int(i) - 1
	return s.substr(0, p) + s.substr(p + int(n))


func f_string_insert(sub, s, i):
	sub = str(sub)
	s = str(s)
	s = str(s)
	var p = int(i) - 1
	return s.substr(0, p) + sub + s.substr(p)


func f_string_digits(s):
	s = str(s)
	var out = ""
	for c in s:
		if c >= "0" and c <= "9":
			out += c
	return out


func f_string_letters(s):
	s = str(s)
	var out = ""
	for c in s:
		if (c >= "a" and c <= "z") or (c >= "A" and c <= "Z"):
			out += c
	return out


func f_make_color_rgb(r, g, b):
	return float(int(r) | (int(g) << 8) | (int(b) << 16))


func f_make_colour_rgb(r, g, b):
	return f_make_color_rgb(r, g, b)


func f_make_color_hsv(h, s, v):
	var c = Color.from_hsv(h / 255.0, s / 255.0, v / 255.0)
	return f_make_color_rgb(c.r * 255.0, c.g * 255.0, c.b * 255.0)


func f_color_get_red(c):
	return float(int(c) & 255)


func f_color_get_green(c):
	return float((int(c) >> 8) & 255)


func f_color_get_blue(c):
	return float((int(c) >> 16) & 255)


func f_merge_color(c1, c2, t):
	var r = f_color_get_red(c1) * (1.0 - t) + f_color_get_red(c2) * t
	var g = f_color_get_green(c1) * (1.0 - t) + f_color_get_green(c2) * t
	var b = f_color_get_blue(c1) * (1.0 - t) + f_color_get_blue(c2) * t
	return f_make_color_rgb(r, g, b)


func f_date_current_datetime():
	return Time.get_unix_time_from_system() / 86400.0 + 25569.0


func f_date_get_year(d):
	return float(Time.get_datetime_dict_from_unix_time(int((d - 25569.0) * 86400.0))["year"])


func f_sleep(ms):
	return 0.0


func f_window_set_caption(s):
	return 0.0


func f_window_set_cursor(c):
	return 0.0


func f_window_set_fullscreen(v):
	return 0.0


func f_window_get_fullscreen():
	return 0.0


func f_window_set_showborder(v):
	return 0.0


func f_screen_refresh():
	return 0.0


func f_set_automatic_draw(v):
	return 0.0


func f_keyboard_clear(k):
	return 0.0


func f_mouse_clear(b):
	return 0.0


func f_io_clear():
	return 0.0


func _new_ds(kind):
	var id = ds_next
	ds_next += 1
	ds_store[id] = {"kind": kind, "data": [] if kind in ["list", "stack", "queue", "priority"] else {}}
	return float(id)


func f_ds_list_create():
	return _new_ds("list")


func f_ds_list_add(id, v):
	ds_store[int(id)]["data"].append(v)
	return 0.0


func f_ds_list_size(id):
	return float(ds_store[int(id)]["data"].size())


func f_ds_list_find_value(id, i):
	var d = ds_store[int(id)]["data"]
	return d[int(i)] if int(i) >= 0 and int(i) < d.size() else 0.0


func f_ds_list_set(id, i, v):
	ds_store[int(id)]["data"][int(i)] = v
	return 0.0


func f_ds_list_delete(id, i):
	ds_store[int(id)]["data"].remove_at(int(i))
	return 0.0


func f_ds_list_clear(id):
	ds_store[int(id)]["data"].clear()
	return 0.0


func f_ds_list_destroy(id):
	ds_store.erase(int(id))
	return 0.0


func f_ds_map_create():
	return _new_ds("map")


func f_ds_map_add(id, k, v):
	ds_store[int(id)]["data"][k] = v
	return 0.0


func f_ds_map_replace(id, k, v):
	ds_store[int(id)]["data"][k] = v
	return 0.0


func f_ds_map_find_value(id, k):
	return ds_store[int(id)]["data"].get(k, 0.0)


func f_ds_map_exists(id, k):
	return 1.0 if ds_store[int(id)]["data"].has(k) else 0.0


func f_ds_map_delete(id, k):
	ds_store[int(id)]["data"].erase(k)
	return 0.0


func f_ds_map_size(id):
	return float(ds_store[int(id)]["data"].size())


func f_ds_map_destroy(id):
	ds_store.erase(int(id))
	return 0.0


func f_ds_stack_create():
	return _new_ds("stack")


func f_ds_stack_push(id, v):
	ds_store[int(id)]["data"].append(v)
	return 0.0


func f_ds_stack_pop(id):
	var d = ds_store[int(id)]["data"]
	return d.pop_back() if d.size() > 0 else 0.0


func f_ds_stack_top(id):
	var d = ds_store[int(id)]["data"]
	return d[d.size() - 1] if d.size() > 0 else 0.0


func f_ds_stack_empty(id):
	return 1.0 if ds_store[int(id)]["data"].is_empty() else 0.0


func f_ds_stack_destroy(id):
	ds_store.erase(int(id))
	return 0.0


func f_ds_queue_create():
	return _new_ds("queue")


func f_ds_queue_enqueue(id, v):
	ds_store[int(id)]["data"].append(v)
	return 0.0


func f_ds_queue_dequeue(id):
	var d = ds_store[int(id)]["data"]
	return d.pop_front() if d.size() > 0 else 0.0


func f_ds_queue_empty(id):
	return 1.0 if ds_store[int(id)]["data"].is_empty() else 0.0


func f_ds_queue_destroy(id):
	ds_store.erase(int(id))
	return 0.0
