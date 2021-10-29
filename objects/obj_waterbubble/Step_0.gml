if instance_exists(obj_water) && y < obj_water.bbox_top + (random_range(-2,2))
instance_destroy()

y += vsp
var strength = irandom_range(0,16)
xoffset = wave(-strength,strength, irandom_range(45,180), 0)
drawx = x + xoffset