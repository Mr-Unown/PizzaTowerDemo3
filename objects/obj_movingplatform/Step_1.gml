//Schmoving
hsp = lengthdir_x(movespeed,_direction);
vsp = lengthdir_y(movespeed,_direction);
x += hsp
y += vsp

//Collide with Triggers
if place_meeting(x + sign(hsp),y + sign(vsp),obj_movingplatformtrigger)
{
	
}

#region Platforming
for (var i = 0; i < array_length_1d(objects) - 1; ++i) 
{
	with objects[i]
	{
		var scr = (id == obj_player ? scr_solid_player : scr_solid)
		if (place_meeting(x - other.hsp, y - other.vsp, other.id) || place_meeting(x,y + other.vsp + 1, other.id))
		{
			//Horizontal
			var hcheck = script_execute(scr,x + other.hsp,y);
			if !hcheck 
				x += other.hsp
			//Vertical
			var vcheck = script_execute(scr,x,y + other.vsp);
			if !vcheck
			{
				y += other.vsp
				if other.vsp >= 0
				{
					vsp = other.vsp;
					grounded = true;
				}
			}
		}
	}
}
#endregion