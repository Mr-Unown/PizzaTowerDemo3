with (other.id)
{
    if (state != 114 && (!(state == 51 && instance_exists(parry_id))))
    {
        if (character != "V")
        {
            if (state != 24 && hurted == 0)
            {
                scr_soundeffect(1)
				var randomchance = irandom_range(0,100);
				if (randomchance < global.quipsfrequency) && !audio_is_playing(sfx_lightning)
				{
					scr_soundeffect(sfx_lightning);
				}				
                hsp = 0
                movespeed = 0
                state = 24
                image_index = 0
                sprite_index = spr_knightpepthunder
                instance_destroy(other.id)
            }
        }
        else if (character == "V")
            scr_hurtplayer(id)
    }
}


