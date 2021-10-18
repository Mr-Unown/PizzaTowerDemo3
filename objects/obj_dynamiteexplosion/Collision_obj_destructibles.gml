if other.object_index != obj_onewaybigblock && other.object_index != obj_secretonewaybigblock
	with other.id
		event_user(0)
else if other.object_index = obj_onewaybigblock || other.object_index = obj_secretonewaybigblock
{
if sign(other.image_xscale) = 1 && x > other.x
	with other.id
		event_user(0)
else if sign(other.image_xscale) = -1 && x < other.x
	with other.id
		event_user(0)
}
