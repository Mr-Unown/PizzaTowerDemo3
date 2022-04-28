y += vsp
vsp += 0.1
if scr_solid(x,y + 1)
{
	with instance_create(x, y, obj_landcloud)
	{
		sprite_index = spr_slamcloud
	}
	instance_destroy()
}
	
	