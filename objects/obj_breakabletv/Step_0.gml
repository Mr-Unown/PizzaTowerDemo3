event_inherited()
if (thrown == 1 && hp <= 0)
{
	
    if (scr_solid(x - image_xscale, y) && (!place_meeting((x - image_xscale), y, obj_destructibles)))
        instance_destroy()
    if ((grounded || (grounded && (!place_meeting(x, y, obj_platform)))) && vsp > 0)
        instance_destroy()
}
if (vsp > 0 && grounded)
    hsp = 0
if (grabbed == 0)
{
    depth = 4
    grav = 0.5
}



