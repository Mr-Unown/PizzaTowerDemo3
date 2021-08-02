

//Schmoving
hsp = lengthdir_x(movespeed,_direction);
vsp = lengthdir_y(movespeed,_direction);
x += hsp
y += vsp

//Collide with Triggers
if place_meeting(x + sign(hsp),y + sign(vsp),obj_movingplatformtrigger)
{
	with instance_place(x + sign(hsp),y+sign(vsp),obj_movingplatformtrigger)
		other._direction = image_angle
}

#region Platforming
var platform_y = y;
for (var i = 0; i < array_length_1d(objects) - 1; ++i) 
{
	with objects[i]
	{
		var old_y = bbox_bottom;
		var scr = (id == obj_player ? scr_solid_player : scr_solid)
		if (place_meeting(x - other.hsp,y, other.id) || place_meeting(x,y + other.vsp + 1, other.id)) && old_y <= platform_y + 8
		{
			//Horizontal
			var hcheck = script_execute(scr,x + other.hsp,y);
			if !hcheck || hcheck.id == other.id
				x += other.hsp
			//Vertical
			var vcheck = script_execute(scr,x,y + other.vsp);
			if (!vcheck && !place_meeting(x,y + other.vsp,obj_platform)) || place_meeting(x,y + other.vsp,obj_platform) || vcheck.id == other.id
			{
				y += other.vsp
				if vsp >= 0
				{
					vsp = other.vsp;
					grounded = true;
				}
			}
		}
	}
}
#endregion