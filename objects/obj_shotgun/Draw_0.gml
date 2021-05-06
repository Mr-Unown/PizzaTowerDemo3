if (grounded && (!place_meeting(x, y, obj_solid)))
    draw_sprite(spr_grabicon, grabindex, (x + 20), (y - 30))
draw_self()

grabindex += 0.35
