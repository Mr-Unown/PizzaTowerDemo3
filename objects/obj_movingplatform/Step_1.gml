//Schmoving Lubing
hsp = (movespeed - stop) * hdir;
vsp = (movespeed - stop) * vdir;
x += hsp;
y += vsp;

if stopped == true
{
	stop += stop_acc	
	if stop >= stop_max
	{
		hdir = stored_hdir
		vdir = stored_vdir
		stopped = false
	}
}
else
{
	if stop > 0
		stop -= stop_decc
}
stop = clamp(stop,0,stop_max)

if movespeed < movespeed_max
	movespeed += (speed_acc)
	
if movespeed > movespeed_max
	movespeed = movespeed_max

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
