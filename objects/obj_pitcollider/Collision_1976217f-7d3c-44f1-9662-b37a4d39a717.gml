with other.id
{
	if object_index = obj_player1
	{
		if visible = true
		{ 
		grav = 0			
		vsp = 0
		hsp = 0
		other.playerid = id	
		visible = false
		other.alarm[0] = 25
		}
	}
	else if object_index = obj_player2
	{
		if visible = true
		{	
		grav = 0
		vsp = 0
		hsp = 0			
		other.player2id = id
		visible = false
		other.alarm[1] = 25
		}
	}
}


	

