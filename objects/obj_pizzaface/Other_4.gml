if (room != rank_room)
{
    x = (room_width / 2)
    y = -200
}
var oldmax = maxspeed
if (relax == 1 )
{
	can_countdown = true;
	if pizzafacetimer <= 0
	{
	scr_soundeffect(sfx_pizzaface)
    relax = 0
    maxspeed = 1
	}
}
else
    maxspeed = (oldmax - 0.04)
if (room == rank_room)
{
    with (instance_create(x, y, obj_shake))
        sprite_index = other.sprite_index
    instance_destroy()
}


