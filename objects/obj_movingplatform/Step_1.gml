#region Platforming
var platform_y = y;
for (var i = 0; i < array_length_1d(objects) - 1; ++i) 
{
	with objects[i]
	{
		var old_y = y;
		var scr = (id == obj_player ? scr_solid_player : scr_solid)
		if (place_meeting(x - other.hsp, y - other.vsp, other.id) || place_meeting(x,y + other.vsp + 1, other.id)) && old_y < platform_y + 5
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

//Schmoving
hsp = movespeedh * directionh;
vsp = movespeedv * directionv;


x += hsp
y += vsp
//Collide with Triggers
if place_meeting(x + sign(hsp),y,obj_movingplatformtriggerh) //Horizontal
{
	with instance_place(x + sign(hsp),y,obj_movingplatformtriggerh)
	{
		if other.directionh != sign(image_xscale)
		{
			other.directionh = sign(image_xscale)
		}
	}
}

if place_meeting(x,y + sign(vsp),obj_movingplatformtriggerv) //Vertical
{
	with instance_place(x,y + sign(vsp),obj_movingplatformtriggerv)
	{
		if other.directionv != sign(image_yscale)
		{
			other.directionv = sign(image_yscale)
		}
	}
}

