with (other)
{
    if (other.hurtplayer == 0)
    {
        if (key_jump2 && !scr_transformationcheck(id) && cutscene == 0 && state != 114 && state != 113) && character = "V"
        {
            vsp = -20
            if (state == 0 || state == 58 || hsp == 0)
            {
                sprite_index = spr_playerV_superjump
                state = 58
            }
            image_index = 0
            jumpAnim = 1
            jumpstop = 1
            other.hurtplayer = 1
        }
    }
}


