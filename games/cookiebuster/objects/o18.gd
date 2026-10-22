extends "res://games/cookiebuster/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 2.0
func ev_alarm_0():
	(GM.f_instance_create(0.0, 0.0, 12.0))
	(GM.f_instance_create(32.0, 96.0, 0.0))
	for _r19 in range(int(((15.0 + GM.G["levely"])))):
		(GM.f_instance_create(0.0, 0.0, 9.0))
	if ((absf(GM.G["levely"] - 1.0) < 0.00001)):
		(GM.f_instance_create(256.0, 192.0, 8.0))
		(GM.f_instance_create(352.0, 192.0, 8.0))
	if ((absf(GM.G["levely"] - 2.0) < 0.00001)):
		(GM.f_instance_create(256.0, 192.0, 10.0))
		(GM.f_instance_create(256.0, 256.0, 10.0))
		(GM.f_instance_create(352.0, 192.0, 10.0))
		(GM.f_instance_create(352.0, 256.0, 10.0))
	if ((absf(GM.G["levely"] - 3.0) < 0.00001)):
		(GM.f_instance_create(256.0, 192.0, 8.0))
		(GM.f_instance_create(352.0, 192.0, 8.0))
		(GM.f_instance_create(256.0, 256.0, 10.0))
		(GM.f_instance_create(352.0, 256.0, 10.0))
	if ((absf(GM.G["levely"] - 4.0) < 0.00001)):
		(GM.f_instance_create(256.0, 192.0, 19.0))
		(GM.f_instance_create(352.0, 192.0, 19.0))
		(GM.f_instance_create(256.0, 256.0, 10.0))
		(GM.f_instance_create(352.0, 256.0, 10.0))
	if ((absf(GM.G["levely"] - 5.0) < 0.00001)):
		(GM.f_instance_create(256.0, 256.0, 19.0))
		(GM.f_instance_create(352.0, 256.0, 19.0))
		(GM.f_instance_create(256.0, 192.0, 8.0))
		(GM.f_instance_create(352.0, 192.0, 8.0))
	if ((absf(GM.G["levely"] - 6.0) < 0.00001)):
		(GM.f_instance_create(256.0, 192.0, 8.0))
		(GM.f_instance_create(352.0, 192.0, 8.0))
		(GM.f_instance_create(256.0, 256.0, 8.0))
		(GM.f_instance_create(352.0, 256.0, 8.0))
	if ((absf(GM.G["levely"] - 7.0) < 0.00001)):
		(GM.f_instance_create(256.0, 192.0, 8.0))
		(GM.f_instance_create(352.0, 192.0, 8.0))
		(GM.f_instance_create(256.0, 256.0, 20.0))
		(GM.f_instance_create(352.0, 256.0, 20.0))
	if ((absf(GM.G["levely"] - 8.0) < 0.00001)):
		(GM.f_instance_create(256.0, 192.0, 10.0))
		(GM.f_instance_create(256.0, 256.0, 10.0))
		(GM.f_instance_create(256.0, 320.0, 10.0))
		(GM.f_instance_create(352.0, 192.0, 10.0))
		(GM.f_instance_create(352.0, 256.0, 10.0))
		(GM.f_instance_create(352.0, 320.0, 10.0))
	if ((absf(GM.G["levely"] - 9.0) < 0.00001)):
		(GM.f_instance_create(256.0, 192.0, 10.0))
		(GM.f_instance_create(256.0, 256.0, 19.0))
		(GM.f_instance_create(256.0, 320.0, 8.0))
		(GM.f_instance_create(352.0, 192.0, 10.0))
		(GM.f_instance_create(352.0, 256.0, 19.0))
		(GM.f_instance_create(352.0, 320.0, 8.0))
	if ((absf(GM.G["levely"] - 10.0) < 0.00001)):
		(GM.f_instance_create(256.0, 192.0, 19.0))
		(GM.f_instance_create(256.0, 256.0, 19.0))
		(GM.f_instance_create(256.0, 320.0, 19.0))
		(GM.f_instance_create(352.0, 192.0, 19.0))
		(GM.f_instance_create(352.0, 256.0, 19.0))
		(GM.f_instance_create(352.0, 320.0, 19.0))
	if ((absf(GM.G["levely"] - 11.0) < 0.00001)):
		(GM.f_instance_create(256.0, 192.0, 19.0))
		(GM.f_instance_create(256.0, 256.0, 19.0))
		(GM.f_instance_create(352.0, 192.0, 20.0))
		(GM.f_instance_create(352.0, 256.0, 20.0))
		(GM.f_instance_create(352.0, 320.0, 19.0))
		(GM.f_instance_create(256.0, 320.0, 10.0))
	if ((absf(GM.G["levely"] - 12.0) < 0.00001)):
		(GM.f_instance_create(256.0, 192.0, 10.0))
		(GM.f_instance_create(256.0, 256.0, 10.0))
		(GM.f_instance_create(352.0, 192.0, 20.0))
		(GM.f_instance_create(352.0, 256.0, 19.0))
		(GM.f_instance_create(352.0, 320.0, 20.0))
		(GM.f_instance_create(256.0, 320.0, 20.0))
	if ((absf(GM.G["levely"] - 13.0) < 0.00001)):
		(GM.f_instance_create(256.0, 192.0, 19.0))
		(GM.f_instance_create(256.0, 256.0, 20.0))
		(GM.f_instance_create(352.0, 192.0, 20.0))
		(GM.f_instance_create(352.0, 256.0, 20.0))
		(GM.f_instance_create(352.0, 320.0, 19.0))
		(GM.f_instance_create(256.0, 320.0, 19.0))
	if ((absf(GM.G["levely"] - 14.0) < 0.00001)):
		(GM.f_instance_create(256.0, 192.0, 10.0))
		(GM.f_instance_create(256.0, 256.0, 10.0))
		(GM.f_instance_create(352.0, 192.0, 20.0))
		(GM.f_instance_create(352.0, 256.0, 19.0))
		(GM.f_instance_create(352.0, 320.0, 20.0))
		(GM.f_instance_create(256.0, 320.0, 20.0))
	if ((absf(GM.G["levely"] - 15.0) < 0.00001)):
		(GM.f_instance_create(256.0, 192.0, 19.0))
		(GM.f_instance_create(256.0, 256.0, 19.0))
		(GM.f_instance_create(352.0, 192.0, 20.0))
		(GM.f_instance_create(352.0, 256.0, 20.0))
		(GM.f_instance_create(352.0, 320.0, 19.0))
		(GM.f_instance_create(256.0, 320.0, 10.0))
	if ((absf(GM.G["levely"] - 16.0) < 0.00001)):
		(GM.f_instance_create(256.0, 192.0, 10.0))
		(GM.f_instance_create(256.0, 256.0, 10.0))
		(GM.f_instance_create(352.0, 192.0, 20.0))
		(GM.f_instance_create(352.0, 256.0, 19.0))
		(GM.f_instance_create(352.0, 320.0, 8.0))
		(GM.f_instance_create(256.0, 320.0, 8.0))
	if ((absf(GM.G["levely"] - 17.0) < 0.00001)):
		(GM.f_instance_create(256.0, 192.0, 19.0))
		(GM.f_instance_create(256.0, 256.0, 19.0))
		(GM.f_instance_create(352.0, 192.0, 20.0))
		(GM.f_instance_create(352.0, 256.0, 20.0))
		(GM.f_instance_create(352.0, 320.0, 19.0))
		(GM.f_instance_create(256.0, 320.0, 10.0))
	if ((absf(GM.G["levely"] - 18.0) < 0.00001)):
		(GM.f_instance_create(256.0, 192.0, 10.0))
		(GM.f_instance_create(256.0, 256.0, 10.0))
		(GM.f_instance_create(352.0, 192.0, 20.0))
		(GM.f_instance_create(352.0, 256.0, 19.0))
		(GM.f_instance_create(352.0, 320.0, 20.0))
		(GM.f_instance_create(256.0, 320.0, 20.0))
	if ((absf(GM.G["levely"] - 19.0) < 0.00001)):
		(GM.f_instance_create(256.0, 192.0, 8.0))
		(GM.f_instance_create(256.0, 256.0, 19.0))
		(GM.f_instance_create(352.0, 192.0, 8.0))
		(GM.f_instance_create(352.0, 256.0, 20.0))
		(GM.f_instance_create(352.0, 320.0, 19.0))
		(GM.f_instance_create(256.0, 320.0, 8.0))
	if ((absf(GM.G["levely"] - 20.0) < 0.00001)):
		(GM.f_instance_create(256.0, 192.0, 20.0))
		(GM.f_instance_create(256.0, 256.0, 19.0))
		(GM.f_instance_create(352.0, 192.0, 20.0))
		(GM.f_instance_create(352.0, 256.0, 19.0))
		(GM.f_instance_create(352.0, 320.0, 20.0))
		(GM.f_instance_create(256.0, 320.0, 20.0))
	if (((absf(GM.G["levely"] - 21.0) < 0.00001))):
		GM.G["levely"] = 1.0
		GM.score = 0.0
		GM.lives = 5.0
		await GM.f_show_message("You really good at this game arent you...")
		(GM.f_room_goto(4.0))
