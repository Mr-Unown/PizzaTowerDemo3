with (other.id)
{
	var objdirection = sign(image_xscale)
	if (x != other.x)
		objdirection = sign((x - other.x))
	image_xscale = objdirection
}
if (!collided)
	event_user(0)