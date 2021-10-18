hsp = _dir * 2
if !scr_slope_ext(x + _dir,y) && scr_solid(x + _dir,y)
{
    _dir *= -1
}	
if (outside_room == 0)
    out_timer -= 1
if scr_solid(x,y)
{
    recreate = 1
    maxspeed += 0.05
    x = median((x - maxspeed), xstart, (x + maxspeed))
    y = median((y - maxspeed), ystart, (y + maxspeed))
}
else
{
    out_timer = 0
    outside_room = 0
    maxspeed = 0
}
if (recreate == 1 && (!scr_solid()) && outside_room == 0)
{
    recreate = 0
	_dir = choose(1, -1)
    vsp = random_range(-2, -4)
}
scr_collide()



