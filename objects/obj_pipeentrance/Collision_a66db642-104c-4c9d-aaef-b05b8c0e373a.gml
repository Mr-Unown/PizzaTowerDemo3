with (other.id)
{
	if state != "pipe"
	{
	x = other.centerX
	y = other.centerY
	state = "pipe"
	pipedirection = other.pipedirection
	}
}