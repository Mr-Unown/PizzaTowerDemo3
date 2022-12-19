scr_collide()
if place_meeting((x + 1), y, obj_baddiethrow) && !thrown
	instance_destroy()
	
if place_meeting((x + 1), y, obj_player) &&  obj_player.state == 109 && object_index != obj_crackerkicker
	instance_destroy()
if place_meeting((x + 1), y, obj_player) &&  obj_player.state == 114
	instance_destroy()