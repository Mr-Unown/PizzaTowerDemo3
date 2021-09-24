if (!instance_exists(createdid))
   refresh--
if (refresh <= 0)
{
	image_speed = 0.35
	if (floor(image_index) == 5)
	{
		if content != noone
		{
			with (instance_create(x, (spawny), content))
			{
				other.createdid = id
				image_xscale = other.image_xscale
				if variable_instance_exists(id,"vsp")
					vsp = -3
			}
		}
	refresh = 100
	}
}
