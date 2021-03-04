if other.object_index != obj_onewaybigblock
instance_destroy(other.id)
else if other.object_index = obj_onewaybigblock
{
if sign(other.image_xscale) = 1 && x > other.x
	instance_destroy(other.id)
else if sign(other.image_xscale) = -1 && x < other.x
	instance_destroy(other.id)
}


