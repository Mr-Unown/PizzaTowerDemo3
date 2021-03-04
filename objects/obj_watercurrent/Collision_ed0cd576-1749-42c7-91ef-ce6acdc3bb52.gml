with (other)
{
    if (state != 87)
    {
        if (movespeed <= 3 || xscale == sign(other.image_xscale))
        {
            sprite_index = spr_slipnslide
            state = 87
            xscale = sign(other.image_xscale)
        }
        else if (movespeed > 3)
            movespeed--
    }
}

