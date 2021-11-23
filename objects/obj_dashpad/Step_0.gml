scr_collide()
var rail = 0;
if grounded
	rail = ( place_meeting(x,y+1,obj_railh) ? -5 : (place_meeting(x,y+1,obj_railh2) ? 5 : 0) )
hsp = rail

if (global.panic == 1 && turned == 0) && can_turn = 1
{
    image_xscale *= -1
    turned = 1
}