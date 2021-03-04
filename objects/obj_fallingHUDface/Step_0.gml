if (vsp < 12)
    vsp += grav
image_speed = 0.35
xx += hsp
yy += floor(vsp)
if (yy > (room_height + 500))
    instance_destroy()


