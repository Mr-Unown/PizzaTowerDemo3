hsp = image_xscale * 8
if scr_solid(x + hsp, y)
{
    instance_create(x, y, obj_bombexplosion)
    instance_destroy()
}
if place_meeting((x + hsp), (y + vsp), obj_bombblock) {
    instance_create(x, y, obj_bombexplosion)
	instance_destroy()
}
scr_collide()





