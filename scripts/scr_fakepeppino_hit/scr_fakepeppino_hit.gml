function scr_fakepeppino_hit() {
	hsp = (image_xscale * movespeed)
	if (!instance_exists(obj_fadeout))
	{
	    if (place_meeting(x, y, playerid) && playerid.state != 57 && playerid.state != 61)
	    {
	        with (playerid)
	        {
	            if (state != 75 && hurted == 0 && cutscene == 0 && state != 74)
	            {
	                if (state != 51)
	                {
	                    state = 51
	                    sprite_index = spr_hurt
	                    if (scr_solid((x - 1), y) && (!place_meeting((x - 1), y, obj_slope)) && scr_solid((x + 1), y) && (!place_meeting((x + 1), y, obj_slope)))
	                        x = other.x
	                    else if (scr_solid((x + 1), y) && other.image_xscale == 1 && (!place_meeting((x + 1), y, obj_slope)))
	                    {
	                        x = (other.x + -50)
	                        other.image_xscale = -1
	                    }
	                    else if (scr_solid((x - 1), y) && other.image_xscale == -1 && (!place_meeting((x - 1), y, obj_slope)))
	                    {
	                        x = (other.x + 50)
	                        other.image_xscale = 1
	                    }
	                    else
	                        x = (other.x + (other.image_xscale * 50))
	                    y = other.y
	                    vsp = 0
	                    hsp = 0
	                }
	                with (other.id)
	                {
	                    if (sprite_index != spr_fakepeppino_grabattack)
	                    {
	                        image_index = 0
	                        sprite_index = spr_fakepeppino_grabattack
	                        movespeed = 0
	                    }
	                }
	            }
	        }
	    }
	    if (floor(image_index) == (image_number - 1) && sprite_index == spr_fakepeppino_grabdash)
	    {
	        state = 94
	        image_index = 0
	        sprite_index = spr_fakepeppino_idle
	        movespeed = 0
	    }
	    if (sprite_index == spr_fakepeppino_grabattack && floor(image_index) == (image_number - 1))
	    {
	        with (playerid)
	        {
	            scr_hurtplayer(id)
	            x = other.x
	        }
	        state = 94
	        sprite_index = spr_fakepeppino_idle
	        image_index = 0
	    }
	}
	else
	{
	    state = 94
	    image_index = 0
	    sprite_index = spr_fakepeppino_idle
	    movespeed = 0
	}
	age_index = 0



}
