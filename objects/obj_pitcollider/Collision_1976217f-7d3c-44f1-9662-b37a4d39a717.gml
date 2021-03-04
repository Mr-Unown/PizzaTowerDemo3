with other.id
{
	if object_index = obj_player1
	{
		if visible = true
		{ 
		other.playerid = id	
		visible = false
		other.alarm[0] = 25
		}
	}
	else if object_index = obj_player2
	{
		if visible = true
		{		
		other.player2id = id
		visible = false
		other.alarm[1] = 25
		}
	}
}


	

