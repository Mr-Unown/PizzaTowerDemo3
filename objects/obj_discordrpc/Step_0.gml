if is_discord_ready = true
{
	//Change Details 
	if oldstring_status != string_status //Update only when necessary
	{
		oldstring_status = string_status
		rousr_dissonance_set_details(string(string_status)) //Current Status
	}
	if oldstring_roomname != string_roomname || oldstring_imagekey != string_imagekey  //It also prevents loops
	{
		oldstring_roomname = string_roomname
		oldstring_imagekey = string_imagekey
		rousr_dissonance_set_large_image(string(string_imagekey), string(string_roomname)) //Current Room Name if any
	}	
	if oldstring_state != string_state 
	{
		oldstring_state = string_state
		rousr_dissonance_set_state(string(string_state)) //Current Level
	}	
	if oldstring_characterstring != string_characterstring || oldstring_smallimagekey != string_smallimagekey  //Character Thing
	{
		oldstring_characterstring = string_characterstring
		oldstring_smallimagekey = string_smallimagekey
		rousr_dissonance_set_large_image(string(string_smallimagekey), string(string_characterstring)) //Current Player 1 Character
	}
	#region Player 1 Chara Icon
	if obj_pause.pause != 1
	{
		if room != Realtitlescreen && room != characterselect
		{
			switch obj_player1.character
			{
			case "P":
			string_characterstring = "Peppino";
			string_smallimagekey = "peppino";
			break;
			case "N":
			string_characterstring = "The Noise";
			string_smallimagekey = "noise";
			break;
			case "S":
			string_characterstring = "Snick";
			string_smallimagekey = "snick";
			break;		
			case "V":
			string_characterstring = "The Vigilante";
			string_smallimagekey = "vigi";
			break;
			case "D":
			string_characterstring = "Dougie";
			string_smallimagekey = "dougie";
			break;	
			case "PM":
			string_characterstring = "Pepperman";
			string_smallimagekey = "pepperman";
			break;		
			case "PZ":
			string_characterstring = "Pizzelle";
			string_smallimagekey = "pizzelle";
			break;		
			default:
			string_characterstring = "";
			string_smallimagekey = "";
			break;
			}
		}
		else
		{
		string_characterstring = "";
		string_smallimagekey = "";
		}
	}
	#endregion
}