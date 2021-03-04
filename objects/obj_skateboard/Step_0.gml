if (vsp < 30)
    vsp += grav
if (hsp == 0)
    image_speed = 0
else
    image_speed = 0.35
if (scr_solid((x + 1), y) || scr_solid((x - 1), y))
{
    instance_destroy()
	with instance_create(x,y+10,obj_skateboarddebris)
	image_index = 0
	with instance_create(x,y+10,obj_skateboarddebris)
	image_index = 1
}
scr_collide()







