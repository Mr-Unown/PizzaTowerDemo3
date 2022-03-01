function scr_player_slipbanana()
{
    hsp = (xscale * movespeed)
    if place_meeting((x + xscale), y, obj_solid)
	{
    with instance_create(x,y,obj_balloonpop)
				sprite_index = spr_bangeffect
			xscale = -xscale
			sprite_index = spr_rockethitwall
	}
    if (sprite_index == spr_slipbanana1 || sprite_index == spr_rockethitwall)
    {
        if (grounded && vsp > -1)
        {
			if sprite_index == spr_slipbanana1
			{
				sprite_index = spr_rockethitwall
				image_index = 0
				image_speed = 0.35
				vsp = -6
				with instance_create(x,y,obj_balloonpop)
					sprite_index = spr_bangeffect
			}
			else
			{
            sprite_index = spr_slipbanana2
            image_index = 0
            image_speed = 0.35
			}
        }
    }
    else if (sprite_index == spr_slipbanana2)
    {
        image_speed = 0.35
		movespeed -= 0.5
		if movespeed <= 0
            state = states.normal
		if !grounded
			sprite_index = spr_rockethitwall
    }
	if (floor(image_index) == (image_number - 1) && (sprite_index = spr_slipbanana1 || sprite_index = spr_slipbanana2))
            image_speed = 0
        else if sprite_index = spr_rockethitwall
			image_speed = clamp((movespeed/15),.3,1) * 0.6
		else
            image_speed = 0.35
    return;
}