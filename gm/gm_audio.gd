extends Node

var gm = null
var dir := ""
var streams := {}
var players := {}
var vols := {}
var pans := {}
var global_volume := 1.0
var pan_bus := {}


func setup(g, d):
	gm = g
	dir = d


func _parse_wav(b):
	var size = b.size()
	var pos = 12
	var rate = 22050
	var ch = 1
	var bits = 16
	var fmt = 1
	var pcm = PackedByteArray()
	while pos + 8 <= size:
		var tag = b.slice(pos, pos + 4).get_string_from_ascii()
		var n = b.decode_u32(pos + 4)
		if tag == "fmt ":
			fmt = b.decode_u16(pos + 8)
			ch = b.decode_u16(pos + 10)
			rate = b.decode_u32(pos + 12)
			bits = b.decode_u16(pos + 22)
		elif tag == "data":
			pcm = b.slice(pos + 8, min(pos + 8 + n, size))
			break
		pos += 8 + n + (n & 1)
	if fmt != 1 or pcm.is_empty():
		return null
	var st = AudioStreamWAV.new()
	st.mix_rate = rate
	st.stereo = ch == 2
	if bits == 8:
		var out = PackedByteArray()
		out.resize(pcm.size())
		for i in range(pcm.size()):
			out[i] = (pcm[i] - 128) & 255
		st.format = AudioStreamWAV.FORMAT_8_BITS
		st.data = out
	else:
		st.format = AudioStreamWAV.FORMAT_16_BITS
		st.data = pcm
	return st


func _stream(i):
	if streams.has(i):
		return streams[i]
	var info = gm.sound_info[i]
	var st = null
	if info != null and info.has("file"):
		var path = gm.asset_path(info["file"])
		if FileAccess.file_exists(path):
			var bytes = FileAccess.get_file_as_bytes(path)
			var ext = path.get_extension().to_lower()
			if ext == "gmwav":
				st = _parse_wav(bytes)
			elif ext == "gmogg":
				st = AudioStreamOggVorbis.load_from_buffer(bytes)
			elif ext == "gmmp3":
				st = AudioStreamMP3.load_from_buffer(bytes)
	streams[i] = st
	return st


func _volume_of(i):
	var info = gm.sound_info[i]
	var v = vols.get(i, float(info["volume"]) if info != null else 1.0)
	return v * global_volume


func play(i, loop):
	if i < 0 or i >= gm.sound_info.size() or gm.sound_info[i] == null:
		return
	var st = _stream(i)
	if st == null:
		return
	var p = AudioStreamPlayer.new()
	if loop:
		var st2 = st.duplicate()
		if st2 is AudioStreamWAV:
			st2.loop_mode = AudioStreamWAV.LOOP_FORWARD
			var bps = (2 if st2.format == AudioStreamWAV.FORMAT_16_BITS else 1) * (2 if st2.stereo else 1)
			st2.loop_begin = 0
			st2.loop_end = st2.data.size() / bps
		elif "loop" in st2:
			st2.loop = true
		p.stream = st2
	else:
		p.stream = st
	p.volume_db = linear_to_db(maxf(_volume_of(i), 0.0001))
	if pan_bus.has(i):
		p.bus = pan_bus[i]
	add_child(p)
	p.finished.connect(_on_finished.bind(i, p))
	p.play()
	if not players.has(i):
		players[i] = []
	players[i].append(p)


func _on_finished(i, p):
	if players.has(i):
		players[i].erase(p)
	p.queue_free()


func stop(i):
	if players.has(i):
		for p in players[i]:
			p.stop()
			p.queue_free()
		players[i] = []


func stop_all():
	for i in players.keys():
		stop(i)


func is_playing(i):
	if not players.has(i):
		return false
	for p in players[i]:
		if is_instance_valid(p) and p.playing:
			return true
	return false


func set_volume(i, v):
	vols[i] = v
	if players.has(i):
		for p in players[i]:
			if is_instance_valid(p):
				p.volume_db = linear_to_db(maxf(_volume_of(i), 0.0001))


func set_pan(i, p):
	pans[i] = p
	var pv = clampf(p, -1.0, 1.0)
	if not pan_bus.has(i):
		if pv == 0.0:
			return
		var idx = AudioServer.bus_count
		AudioServer.add_bus(idx)
		var nm = "gm_pan_%d" % i
		AudioServer.set_bus_name(idx, nm)
		AudioServer.set_bus_send(idx, "Master")
		AudioServer.add_bus_effect(idx, AudioEffectPanner.new())
		pan_bus[i] = nm
	var bi = AudioServer.get_bus_index(pan_bus[i])
	var eff = AudioServer.get_bus_effect(bi, 0)
	eff.pan = pv


func set_global_volume(v):
	global_volume = v
	for i in players.keys():
		set_volume(i, vols.get(i, float(gm.sound_info[i]["volume"])))


func add_file(path):
	if path == "" or not FileAccess.file_exists(path):
		return -1
	var bytes = FileAccess.get_file_as_bytes(path)
	var st = null
	if bytes.size() > 12 and bytes.slice(0, 4).get_string_from_ascii() == "RIFF":
		st = _parse_wav(bytes)
	elif bytes.size() > 3 and bytes.slice(0, 3).get_string_from_ascii() == "ID3":
		st = AudioStreamMP3.load_from_buffer(bytes)
	elif bytes.size() > 4 and bytes.slice(0, 4).get_string_from_ascii() == "OggS":
		st = AudioStreamOggVorbis.load_from_buffer(bytes)
	elif bytes.size() > 2 and bytes[0] == 0xFF and (bytes[1] & 0xE0) == 0xE0:
		st = AudioStreamMP3.load_from_buffer(bytes)
	if st == null:
		return -1
	gm.sound_info.append({"name": "dyn_sound", "volume": 1.0, "kind": 0})
	var idx = gm.sound_info.size() - 1
	streams[idx] = st
	return idx
