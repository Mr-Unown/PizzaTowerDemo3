if instance_exists(obj_water) && y > obj_water.bbox_top
{
	if !scr_solid(x,y - 1)
		vsp = -8
}
else if instance_exists(obj_water) && y == obj_water.bbox_top
{
		vsp = 0
}
else if instance_exists(obj_water) && y < obj_water.bbox_top
{
	if !scr_solid(x, y + 1) 
		vsp = 8
}

#region Vertical
repeat(abs(vsp)) 
{
    if !scr_solid(x, y + sign(vsp))
        y += sign(vsp); 
    else {
        vsp = 0;
        break;
    }
}
#endregion

#region Platforming
var platform_y = y;
for (var i = 0; i < array_length(objects) - 1; ++i) 
{
	with objects[i]
	{
		var old_y = bbox_bottom;
		var scr = (id == obj_player ? scr_solid_player : scr_solid)
		if (place_meeting(x - other.hsp,y, other.id) || place_meeting(x,y + other.vsp + 1, other.id)) && old_y <= platform_y + 8
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
				other.touching = true
			}
		}
	}
}
#endregion