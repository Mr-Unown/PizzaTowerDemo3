if place_meeting(x, (y - 1), obj_player1)
{
    with (obj_player1)
    {
		var solidcheck = ( place_meeting(x, y + 1, obj_platform) || (layer_exists("Tiles_Solid") && tile_meeting_precise(x, y + 1, "Tiles_Solid") == tiletype.upplatform) )
        if place_meeting(x, y + 1, obj_ladder) && key_down && solidcheck && (state == 66 || (character == "S" && (state == 0 || state == 37 || state == 69)))
        {
            y += 5
            state = 59
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
if instance_exists(obj_player2)
{
    if place_meeting(x, (y - 1), obj_player2)
    {
        with (obj_player2)
        {
			var solidcheck = ( place_meeting(x, y + 1, obj_platform) || (layer_exists("Tiles_Solid") && tile_meeting_precise(x, y + 1, "Tiles_Solid") == tiletype.upplatform) )
            if place_meeting(x, y + 1, obj_ladder) && key_down && solidcheck && (state == 66 || (character == "S" && (state == 0 || state == 37 || state == 69)))
            {
                y += 5
                state = 59
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
}


