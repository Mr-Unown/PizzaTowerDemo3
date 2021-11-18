if instance_exists(obj_water) && y < obj_water.bbox_top + (random_range(-2,2))
instance_destroy()

y += vsp
xoffset = wave(-strength,strength, time, 0)
drawx = x + xoffset