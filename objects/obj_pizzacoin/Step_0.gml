hsp = (_dir * 2);
if !scr_slope_ext(x + _dir,y) && scr_solid(x + _dir,y)//place_meeting((x + _dir), y, obj_solid)
{
    _dir *= -1
}

scr_collide()


