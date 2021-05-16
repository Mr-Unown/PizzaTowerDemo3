if other.object_index != obj_onewaybigblock && other.object_index != obj_secretonewaybigblock
	instance_destroy(other.id)
else if other.object_index = obj_onewaybigblock || other.object_index = obj_secretonewaybigblock
{
	if sign(other.image_xscale) = 1 && x > other.x
		instance_destroy(other.id)
	else if sign(other.image_xscale) = -1 && x < other.x
		instance_destroy(other.id)
	else
		instance_destroy()
}


