#region Characters
switch character
{
	case "P":
	characters = "Peppino"
	break;
	case "N":
	characters = "Noise"
	break;
	case "S":
	characters = "Snick"
	break;
	case "V":
	characters = "Vigilante"
	break;
	case "PM":
	characters = "Pepperman"
	break;	
	case "D":
	characters = "Dougie"
	break;	
	case "PZ":
	characters = "Pizzelle"
	break;
}
#endregion
//Colorindex
colorindex[0] = 0
colorindex[1] = 1
colorindex[2] = 2
colorindex[3] = 3
colorindex[4] = 4
colorindex[5] = 5
colorindex[6] = 6
colorindex[7] = 7
colorindex[8] = 8
colorindex[9] = 9
colorindex[10] = 10


//Saved Colors
#region Spaghetti
ini_open(string(characters)+"_palettes.ini")
if !ini_section_exists(string(characters)+"Colors"+string(colorindex[0])) 
{
 ini_write_real(string(characters)+"Colors"+string(colorindex[0]), "Red", 0);
 ini_write_real(string(characters)+"Colors"+string(colorindex[0]), "Green", 0);
 ini_write_real(string(characters)+"Colors"+string(colorindex[0]), "Blue", 0);
}
for (var i = 1; i < array_length_1d(colorindex); ++i) 
{
	if !ini_section_exists(string(characters)+"Colors"+string(colorindex[i])) 
	{
		ini_write_real(string(characters)+"Colors"+string(colorindex[i]), "Red", 255);
		ini_write_real(string(characters)+"Colors"+string(colorindex[i]), "Green", 255);
		ini_write_real(string(characters)+"Colors"+string(colorindex[i]), "Blue", 255);
	}	
}
ini_open(string(characters)+"_palettes.ini")

for (var i = 0; i < array_length_1d(colorindex); ++i) 
{
	colored[colorindex[i],0] = ini_read_real(string(characters)+"Colors"+string(colorindex[i]), "Red", 0);
	colored[colorindex[i],1] = ini_read_real(string(characters)+"Colors"+string(colorindex[i]), "Green", 0);
	colored[colorindex[i],2] = ini_read_real(string(characters)+"Colors"+string(colorindex[i]), "Blue", 0);
}
ini_close()
#endregion


//Colors					//RED		//GREEN		//BLUE
for (var i = 0; i < array_length_1d(colorindex); ++i) 
{
	color[i] = make_color_rgb(colored[i,0],colored[i,1],colored[i,2])
}