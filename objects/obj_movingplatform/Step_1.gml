//Schmoving
hsp = round(lengthdir_x(movespeed - stop,_direction));
vsp = round(lengthdir_y(movespeed - stop,_direction));
x += hsp
y += vsp

//Collide with Triggers
if place_meeting(x + sign(hsp),y + sign(vsp), obj_movingplatformtrigger) && stopped = false
{
	with instance_place(x + sign(hsp),y+sign(vsp), obj_movingplatformtrigger)
	{
		if other.stopid != id
		{
			other.stored_direction = _angle;
			other.stopped = true;
			other.stopid = id;
		}
	}
}
//Smooth in and out
if stopped == true
{
	stop += stop_acc	
	if stop >= stop_max
	{
		_direction = stored_direction;
		stopped = false
	}
}
else
{
	if stop > 0
		stop -= stop_decc
}
stop = clamp(stop,0,stop_max)

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
			//Horizontal
			var hcheck = script_execute(scr,x + other.hsp,y);
			if hcheck == false
				x += other.hsp
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
}
#endregion




/*
//Collide with Triggers
if place_meeting(x + sign(hsp),y + sign(vsp), obj_movingplatformtrigger) and stopid = noone
{
	with instance_place(x + sign(hsp),y+sign(vsp), obj_movingplatformtrigger)
	{
		other.stored_vdir = vdir;
		other.stored_hdir = hdir;
		other.stopped = true;
		other.stopid = id;
		other.prevstop_x = x;
		other.prevstop_y = y;
	}
}

if !place_meeting(x, y, obj_movingplatformtrigger) and stopid != noone
	stopid = noone
*/