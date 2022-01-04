//Water
in_water = (instance_exists(obj_water) && obj_water.bbox_top < y);
if in_water = true
{
    if chance(0.99) == false
	{
		with instance_create(x , y, obj_waterbubble)
			depth = other.depth - 5
	}
}