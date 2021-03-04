depth = 1
solidid = noone
if (image_xscale == 1)
{
    with (instance_create(x, y, obj_solid)) {
		other.solidid = id
        image_yscale = 2
	}
}
if (image_xscale == -1)
{
    with (instance_create((x - 32), y, obj_solid)) {
		other.solidid = id
        image_yscale = 2
	}
}


