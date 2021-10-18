hsp = (image_xscale * movespeed)

if (scr_solid((x + sign(hsp)), y) && !(scr_slope() && !scr_solid(x + sign(hsp),y - 2)) && (!place_meeting((x + sign(hsp)), y, obj_destructibles))) 
{
	with instance_create(x,y,obj_noiseexplosion)	
	{
		playerid = other.playerid
	}
	instance_destroy()
}
scr_collide()


