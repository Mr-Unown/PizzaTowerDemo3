hsp = image_xscale * movespeed
x += hsp
y += vsp

if (scr_solid((x + sign(hsp)), y) && (!place_meeting((x + sign(hsp)), y, obj_destructibles)))
    instance_destroy()
	
with (instance_place((x + hsp), y + vsp, obj_destructibles))
{
	if object_index != obj_onewaybigblock && object_index != obj_secretonewaybigblock
		instance_destroy()
	else if object_index = obj_onewaybigblock || object_index = obj_secretonewaybigblock
	{
		if sign(image_xscale) = 1 && other.x > x
			instance_destroy()
		else if sign(image_xscale) = -1 && other.x < x
			instance_destroy()
		else
			instance_destroy(other.id)
	}
}


if hp <= 0
	instance_destroy()
