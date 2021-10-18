//DRAW
draw_self()
if (grounded && !scr_solid())
    draw_sprite(spr_grabicon, grabindex, x, (y - 25))
	
grabindex += 0.35
