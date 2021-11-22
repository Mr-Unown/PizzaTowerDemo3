//Rail Shit
var rail = 0;
if grounded
	rail = ( place_meeting(x,y+1,obj_railh) ? -5 : (place_meeting(x,y+1,obj_railh2) ? 5 : 0) );
else
	rail = 0	
hsp = (_dir * 2) + rail;
if !scr_slope_ext(x + _dir,y) && scr_solid(x + _dir,y)//place_meeting((x + _dir), y, obj_solid)
{
    _dir *= -1
}

scr_collide()


