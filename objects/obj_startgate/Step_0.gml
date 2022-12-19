if level == "placeholder"
	{
	    if (distance_to_object(obj_player) < 50)
	    {
	        with (obj_tv)
	        {
	            message = "PLACEHOLDER"
	            showtext = 1
	            alarm[0] = 2
	        }
	    }
	}
else if level == "wafer"
	{
	    if (distance_to_object(obj_player) < 50)
	    {
	        with (obj_tv)
	        {
	            message = "ENTRYWAY"
	            showtext = 1
	            alarm[0] = 2
	        }
	    }
	}
else if level == "steamy"
	{
	    if (distance_to_object(obj_player) < 50)
	    {
	        with (obj_tv)
	        {
	            message = "COTTONTOWN"
	            showtext = 1
	            alarm[0] = 2
	        }
	    }
	}
