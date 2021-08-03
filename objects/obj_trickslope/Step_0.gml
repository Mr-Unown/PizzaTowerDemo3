with (obj_player)
{
    if place_meeting(x, y + 1, obj_trickslope)
    {
        if (state = states.mach2 || state = states.mach3)
        {
			//var _xscale = sign(other.image_xscale)
			if key_jump2 || (!scr_solid(x + sign(hsp),y) && place_meeting(x, y + 1, obj_trickslope))
			{
				state = states.trick
				vsp = -15
				if (character != "V")
					sprite_index = spr_mach2jump
                else
					sprite_index = spr_playerV_spinjump1   
                suplexmove = 0
			}
        }
    }
}


