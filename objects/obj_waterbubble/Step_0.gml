if instance_exists(obj_water) && y < obj_water.bbox_top + (random_range(-2,2))
instance_destroy()

y += vsp
var strength = irandom_range(0,4)
xoffset = wave(-strength,strength, 2 ,0)
drawx = x + xoffset