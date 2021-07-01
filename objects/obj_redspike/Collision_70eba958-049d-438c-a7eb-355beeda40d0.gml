var size = random_range(0.6, 1.2)
with (other)
{
    if (cutscene == 0)
    {
        if (state == 24 || state == 18 || state == 25)
        {
            if (character == "P")
            {
				#region Peppino
                with (instance_create(x, y, obj_knightdebris))
                {
                    image_index = 0
                    sprite_index = spr_knightdebris
                }
                with (instance_create(x, y, obj_knightdebris))
                {
                    image_index = 1
                    sprite_index = spr_knightdebris
                }
                with (instance_create(x, y, obj_knightdebris))
                {
                    image_index = 2
                    sprite_index = spr_knightdebris
                }
                with (instance_create(x, y, obj_knightdebris))
                {
                    image_index = 3
                    sprite_index = spr_knightdebris
                }
                with (instance_create(x, y, obj_knightdebris))
                {
                    image_index = 4
                    sprite_index = spr_knightdebris
                }
                with (instance_create(x, y, obj_knightdebris))
                {
                    image_index = 5
                    sprite_index = spr_knightdebris
                }
				#endregion
				
            }
            else if (character == "N")
            {
				#region Noise
                with (instance_create(x, y, obj_knightdebris))
                {
                    image_index = 0
                    sprite_index = spr_playerN_knightarmor
                }
                with (instance_create(x, y, obj_knightdebris))
                {
                    image_index = 1
                    sprite_index = spr_playerN_knightarmor
                }
                with (instance_create(x, y, obj_knightdebris))
                {
                    image_index = 2
                    sprite_index = spr_playerN_knightarmor
                }
                with (instance_create(x, y, obj_knightdebris))
                {
                    image_index = 3
                    sprite_index = spr_playerN_knightarmor
                }
				#endregion
            }
            else if (character == "PZ")
            {
				#region Pizzelle
				for (var i = 0; i < sprite_get_number(spr_playerPZ_knightdebris) - 1; ++i) 
				{
					with (instance_create(x, y, obj_knightdebris))
					{
						image_index = i
						sprite_index = spr_playerPZ_knightdebris
					}
				}
				#endregion
            }			
            else
            {
                repeat (6)
                    instance_create(x, y, obj_metaldebris)
            }
            if (x != other.x)
                hsp = (sign((x - other.x)) * 5)
            else
                hsp = 5
            vsp = -3
            scr_soundeffect(16)
            scr_soundeffect(17)
            image_index = 0
            image_index = 0
            flash = 1
            state = 72
        }
        else if (state == 15)
        {
            scr_soundeffect(16)
            scr_soundeffect(17)
            with (instance_create(x, y, obj_boxxeddebris))
                image_index = 0
            with (instance_create(x, y, obj_boxxeddebris))
                image_index = 1
            with (instance_create(x, y, obj_boxxeddebris))
                image_index = 2
            with (instance_create(x, y, obj_boxxeddebris))
                image_index = 3
            with (instance_create(x, y, obj_boxxeddebris))
                image_index = 4
            if (x != other.x)
                hsp = (sign((x - other.x)) * 5)
            else
                hsp = 5
            vsp = -3
            image_index = 0
            image_index = 0
            flash = 1
            state = 72
        }
        else if (state == 11 || state == 13 || state == 14)
        {
            scr_soundeffect(16)
            scr_soundeffect(17)
            scr_soundeffect(8)
            grav = 0.5
            repeat (8)
            {
                with (instance_create((other.x + random_range(-5, 5)), (other.y + random_range(-5, 5)), obj_slimedebris))
                {
                    image_xscale = size
                    image_yscale = image_xscale
                }
            }
            if (x != other.x)
                hsp = (sign((x - other.x)) * 5)
            else
                hsp = 5
            vsp = -3
            visible = true
            image_index = 0
            image_index = 0
            flash = 1
            state = 72
        }
        else if (state != 72)
            scr_hurtplayer(id)
    }
}


