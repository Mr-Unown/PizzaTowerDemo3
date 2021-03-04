var size = random_range(0.6, 1.2)
with (other)
{
    if (state == 24 || state == 25)
    {
        repeat (8)
        {
            with (instance_create((other.x + random_range(-5, 5)), (other.y + random_range(-5, 5)), obj_slimedebris))
            {
                image_xscale = size
                image_yscale = image_xscale
            }
        }
        instance_destroy(other.id)
    }
    else
    {
        xscale = other.image_xscale
        hsp = other.hsp
        vsp = other.vsp
        x = other.x
        y = other.y
        state = 11
        repeat (8)
        {
            with (instance_create((other.x + random_range(-5, 5)), (other.y + random_range(-5, 5)), obj_slimedebris))
            {
                image_xscale = size
                image_yscale = image_xscale
            }
        }
        instance_destroy(other.id)
    }
}


