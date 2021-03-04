if instance_exists(baddieid)
{
    if (baddieid.object_index == obj_bigcheese)
    {
        depth = baddieid.depth
        with (baddieid)
        {
            if (sprite_index == spr_bigcheese_walk)
            {
                if (floor(image_index) == 0)
                {
                    other.y = y
                    other.x = x
                }
                if (floor(image_index) == 1)
                {
                    other.y = y
                    other.x = (x - 2)
                }
                if (floor(image_index) == 2)
                {
                    other.y = (y + 1)
                    other.x = (x - 3)
                }
                if (floor(image_index) == 3)
                {
                    other.y = (y + 1)
                    other.x = (x - 2)
                }
                if (floor(image_index) == 4)
                {
                    other.y = (y + 2)
                    other.x = (x - 2)
                }
                if (floor(image_index) == 5)
                {
                    other.y = (y + 1)
                    other.x = (x - 1)
                }
                if (floor(image_index) == 6)
                {
                    other.y = (y + 1)
                    other.x = x
                }
                if (floor(image_index) == 7)
                {
                    other.y = y
                    other.x = (x + 2)
                }
                if (floor(image_index) == 8)
                {
                    other.y = (y - 1)
                    other.x = (x + 2)
                }
                if (floor(image_index) == 9)
                {
                    other.y = y
                    other.x = x
                }
            }
            else
            {
                other.y = y
                other.x = x
            }
        }
    }
    else
    {
        x = baddieid.x
        y = baddieid.y
    }
    image_xscale = baddieid.image_xscale
}
else
    instance_destroy()


