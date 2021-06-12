if (visible = true)
{
    x = xstart
    y = ystart
}
else
{
    x = -100
    y = -100
}

if (visible == true && obj_player.state != 4)
{
	#region Slip
if global.freezeframe = false
{
if place_meeting(x, (y - 1), obj_player1)
{
    with (obj_player1)
    {
        if (cutscene == 0) && state != states.frozen
        {
			if state != 60
			{
				var randomchance = irandom_range(0,100);
				if (randomchance < global.quipsfrequency)
				{
					scr_soundeffect(sfx_dizzy);
				}				
			}			
            if (state == 24)
                state = 18
            else if (state != 18)
                state = 60
            if (movespeed < 12)
                movespeed = 12
        }
    }
}
if place_meeting(x, (y - 1), obj_player2)
{
    with (obj_player2)
    {
        if (cutscene == 0) && state != states.frozen
        {
			if state != 60
			{
				var randomchance = irandom_range(0,100);
				if (randomchance < global.quipsfrequency)
				{
					scr_soundeffect(sfx_dizzy);
				}				
			}			
            if (state == 24)
                state = 18
            else if (state != 18)
                state = 60
            if (movespeed < 12)
                movespeed = 12
        }
    }
}
}
#endregion
}
if (visible == false && global.boxhp <= 5)
{
    visible = true
    repeat (4)
    {
        with (instance_create(x, y, obj_secretdebris))
        {
            sprite_index = spr_secretdebris
            tile_dataid = other.datas
            tile_dataset = other.set_ids
        }
    }
    if (!audio_is_playing(sfx_breakblock1))
        scr_soundeffect(3)
    mask_index = sprite_index
}


