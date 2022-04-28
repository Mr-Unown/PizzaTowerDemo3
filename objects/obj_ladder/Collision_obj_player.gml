with (obj_player1)
{
    if (key_up && place_meeting(x, y, other.id) && state != states.ladder && (state == 0 || state == 70 || state == 91 || state == 69 || state == 30 || state == 58 || state == 32) && state != 73 && state != 71 && state != 74 && state != 77)
    {
        mach2 = 0
        state = states.ladder
        x = (other.x + 16)
        y = floor(y)
        if ((y % 2) == 1)
            y -= 1
		if character = "GB" && brick = 1
			{
				brick = 0
				instance_create(x,y, obj_brickseparated)
			}
    }
	
}
if instance_exists(obj_player2)
{
    with (obj_player2)
    {
        if (key_up && place_meeting(x, y, other.id) && state != states.ladder && (state == 0 || state == 70 || state == 91 || state == 69 || state == 30 || state == 58 || state == 32) && state != 73 && state != 71 && state != 74 && state != 77)
        {
            mach2 = 0
            state = states.ladder
            x = (other.x + 16)
            y = floor(y)
            if ((y % 2) == 1)
                y -= 1
			if character = "GB" && brick = 1
			{
				brick = 0
				instance_create(x,y, obj_brickseparated)
			}
        }
    }
}


