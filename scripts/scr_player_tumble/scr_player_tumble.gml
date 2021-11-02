function scr_player_tumble() {
	hsp = (xscale * movespeed)
	if (sprite_index == spr_tumblestart)
	    movespeed = 6
	if (key_down2 && (!key_jump2))
	    vsp = 10
	//Slopes
	if scr_slope() && vsp >= 0
	{
		if place_meeting(x, y + 1,obj_slope)
		{
			with (instance_place(x, (y + 1), obj_slope))
			{
				var slope_acceleration = abs(image_yscale) / abs(image_xscale)
				if other.movespeed > 8 && other.xscale == sign(image_xscale)
				{
					other.movespeed -= (0.25 * slope_acceleration)
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
				if other.movespeed > 8 && other.xscale == sign(_xscale)
				{
					other.movespeed -= (0.25 * slope_acceleration)
				}
				else if other.movespeed < 20 && other.xscale == -sign(_xscale)
					other.movespeed += (0.25 * slope_acceleration)				
			}
		}
	}	
	if ((!scr_slope()) && sprite_index == spr_tumblestart && floor(image_index) < 11)
	    image_index = 11
	if (sprite_index == spr_tumblestart && floor(image_index) == (image_number - 1))
	{
	    sprite_index = spr_tumble
		movespeed = 14
	}
	if (scr_solid((x + xscale), y) && !scr_slope_ext(x + sign(hsp),y) && (!place_meeting((x + sign(hsp)), y, obj_destructibles)))
	{
	    scr_soundeffect(sfx_tumble4)
	    hsp = 0
	    movespeed = 0
	    sprite_index = spr_tumbleend
	    state = 72
	    image_index = 0
	}
	if key_jump
	    input_buffer_jump = 0
	if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
	{
	    vsp /= 2
	    jumpstop = 1
	}
	if (grounded && vsp > 0)
	    jumpstop = 0
	if (input_buffer_jump < 8 && grounded && hsp != 0)
	    vsp = -9
	if sprite_index != spr_tumble	
	image_speed = 0.35
	else
	image_speed = (movespeed/14) * 0.35



}
