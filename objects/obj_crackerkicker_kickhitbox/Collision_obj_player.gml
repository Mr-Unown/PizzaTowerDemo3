with (other.id)
{
    if (instance_exists(other.baddieID) && ((state != 109) && ((state != 100) && (state != 112))))
    {
        state = 109
        xscale = other.baddieID.image_xscale
        movespeed = 14
        vsp = 0
        sprite_index = spr_tumble
    }
}

