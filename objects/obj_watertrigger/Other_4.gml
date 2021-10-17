	if mode = 2 && place_meeting(x,y,obj_player)
	{
		with obj_water
		{
			y = other.targety
			targety = other.targety
		}	
		instance_destroy()
	}