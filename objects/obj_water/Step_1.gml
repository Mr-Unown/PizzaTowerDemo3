/*
//Run
if (obj_player.state == 91)
{
    with (instance_place(x, (y - 1), obj_player))
    {
        repeat (5)
        {
            with (instance_create(((x - (xscale * 30)) + random_range(-5, 5)), ((y + 40) + random_range(-5, 5)), obj_slimedebris))
            {
                sprite_index = spr_waterdrop
                image_alpha = 0.392
            }
        }
    }
}
*/
//Moving
if y != targety
{
	if _speed = undefined
	{
		vsp = 8 * sign(y - targety);
		_speed = 8;
	}
	y = approach(y,targety,_speed)
	
}
else
{
	vsp = 0;
	_speed = undefined
}
//Moving Platform Fork
#region Platforming
var platform_y = y;
with obj_player
{
	var old_y = bbox_bottom;
	var scr = scr_solid_player
	if (place_meeting(x,y, other.id) || place_meeting(x,y + other.vsp + 1, other.id)) && old_y <= platform_y + 8 && (state == states.mach3 || state == states.backbreaker || (state == states.jetpack && vsp = 0) || sprite_index == spr_mach3boost)
	{
		//Vertical
		var vcheck = script_execute(scr,x,y + other.vsp);
		if vcheck == false || (vcheck = true && place_meeting(x,y+other.vsp,obj_platform))
		{
			y += other.vsp
			if other.vsp > 0
			{
				vsp = other.vsp;
			}
			grounded = true;
		}
	}
}

#endregion