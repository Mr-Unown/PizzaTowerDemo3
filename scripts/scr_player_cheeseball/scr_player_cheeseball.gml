function scr_player_cheeseball() {
	var size = random_range(0.6, 1.2)
	hsp = (xscale * movespeed)
	//Slopes stolen from machroll
	if scr_slope() && vsp >= 0
	{
		if place_meeting(x, y + 1,obj_slope)
		{
			with (instance_place(x, (y + 1), obj_slope))
			{
				var slope_acceleration = abs(image_yscale) / abs(image_xscale)
				if other.xscale == sign(image_xscale)
				{
					if other.movespeed > 0 
						other.movespeed -= (0.25 * slope_acceleration)
					if other.movespeed <= 0
					{
						other.xscale = -sign(image_xscale)
					}						
				}
				else if other.movespeed < 20 && other.xscale == -sign(image_xscale)
					other.movespeed += (0.25 * slope_acceleration)

			}
		}
		if tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.leftslope1 || tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.leftslope2 || tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.leftsteepslope || tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.rightsteepslope || tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.rightslope1 || tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.rightslope2
		{
			var _slope = scr_tileslope(x, y + 1)
			if _slope[0] != noone
			{
				var _xscale = _slope[1]
				var _yscale = _slope[2]
				var slope_acceleration = abs(_yscale) / abs(_xscale)
				if other.movespeed > 0 && other.xscale == sign(_xscale)
				{
					other.movespeed -= (0.25 * slope_acceleration)
				}
				else if other.movespeed < 22 && other.xscale == -sign(_xscale)
					other.movespeed += (0.25 * slope_acceleration)
				if other.movespeed <= 0
				other.xscale = -sign(_xscale)
			}
			
		}
	}	
	if ((!scr_slope()) && instance_place((x + sign(hsp)), y, obj_solid))
	{
	    /*scr_soundeffect(sfx_bumpwall)
	    scr_soundeffect(sfx_loseknight)
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
	    state = 72*/
		vsp = -movespeed
		hsp = 0
		if key_jump
		{
		xscale = -xscale
		}
	}
	if instance_place(x, y - 1, obj_solid) && hsp = 0
	{
		scr_soundeffect(sfx_bumpwall)
	    scr_soundeffect(sfx_loseknight)
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
	if instance_place(x, y, obj_water)
	{
	    scr_soundeffect(sfx_loseknight)
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
	sprite_index = spr_pepcheeseball
	if key_jump
	    input_buffer_jump = 0
	if (input_buffer_jump < 8 && grounded)
	{
	    instance_create(x, y, obj_highjumpcloud2)
	    scr_soundeffect(sfx_jump)
	    vsp = -5
	}
	image_speed = (movespeed/14) * 0.5


}
