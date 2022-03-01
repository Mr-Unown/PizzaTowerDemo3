function scr_player_tumble() {
	if sprite_index != spr_player_sjumpcancel
	hsp = (xscale * movespeed)
	else
	hsp = (xscale * movespeed)
	if (sprite_index == spr_tumblestart)
	{
	    movespeed = 6
	}
	if (sprite_index == spr_player_sjumpcancel)
	    movespeed = 12
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
	if ((!scr_slope()) && sprite_index == spr_tumblestart && floor(image_index) < 11)
	    image_index = 11
	if (sprite_index == spr_tumblestart && floor(image_index) == (image_number - 1))
	{
	    sprite_index = spr_tumble
		movespeed = 14
	}
	if (sprite_index == spr_player_sjumpcancel /*&& floor(image_index) == (image_number - 1)*/)
	    image_speed = .35
	if (sprite_index == spr_player_sjumpcancelslide && movespeed >= 0)
	    movespeed -= 0.15
	if (sprite_index == spr_player_sjumpcancelslide && movespeed <= 0)
	    state = 0
	if (sprite_index == spr_player_sjumpcancelslide && key_attack)
	{
	    state = states.mach2
		sprite_index = spr_rollgetup
	}
	if (grounded && sprite_index == spr_player_sjumpcancel)
	{
		sprite_index = spr_player_sjumpcancelland
		image_index = 0
		movespeed = 11
	}
	if (sprite_index == spr_player_sjumpcancelland && floor(image_index) == (image_number - 1))
	    sprite_index = spr_player_sjumpcancelslide
	if (scr_solid((x + xscale), y) && !scr_slope_ext(x + sign(hsp),y) && (!place_meeting((x + sign(hsp)), y, obj_destructibles)))
	{
		hsp = 0
		movespeed = 0
		image_index = 0
		if (sprite_index == spr_tumble || sprite_index == spr_tumblestart)
		{
		    scr_soundeffect(sfx_tumble4)
		    sprite_index = spr_tumbleend
		    state = 72
		}
		else if (sprite_index == spr_player_sjumpcancelslide || sprite_index == spr_player_sjumpcancelland || sprite_index == spr_player_sjumpcancel)
		    state = 0
	}
	if key_jump && sprite_index != spr_player_sjumpcancelland && sprite_index != spr_player_sjumpcancelslide
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
	if (sprite_index != spr_player_sjumpcancel)
	{
		if sprite_index != spr_tumble
		image_speed = 0.5
		else
		image_speed = (movespeed/14) * 0.8
	}



}
