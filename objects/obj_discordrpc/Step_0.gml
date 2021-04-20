if is_discord_ready = true
{
	//Change Details 
	if oldstring_status != string_status //Update only when necessary
	{
		oldstring_status = string_status
		rousr_dissonance_set_details(string(string_status)) //Current Status
	}
	if oldstring_roomname != string_roomname //It also prevents loops
	{
		oldstring_roomname = string_roomname
		rousr_dissonance_set_state(string(string_roomname)) //Current Room Name if any
	}	
	
}