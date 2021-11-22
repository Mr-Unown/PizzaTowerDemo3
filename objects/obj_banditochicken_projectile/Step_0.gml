scr_collide()
if (vsp < 12 && vsp >= 10)
    vsp += grav
if scr_solid(x + sign(hsp),y + sign(vsp))
    instance_destroy();
