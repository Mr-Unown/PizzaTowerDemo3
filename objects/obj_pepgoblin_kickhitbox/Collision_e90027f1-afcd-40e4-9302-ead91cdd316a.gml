with (other.id)
{
    if (state != 114 && (!(state == 51 && instance_exists(parry_id))))
    {
        if (instance_exists(other.baddieID) && state != 2 && state != 24 && state != 86 && state != 7 && state != 18)
        {
            state = 2
            xscale = other.baddieID.image_xscale
            movespeed = 14
            vsp = 0
            sprite_index = spr_tumble
        }
    }
}

