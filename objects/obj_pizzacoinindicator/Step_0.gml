	if (show == 0)
{
    visible = false
	_visible = 1
	blink_time = 0;
	blink_length = 5;
	blink_alpha = 0;	
}
if (show > 0)
{
    show -= 1
    visible = true
	if show <= 32 
	{
		//set image_alpha
		if blink_time++ > blink_length _visible = blink_alpha else _visible = 1;

		//reset time
		if blink_time > blink_length * 2 blink_time = 0;
	}	
}
blink_length = 30*(show/32);