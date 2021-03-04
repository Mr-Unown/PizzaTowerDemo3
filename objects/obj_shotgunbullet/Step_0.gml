if (scr_solid((x + spd), y) && (!place_meeting((x + spd), y, obj_destructibles)) && (!place_meeting((x + spd), y, obj_targetblock)))
    instance_destroy()
with (instance_place((x + spd), y, obj_destructibles))
    instance_destroy()
with (instance_place((x + spd), y, obj_targetblock))
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


