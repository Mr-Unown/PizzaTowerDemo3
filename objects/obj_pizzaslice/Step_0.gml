hsp = (_dir * 2);
if !scr_slope_ext(x + _dir,y) && scr_solid(x + _dir,y)
    _dir *= -1
if grounded && safer = false
safer = true
if y > (room_height * 1.3) && ystart <= room_height * 1.3
{
	if safer = false
		instance_destroy()
	else
	{
		x = xstart;
		y = ystart;
		_dir = choose(1,-1);
		safer = false
	}
}
scr_collide()



