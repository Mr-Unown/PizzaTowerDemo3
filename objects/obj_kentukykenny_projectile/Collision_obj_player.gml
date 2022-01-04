with (other.id)
{
    if (state != 114 && (!(state == 51 && instance_exists(parry_id)))) && global.freezeframe = false
    {
        if (character != "V")
        {
            if (state != states.firemouth && hurted == 0)
            {
                hsp = 0
                movespeed = 0
                hurted = 1
                image_index = 0
                sprite_index = spr_firemouthintro
                state = states.firemouth
				global.pausecombotime = true
				obj_tv.alarm[1] = 75;
                instance_destroy(other.id)
            }
        }
        else if (character == "V")
            scr_hurtplayer(id)
    }
}


