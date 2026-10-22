extends CanvasLayer

var panel: Control
var lines := []
var tick := 0.0
var stats := {}


func _ready():
	layer = 100
	visible = false
	panel = Control.new()
	panel.set_anchors_preset(Control.PRESET_FULL_RECT)
	panel.mouse_filter = Control.MOUSE_FILTER_IGNORE
	panel.draw.connect(_paint)
	add_child(panel)


func toggle():
	visible = not visible
	GM.prof_on = visible
	if visible:
		GM.slow_events.clear()
		GM.worst_frame_ms = 0.0


func _avg(a):
	if a.size() == 0:
		return 0.0
	var t = 0.0
	for v in a:
		t += v
	return t / a.size()


func _max(a):
	var m = 0.0
	for v in a:
		if v > m:
			m = v
	return m


func _process(delta):
	if not visible:
		return
	tick += delta
	if tick < 0.25:
		return
	tick = 0.0
	var fh = GM.frame_hist
	var sorted = Array(fh)
	sorted.sort()
	var low1 = 0.0
	if sorted.size() > 0:
		low1 = sorted[int(sorted.size() * 0.99)]
	var work = (_avg(GM.step_hist) + _avg(GM.render_hist)) * GM.tps_now
	lines = [
		"FPS %d   frame avg %.1f ms  max %.1f ms  1%% low %.1f ms" % [Engine.get_frames_per_second(), _avg(fh), _max(fh), low1],
		"TPS %.1f / %d   step avg %.2f ms  max %.2f ms" % [GM.tps_now, int(GM.room_speed), _avg(GM.step_hist), _max(GM.step_hist)],
		"draw build avg %.2f ms  max %.2f ms   cmds %d  slices %d" % [_avg(GM.render_hist), _max(GM.render_hist), GM._count_cmds(), GM.slice_used],
		"game CPU ~%.0f%% of one core   engine process %.1f ms  physics %.1f ms" % [work / 10.0, Performance.get_monitor(Performance.TIME_PROCESS) * 1000.0, Performance.get_monitor(Performance.TIME_PHYSICS_PROCESS) * 1000.0],
		"draw calls %d   objects %d   mem %.0f MB   video %.0f MB" % [Performance.get_monitor(Performance.RENDER_TOTAL_DRAW_CALLS_IN_FRAME), Performance.get_monitor(Performance.OBJECT_COUNT), Performance.get_monitor(Performance.MEMORY_STATIC) / 1048576.0, Performance.get_monitor(Performance.RENDER_VIDEO_MEM_USED) / 1048576.0],
		"room %d %s   instances %d   step %d" % [int(GM.room), GM.rooms[int(GM.room)]["name"], GM.instances.size(), GM.step_count],
		"worst frame ever %.0f ms (step %d)" % [GM.worst_frame_ms, GM.worst_frame_step],
	]
	var ph := []
	for k in GM.last_phase_ms:
		ph.append([GM.last_phase_ms[k], k])
	ph.sort()
	ph.reverse()
	var pl = "slowest phases (this step):"
	for k in range(min(4, ph.size())):
		pl += "  %s %.2f" % [ph[k][1], ph[k][0]]
	lines.append(pl)
	lines.append("slow events (> 2 ms):")
	for e in GM.slow_events:
		lines.append("  %.1f ms  %s  (step %d)" % [e[0], e[1], e[2]])
	panel.queue_redraw()


func _paint():
	var font = ThemeDB.fallback_font
	var h = 18 * (lines.size() + 1) + 90
	panel.draw_rect(Rect2(8, 8, 720, h), Color(0, 0, 0, 0.72), true)
	var y = 28
	for l in lines:
		panel.draw_string(font, Vector2(16, y), l, HORIZONTAL_ALIGNMENT_LEFT, -1, 14, Color(0.85, 1.0, 0.85))
		y += 18
	var fh = GM.frame_hist
	var gx = 16.0
	var gy = y + 62.0
	panel.draw_line(Vector2(gx, gy - 33.3), Vector2(gx + 480.0, gy - 33.3), Color(1, 1, 0, 0.5), 1.0)
	panel.draw_line(Vector2(gx, gy - 16.6), Vector2(gx + 480.0, gy - 16.6), Color(0, 1, 0, 0.5), 1.0)
	var n = fh.size()
	for k in range(n):
		var ms = fh[k]
		var hh = minf(ms, 66.0)
		var c = Color(0.3, 0.9, 0.3)
		if ms > 33.4:
			c = Color(1.0, 0.25, 0.25)
		elif ms > 20.0:
			c = Color(1.0, 0.85, 0.2)
		panel.draw_rect(Rect2(gx + k * 2.0, gy - hh, 1.6, hh), c, true)
	panel.draw_string(font, Vector2(gx + 490.0, gy - 28.0), "33 ms", HORIZONTAL_ALIGNMENT_LEFT, -1, 12, Color(1, 1, 0.5))
	panel.draw_string(font, Vector2(gx + 490.0, gy - 12.0), "16 ms", HORIZONTAL_ALIGNMENT_LEFT, -1, 12, Color(0.5, 1, 0.5))
