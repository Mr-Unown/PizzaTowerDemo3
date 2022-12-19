if (state != 101)
    scr_collide()

if thrown && object_index != obj_applejim
	instance_create(x, y, obj_baddiethrow)


if place_meeting((x + 1), y, obj_baddiethrow) && !thrown
	instance_destroy()
	
if place_meeting((x + 1), y, obj_player) &&  obj_player.state == 109 && object_index != obj_crackerkicker
	instance_destroy()
if place_meeting((x + 1), y, obj_player) &&  obj_player.state == 114
	instance_destroy()