with (other.id)
{
    if (cutscene == 0)
    {
        if (state != 60 && grounded)
        {
			if state != 60
			{
				var randomchance = irandom_range(0,100);
				if (randomchance < global.quipsfrequency)
				{
					scr_soundeffect(sfx_dizzy);
				}				
			}			
            state = 60
            if (movespeed < 12)
                movespeed = 12
            var playerhsp = (hsp / 4)
            repeat (4)
            {
                with (instance_create((x + random_range(-5, 5)), ((y + random_range(-5, 5)) + 32), obj_slimedebris))
                {
                    sprite_index = spr_waterdrop
                    hsp = (initialhsp + playerhsp)
                    image_alpha = 0.392
                }
            }
        }
    }
}


