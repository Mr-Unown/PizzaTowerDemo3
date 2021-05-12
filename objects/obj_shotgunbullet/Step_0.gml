//if (scr_solid((x + spd), y) && (!place_meeting((x + spd), y, obj_destructibles)) && (!place_meeting((x + spd), y, obj_targetblock)))
    //sinstance_destroy()
with (instance_place((x + spd), y - spdh, obj_destructibles))
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
with (instance_place((x + spd), y - spdh, obj_targetblock))
    instance_destroy()
x += spd
y += (-spdh)
var xscale = playerid.xscale
if (created == 0)
{
    image_xscale = xscale
    spd = (image_xscale * 25)
    created = 1
}


