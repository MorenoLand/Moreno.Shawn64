extends "res://games/street_bike_fury/objects/o250.gd"
func ev_step():
	if (((x < GM.vb(0.0, "x")) and (hspeed < (GM.vb(0.0, "hspeed") + 5.0)))):
		hspeed = hspeed + 0.5
	if (((x > GM.vb(0.0, "x")) and (hspeed > (GM.vb(0.0, "hspeed") - 5.0)))):
		hspeed = hspeed - 0.5
	if (((y < GM.vb(0.0, "y")) and (vspeed < (GM.vb(0.0, "vspeed") + 5.0)))):
		vspeed = vspeed + 0.3
	if (((y > GM.vb(0.0, "y")) and (vspeed > (GM.vb(0.0, "vspeed") - 5.0)))):
		vspeed = vspeed - 0.5
	if ((hspeed > (GM.vb(0.0, "hspeed") + 3.0))):
		hspeed = (GM.vb(0.0, "hspeed") + 3.0)
	if ((vspeed > (GM.vb(0.0, "vspeed") + 5.0))):
		vspeed = (GM.vb(0.0, "vspeed") + 5.0)
