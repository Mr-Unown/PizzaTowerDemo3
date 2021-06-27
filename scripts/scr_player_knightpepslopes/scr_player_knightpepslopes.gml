var _movespeed = movespeed + knightslidespeed
if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
    hsp = (xscale * _movespeed)
else if place_meeting(x, (y + 1), obj_railh)
    hsp = ((xscale * _movespeed) - 5)
else if place_meeting(x, (y + 1), obj_railh2)
    hsp = ((xscale * _movespeed) + 5)
alarm[5] = 2
alarm[7] = 60
hurted = 1
if (sprite_index == spr_knightpepdownslope)
    movespeed = clamp(movespeed,15,movespeed + 100)
if (!scr_slope())
    sprite_index = spr_knightpepcharge
if scr_slope()
    sprite_index = spr_knightpepdownslope
if (scr_solid((x + sign(hsp)), y) && (!place_meeting((x + sign(hsp)), y, obj_destructibles)))
{
    if (character == "P")
    {
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
    }
    else if (character == "N")
    {
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
        obj_player.hsp = (sign((x - other.x)) * 5)
    else
        obj_player.hsp = 5
    vsp = -3
    scr_soundeffect(16)
    scr_soundeffect(17)
    image_index = 0
    obj_player.image_index = 0
    obj_player.flash = 1
    state = 72
}
if (movespeed <= 0 && sprite_index == spr_knightpepcharge)
{
    sprite_index = spr_knightpepidle
    state = 24
}
image_speed = 0.4
