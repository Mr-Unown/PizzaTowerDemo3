//Receive Variables
scr_player_receive_sync_variables()
if character != old_character
{
	old_character = character;
	scr_characterspr(character);
	#region Characters
	switch character
	{
		case "P":
		characters = "Peppino"
		colorheight = 8;
		break;
		case "N":
		characters = "Noise"
		colorheight = 8;
		break;
		case "S":
		characters = "Snick"
		colorheight = 7;
		break;
		case "V":
		characters = "Vigilante"
		colorheight = 7;
		break;
		case "PM":
		characters = "Pepperman"
		colorheight = 6;
		break;	
		case "D":
		characters = "Dougie"
		colorheight = 0;
		break;	
		case "PZ":
		characters = "Pizzelle"
		colorheight = 10;
		break;
		default:
		characters = "BF"
		colorheight = 0;
		break;
	}
#endregion
}

if instance_exists(obj_gms)
{
	xscale = gms_other_get(player_id,"xscale")
	pal = gms_other_get(player_id,"pal")
}