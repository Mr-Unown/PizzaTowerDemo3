hsp = image_xscale * 8
if place_meeting((x + hsp), y, obj_solid)
{
    instance_create(x, y, obj_bombexplosion)
    instance_destroy()
}
if place_meeting((x + hsp), (y + vsp), obj_bombblock) {
    instance_create(x, y, obj_bombexplosion)
	instance_destroy()
}
scr_collide()


