with (other.id)
{
	if state != states.pipe
	{
	x = other.centerX
	y = other.centerY
	state = states.pipe
	pipedirection = other.pipedirection
	}
}