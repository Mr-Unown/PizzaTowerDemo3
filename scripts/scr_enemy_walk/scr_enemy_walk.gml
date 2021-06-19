var _movespeed = movespeed + (global.heatmeter * sign(movespeed)), _image_speed = 0.35 + ((global.heatmeter) * 0.05)
if (grounded && (!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
    hsp = (image_xscale * _movespeed)
else if ((sprite_index == spr_indiancheese_land || sprite_index == spr_indiancheese_jump) && (!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
    hsp = (image_xscale * _movespeed)
else if object_index = obj_ufoolive
	hsp = (image_xscale * _movespeed)
else if (grounded && place_meeting(x, (y + 1), obj_railh))
    hsp = ((image_xscale * _movespeed) - 5)
else if (grounded && place_meeting(x, (y + 1), obj_railh2))
    hsp = ((image_xscale * _movespeed) + 5)
else if (object_index != obj_ancho)
    hsp = 0
if (object_index != obj_indiancheese && object_index != obj_spitcheese)
    sprite_index = walkspr
else if (object_index == obj_spitcheese)
{
}
else if (sprite_index == scaredspr)
    sprite_index = walkspr
image_speed = _image_speed
if ((scr_solid((x + 1), y) && image_xscale == 1) || (scr_solid((x - 1), y) && image_xscale == -1) || place_meeting((x + hsp), y, obj_hallway)) 
{
    if (!place_meeting((x + sign(hsp)), y, obj_slope)) && grounded
    {
        if (object_index == obj_forknight)
        {
            image_xscale *= -1
            image_index = 0
            sprite_index = spr_forknight_turn
            state = 94
        }
		else if (object_index == obj_noisey)
        {
            image_xscale *= -1
            image_index = 0
            sprite_index = spr_noisey_turn
            state = 94
        }
        else if grounded
            image_xscale *= -1
    }
	else if object_index = obj_ufoolive && (!place_meeting((x + sign(hsp)), y, obj_slope))
		image_xscale *= -1
}
if (object_index != obj_ancho) && object_index != obj_ufoolive
{
    if (!(scr_solid((x + (image_xscale * 15)), (y + 31)) || place_meeting((x + (image_xscale * 15)), (y + 31), obj_platform)))
    {
        if (movespeed > 0 && grounded)
        {
            if (object_index == obj_ninja)
            {
                vsp = -11
                image_index = 0
                image_xscale = (-sign((x - obj_player.x)))
                state = 96
            }
            else if (object_index == obj_forknight)
            {
                image_xscale *= -1
                image_index = 0
                sprite_index = spr_forknight_turn
                state = 94
            }
			else if (object_index == obj_noisey)
			{
				image_xscale *= -1
				image_index = 0
				sprite_index = spr_noisey_turn
				state = 94
			}			
            else
                image_xscale *= -1
        }
    }
}
