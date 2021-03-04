with (obj_player)
{
    if (place_meeting(x, (y + 1), obj_tomatoblock) && state != 55)
    {
        stompAnim = 0
        jumpAnim = 1
        if (key_jump2 && state != 91)
        {
            vsp = -20
            if (state == 58)
                sprite_index = spr_tomatojump
        }
        else
        {
            vsp = -12
            if (state == 58)
                sprite_index = spr_fall
        }
        with (instance_place(x, (y + 1), obj_tomatoblock))
        {
            image_index = 0
            image_speed = 0.35
        }
    }
}


