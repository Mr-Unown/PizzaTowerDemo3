
draw_self()
if (grounded && (!place_meeting(x, y, obj_solid)))
    draw_sprite(spr_grabicon, grabindex, x, (y - 25))
	
grabindex += 0.35
