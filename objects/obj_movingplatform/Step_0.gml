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