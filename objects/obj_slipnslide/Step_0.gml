
if (drop == 1)
{
    if (vsp < 12)
        vsp += grav
    x += hsp
    y += floor(vsp)
}
if (scr_solid(x, (y + 1)) && drop == 0)
    hsp = 0
if (banana == 4)
    instance_destroy()
if (obj_player.state == 77 && grounded && drop == 0)
{
    if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
    {
        drop = 1
        vsp = -5
    }
}
//Remove Objects once Baddie died
if drop = 0 && !instance_exists(baddieID) && droppedbybaddie = true
{
	instance_destroy()
}
